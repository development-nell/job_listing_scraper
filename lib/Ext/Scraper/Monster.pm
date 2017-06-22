package Ext::Scraper::Monster;

use strict;
use Moose;
extends 'Ext::Scraper';
use Web::Scraper;
use Data::Dumper;
use DateTime::Format::DateParse;

use feature qw(say);

sub listings {
	my $self = shift;
	my %opt = @_;

	my @res = @{$self->scrape(scraper {
		process 'article.js_result_row','results[]'=>scraper {
			process 'div.jobTitle a',link=>{uri=>'@href',title=>'@title',id=>'@data-m_impr_j_postingid'};
			process_first 'div.company span',company=>'TEXT';
			process_first 'time',posted=>'@datetime';
		};
	})->{results}};

	foreach my $link (@res) {
		$link->{link}->{company} = $link->{company};
		$link->{link}->{posted} = DateTime::Format::DateParse->parse_datetime($link->{posted});
	}
	return $self->filter_listings(map {$_->{link}} @res);
}

sub details  {
	my $self = shift;
	my ($listing,%opt) = @_;


	$self->get($listing->{uri});

	my $desc = $self->scrape(scraper {
		process 'div.jobDescription',details=>{description=>'TEXT'};
	});
	if ($opt{scorer}) {
		$listing->{score} = $opt{scorer}->($self->content);
	}
}

1;

