'5.008005;
'ExtUtils::MakeMaker 7.12; # for XSMULTI option


WriteMakefile(
  NAME           => 'Ext::Scraper',
  VERSION_FROM   => 'lib/Ext/Scraper.pm',
  PREREQ_PM      => {
		'ExtUtils::MakeMaker' => '7.12',
		'Web::Scraper'	=> 0,
		'LWP::UserAgent'	=>0,
		'HTML::TreeBuilder::LibXML'	=>0,
		'HTTP::Message'	=>0,
		'Try::Tiny'	=>0,
		'DateTime'	=>0,
		'Time::HiRes'	=>0,
		'Moose'	=>0,
		'Module::Find'	=>0,
		'Web::Scraper'	=>0,
		'URI::Escape'	=>0,
		'HTTP::Cookies'	=>0,
		'List::Nsect'	=>0,
		'Moose'	=>0,
		'DBIx::Class'=>0,
		'DBD::mysql'=>0,
		'Module::Find'=>0,
		'DateTime::Format::DateParse'=>0,

  },
  ABSTRACT_FROM  => 'lib/Ext/Scraper.pm',
  ABSTRACT		 => 'Scrape tech job sites',
  AUTHOR         => 'Michael Hollenbeck',
  CCFLAGS        => '',
  LIBS			=> '',
  OPTIMIZE       => '-O3',
  LICENSE        => 'OtherLicense',
  XSMULTI        => 1,
  EXE_FILES		=>["scripts/job_scraper"],
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
