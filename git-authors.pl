#!/usr/bin/env perl

# run this in a git directory to get all contributors

/(\d{4}).*?_(.+)/&&\$a{$2}->{$1}for`git log --pretty=format:%aD_%an`;
print"Copyright (C) ".join(", ",sort keys %{$a{$_}})." $_.\n"for sort keys %a
