<cfscript>
	my_full_string = 'my_prefix/my other text';
	prefix = 'my_prefix/';
	prefix_len = len(prefix);

	if (left(my_full_string, prefix_len) eq prefix) {
		total_len = len(my_full_string);
		my_other_text = mid(my_full_string, prefix_len + 1, total_len);
	}
</cfscript>
