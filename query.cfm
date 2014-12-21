<cfquery datasource="db" name="myquery">
	SELECT * FROM my_table
	WHERE
		my_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#my_id#">
		OR my_num = <cfqueryparam cfsqltype="cf_sql_numeric" value="#my_num#">
		OR title_text = <cfqueryparam cfsqltype="cf_sql_varchar" value="#title#">
		OR tld_text IN (<cfqueryparam cfsqltype="cf_sql_varchar" list="yes" value="com,info,mil,net,org">)
</cfquery>


<cfquery datasource="db">
	INSERT INTO my_table (
		my_id,
		creation_time
	) VALUES (
		(SELECT MAX(t2.my_id) + 1 FROM my_table t2),
		<cfqueryparam cfsqltype="cf_sql_time" value="#createOdbcDateTime(now())#">
	)
</cfquery>
