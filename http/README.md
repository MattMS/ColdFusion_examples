# cfhttp

```ColdFusion
<cfset data = {
	'a' = 1,
	'b' = {
		'c' = 3,
		'd' = 4
	}
}>

<cfhttp method="post" url="/api/item/">
	<cfhttpparam name="Content-Type" type="header" value="application/json">
	<cfhttpparam name="fields" type="body" value="#serializeJSON(data)#">
</cfhttp>

<cfif cfhttp.status_code is 201>
	<cfset result = deserializeJSON(cfhttp.filecontent)>
</cfif>
```


## Links

- [cfhttp on CFDocs](http://cfdocs.org/cfhttp)

- [cfhttpparam on CFDocs](http://cfdocs.org/cfhttpparam)

- [deserializeJSON on CFDocs](http://cfdocs.org/deserializejson)

- [serializeJSON on CFDocs](http://cfdocs.org/serializejson)
