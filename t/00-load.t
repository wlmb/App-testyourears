#!perl -T
# should have used or not !perl -T?
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'App::testyourears' ) || print "Bail out!\n";
}

diag( "Testing App::testyourears $App::testyourears::VERSION, Perl $], $^X" );
