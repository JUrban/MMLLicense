#!/usr/bin/env perl

# run this in a git directory to get all contributors
# with an argument, it gets contributors for that file

my $file = ($#ARGV == 0)? shift(@ARGV) : '';

/(\d{4}).*?_(.+)/&&\$a{$2}->{$1}for`git log --pretty=format:%aD_%an $file`;
print"Copyright (C) ".join(", ",sort keys %{$a{$_}})." $_.\n"for sort keys %a
