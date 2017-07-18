package Ext::Scraper::StackOverflow;

use strict;
use Moose;
extends 'Ext::Scraper';
use Web::Scraper;
use Data::Dumper;
use feature qw(say);

sub listings {
	my $self = shift;
	my %opt = @_;

	my @links =  grep {$_->{uri}=~/jobs\/(\d+)\//i} @{$self->scrape(scraper {
    	process 'a.job-link','links[]' => {uri=>'@href',title=>'TEXT'};
    })->{links}};

	foreach my $link (@links) {
		($link->{id}) = ($link->{uri}=~/jobs\/(\d+)\//);
	}
	return $self->filter_listings(@links);
}

sub details  {
	my $self = shift;
	my ($listing,%opt) = @_;

	$self->get($listing->{uri});

	if ($opt{scorer}) {
        my $res = $opt{scorer}->($self->content);
        $listing->{score} = $res->[0];
        $listing->{matches} = $res->[1];
    }   


}


1;

