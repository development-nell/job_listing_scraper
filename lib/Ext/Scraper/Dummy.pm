package Ext::Scraper::Dummy;

use strict;
use Moose;
extends 'Ext::Scraper';
use Web::Scraper;
use Data::Dumper;
use feature qw(say);

sub get {
	say STDERR "Using Dummy";
}

sub listings {
	my $self = shift;

	return []
}

sub details  {
	my $self = shift;

}

sub nearby {
	my $self = shift;

	my $res = $self->scrape(scraper {
		process 'input[type=checkbox].nearbyArea','results[]'=>{nearbyArea=>'@value'};
	})->{results};
	return join("&",map {"nearbyArea=$_->{nearbyArea}"} @$res);
}

1;

