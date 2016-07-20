# Build.PL
# Use to build the package App::testyourears
our $VERSION = '0.001';
    
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name=> 'App::testyourears',
    dist_name  => 'App-testyourears',
    dist_author=> [
	'W. Luis Mochan <mochan@fis.unam.mx>',
	],
    dist_version_from => 'lib/App/testyourears.pm',
    license    => 'perl',
    release_status => 'stable', #stable, testing or unstable
    requires   => { 
	"Tk" => 0,
	"Tk::Knob" => 0,
    },
    test_requires => {
	"Test::More" => 0,
	"Pod::Coverage::TrustPod" => 0,
    },
    configure_requires => {
	'Module::Build'                      => '0.4004',
    },
    script_files => 'script/testyourears',
    add_to_cleanup  => [ 'App-testyourears-*', '*~'],
    create_makefile_pl => 'small',
    );
$builder->create_build_script();
