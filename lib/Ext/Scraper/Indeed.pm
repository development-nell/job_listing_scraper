package Ext::Scraper::Indeed;

use strict;
use Moose;
extends 'Ext::Scraper';
use Web::Scraper;
use Data::Dumper;
use feature qw(say);

sub listings {
	my $self = shift;
	my %opt = @_;

	my @links =  @{$self->scrape(scraper {
    	process 'h2.jobtitle  a.turnstileLink','links[]' => {uri=>'@href',title=>'TEXT'};
    })->{links}};

	foreach my $link (@links) {
		($link->{id}) = ($link->{uri}=~/jk\=(\w+)\&/);
	}

	return $self->filter_listings(@links);
}

sub details {
	my ($self,$listing,%opt) = @_;


	my $rv = $self->scrape(scraper {
		process "div#p_$listing->{id} span.summary",details=>scraper { #details=>{content=>'TEXT'};#scraper {
			process 'span.company',conmpany=>'@itemprop';
			process 'span.summary','description'=>'TEXT';
		};
	})->{details};

	$listing->{description} = $rv->{description};
	
	#$self->get($listing->{uri});

    #if ($opt{scorer}) {
        #$listing->{score} = $opt{scorer}->($self->content);
    #}

	return $rv;
}
1;

