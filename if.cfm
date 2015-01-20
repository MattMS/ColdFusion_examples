<cfif not isDefined('url.my_number')>
	<p>No number given!</p>
<cfelseif not isNumeric(url.my_number)>
	<p>Your number is not a number!</p>
<cfelse>
	<cfoutput><p>Your number is #url.my_number#!</p></cfoutput>
</cfif>

<cfscript>
	if (not isDefined('url.my_number')) {
		writeOutput('<p>No number given!</p>')
	} else if (not isNumeric(url.my_number)) {
		writeOutput('<p>Your number is not a number!</p>')
	} else {
		writeOutput('<p>Your number is #url.my_number#!</p>')
	}
</cfscript>


<ul>
	<li><a href="http://cfdocs.org/cfelse">cfelse on CFDocs</a></li>
	<li><a href="http://cfdocs.org/cfelseif">cfelseif on CFDocs</a></li>
	<li><a href="http://cfdocs.org/cfif">cfif on CFDocs</a></li>
</ul>
