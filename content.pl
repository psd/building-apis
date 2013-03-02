#!/usr/bin/env perl

use YAML;
my $c = {};

my $contents = slurp('slides/Contents.md');

for $line (split(/\n/, $contents)) {
    my ($title) = $line =~ m/^.*\[\[\s*(.*)\s*\]\].*$/;
    my $filename = $title;
    $filename =~ s/\s/-/g;
    $filename = "slides/$filename.html";
    my $content = slurp($filename);
    push(@{$c->{slides}}, {
        title => $title,
        filename => $filename,
        content => $content,
    });
}

print Dump($c);
print "---\n";

sub slurp {
    my ($file) = @_;
    local *FILE, $/;
    undef $/;
    open(FILE, "<$file") or die "unable to open $file";
    return <FILE>;
}
