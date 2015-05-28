<cfparam default="" name="selected_scope" type="string">

<cfset allowed_scopes = "application,cgi,form,request,server,session,url">

<h1>Variables</h1>

<p>This page allows you to view the contents of each variable scope.</p>

<cfoutput>
	<div class="btn-group">
		<cfloop index="var" list="#allowed_scopes#">
			<a class="btn" href="?selected_scope=#var#">#var#</a>
		</cfloop>
	</div>
</cfoutput>

<cfswitch expression="#selected_scope#">
	<cfcase value="application">
		<h2>Application</h2>
		<cfdump var="#application#">
	</cfcase>
	<cfcase value="cgi">
		<h2>CGI</h2>
		<cfdump var="#cgi#">
	</cfcase>
	<cfcase value="form">
		<h2>Form</h2>
		<cfdump var="#form#">
	</cfcase>
	<cfcase value="request">
		<h2>Request</h2>
		<cfdump var="#request#">
	</cfcase>
	<cfcase value="server">
		<h2>Server</h2>
		<cfdump var="#server#">
	</cfcase>
	<cfcase value="session">
		<h2>Session</h2>
		<cfdump var="#session#">
	</cfcase>
	<cfcase value="url">
		<h2>URL</h2>
		<cfdump var="#url#">
	</cfcase>
</cfswitch>
