#! /usr/bin/awk -f
# @author Tobias Preclik
# @version 0.1

BEGIN {
	IGNORECASE = 1;
	skip = 0;
	level = 0;
}

# %ifdef NAME
($1 ~ /^\%ifdef$/) {
	if (NF != 2) {
		print "Invalid ifdef statement in line " NR "." > "/dev/stderr"
		exit 1
	}

	level++;
	
	if (skip % 2 == 0 && ENVIRON[$2] != "") {
		skip = skip * 2;
	}
	else {
		skip = skip * 2 + 1;
	}

	next;
}

# %else
($1 ~ /^\%else$/) {
	if (NF != 1) {
		print "Trailing characters in the else statement in line " NR "." > "/dev/stderr"
		exit 1
	}
	
	if (level <= 0) {
		print "An excessive else statement in line " NR "." > "/dev/stderr"
		exit 1
	}
	
	if (skip % 2 == 0) {
		# ifdef succeeded so skip alternative
		skip++;
	}
	else if ((skip - 1) % 4 == 0) {
		# current and parent ifdef failed so execute alternative
		skip--;
	}

	next;
}

# %endif
($1 ~ /^%endif$/) {
	if (NF != 1) {
		print "Trailing characters in the endif statement in line " NR "." > "/dev/stderr"
		exit 1
	}
	
	if (level <= 0) {
		print "An excessive endif statement in line " NR "." > "/dev/stderr"
		exit 1
	}

	level--;
	if (skip % 2 == 0) {
		skip /= 2;
	}
	else {
		skip = (skip - 1) / 2;
	}

	next;
}

# print line otherwise
skip % 2 == 0 {
	print;
}

END {
	if (level != 0) {
		print level " open if statements at the end of file." > "/dev/stderr"
		exit 1
	}
}