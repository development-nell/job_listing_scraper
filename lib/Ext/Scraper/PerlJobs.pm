package Ext::Scraper::PerlJobs;

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

	# sue to PerlJobs' Very Old-School formatting, css selectors simply will not do.

	my @links;
 	my @listing =  ($self->content->find("table"))[7]->find("td");
	for (my $i=0;$i<scalar(@listing);$i+=2) {

		my $ret={};
		my @tl = $listing[$i]->find("a");
		$ret->{uri}=$tl[0]->attr('href');
		$ret->{title} = $tl[0]->as_text;
		
		if ($tl[1]) {
			$ret->{company} = $tl[1]->as_text;
			$ret->{title} = $tl[0]->as_text;
		} else {
			$ret->{company} = substr($tl[0]->right->as_trimmed_text,2);
		}
		($ret->{id}) = ($ret->{uri}=~/job\/(\d+)/);

		($ret->{posted}) = ($listing[$i+1]->as_trimmed_text=~/\((\d{4}-\d{2}-\d{2})\)/);
		$ret->{posted} = DateTime::Format::DateParse->parse_datetime($ret->{posted});
		push(@links,$ret);
	}
	
	return $self->filter_listings(@links);
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

