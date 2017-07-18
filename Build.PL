use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
	module_name    => 'Ext::Scraper',
   	license        => 'perl',
   	dist_author    => ['Michael Hollenbeck'],
   	configure_requires => {
   		'Config::AutoConf'   => '0.14',
   		'ExtUtils::CBuilder' => '0.27',
   		'ExtUtils::LibBuilder' => '0.01',
   		'Module::Build'      => '0.3603',
	},
	requires=>{
		'LWP::Curl'=>0,
		'HTML::TreeBuilder::LibXML'=>0,
		'HTTP::Message'=>0,
		'DateTime'=>0,
		'Time::HiRes'=>0,
		'Moose'=>0,
		'Module::Find'=>0,
		'Web::Scraper'=>0,
		'URI::Escape'=>0,
		'HTTP::Cookies'=>0,
   	},
	libdir   => "./lib",
);

$builder->create_build_script();

