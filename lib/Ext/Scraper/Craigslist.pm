package Ext::Scraper::Craigslist;

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

	my @links = @{$self->scrape(scraper {
		process 'p.result-info','results[]'=>scraper {
			process 'a.result-title','link' => {uri=>'@href',title=>'TEXT',id=>'@data-id'};
			process 'time',posted=>'@datetime';
		};
	})->{results}};

	foreach my $link (@links) {
		$link->{link}->{posted} = DateTime::Format::DateParse->parse_datetime($link->{posted});
	}


	return $self->filter_listings(map {$_->{link}} @links);
}

sub details  {
	my $self = shift;
		my ($listing,%opt) = @_;

	$self->get($listing->{uri});

    if ($opt{scorer}) {
        $listing->{score} = $opt{scorer}->($self->content);
    }


}

sub nearby {
	my $self = shift;

	my $res = $self->scrape(scraper {
		process 'input[type=checkbox].nearbyArea','results[]'=>{nearbyArea=>'@value'};
	})->{results};
	return join("&",map {"nearbyArea=$_->{nearbyArea}"} @$res);
}

1;

