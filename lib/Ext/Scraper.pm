package Ext::Scraper;

use strict;
use LWP::UserAgent;
use HTML::TreeBuilder::LibXML;
use HTTP::Message;
use Try::Tiny;
use DateTime;
use Time::HiRes;
use Moose;
use Module::Find;
use Web::Scraper;
use URI::Escape;
use HTTP::Cookies;

use utf8;
our $VERSION = "0.01";
our $ABSTRACT = "Scrape sites for job listings";
use feature qw(say);

usesub __PACKAGE__;

has 'ua'=>(is=>'ro',isa=>'LWP::UserAgent',default=>sub {LWP::UserAgent->new()});
has 'date'=>(is=>'rw',isa=>'DateTime',default=>sub {DateTime->now()});
has 'search_url'=>(is=>'rw',isa=>'Str');
has 'requires_login'=>(is=>'ro',isa=>'Bool',default=>0);
has 'content'=>(is=>'rw');
has raw_content=>(is=>'rw',isa=>'Str');
has 'request_count'=>(is=>'rw',default=>0);
has 'cookie_jar'=>(is=>'rw',isa=>'HTTP::Cookies',default=>sub {HTTP::Cookies->new()});
has 'url'=>(is=>'rw');
has 'current_url'=>(is=>'rw',isa=>"Str");
has disallow=>(is=>'rw',isa=>"Str");

sub baseurl {
	my $self = shift;

	return $self->url;
}


sub create_from_db {
	my ($class,$rec,%opt) = @_;

	try {
		my $ret = join("::",$class,$rec->class_name)->new($rec->get_columns);
		$ret->disallow($opt{disallow});
		return $ret;
	} catch {
		say STDERR $@;
		return Ext::Scraper::Dummy->new();
	};
}

sub filter_listings {
	my ($self,@listings) = @_;


	my $reject =  $self->disallow;

	@listings = grep {$_->{title}!~/$reject/i} @listings;
	#return [grep {$_->{title}!~/$reject/i && $self->days_old($_->{posted})<=14} @listings];
	return [@listings];

}

sub days_old {
	my ($self,$date) = @_;

	return 0 if (!$date);

	my $d = DateTime->now();
	my $age = $d->subtract_datetime($date);
	return abs($age->in_units('days'));
}


	

sub search {
	my ($self,$keywords) = @_;

	say $self->uri(sprintf($self->search_url,uri_escape($keywords)));

	return $self->get($self->uri(sprintf($self->search_url,uri_escape($keywords))));
}

sub uri {
	my ($self,$frag) = @_;

	if ($frag=~/^http/i) {
		return $frag;
	} elsif ($frag=~/\/\//) {
		$frag="https:$frag";
	} else {
		$frag=~s/^\///;
		my $ret =  sprintf("%s/%s",$self->baseurl,$frag);
		return $ret;
	}
}

sub get {
	my ($self,$url) = @_;

	$self->current_url($url);

	$self->ua->agent('Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0');
	$self->ua->cookie_jar($self->cookie_jar) if ($self->cookie_jar);
	my $res = $self->ua->get($self->uri($url),'Accept-Encoding'=>HTTP::Message::decodable);
	$self->cookie_jar->extract_cookies($res);


	if ($res->code == 200) {
		return $self->process_result($res->decoded_content);
	} elsif ($res->code eq "302") {
		return undef;
	} else {
		say $res->status_line;
	}

	return;
}

sub process_result {
	my $self = shift;
	my $content = shift;

	$self->raw_content($content);
	$self->content(HTML::TreeBuilder::LibXML->new_from_content($content));
    $self->content->elementify;

	return $self->content;
}

sub scrape {
	my ($self,$coderef) = @_;

	return $coderef->scrape($self->content);
}

__PACKAGE__->meta->make_immutable;




1;
