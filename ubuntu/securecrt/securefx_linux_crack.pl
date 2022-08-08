#!/usr/bin/perl 
#===============================================================================
#
#         FILE: securecrt_linux_crack.pl
#
#        USAGE: ./securecrt_linux_crack.pl  
#
#  DESCRIPTION: securecrt_linux_crack
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: xiaobo_l
# ORGANIZATION: 
#      VERSION: 1.1
#      CREATED: 12/22/2013 23:00:00 
#     REVISION: ---
#===============================================================================

use strict;
use warnings;


sub license {
	print "\n".
	"License:\n\n".
	"\tName:\t\llxyg06\n".
	"\tCompany:\tnbrc\n".
	"\tSerial Number:\t06-67-005597\n".
	"\tLicense Key:\tACUYJV Q1V2QU 1YWRCN NBYCYK AC1BZ7 NCZ4DQ C728ZD B5Y5XY\n".
	"\tIssue Date:\t06-15-2015\n\n\n";
}

sub usage {
    print "\n".
	"help:\n\n".
	"\tperl securecrt_linux_crack.pl <file>\n\n\n".
	"\tperl securecrt_linux_crack.pl /usr/bin/SecureFX\n\n\n".
    "\n";
	
	&license;

    exit;
}
&usage() if ! defined $ARGV[0] ;


my $file = $ARGV[0];

open FP, $file or die "can not open file $!";
binmode FP;

open TMPFP, '>', '/tmp/.securecrt.tmp' or die "can not open file $!";

my $buffer;
my $unpack_data;
my $crack = 0;

while(read(FP, $buffer, 1024)) {
	$unpack_data = unpack('H*', $buffer);
	if ($unpack_data =~ m/e02954a71cca592c855c91ecd4170001d6c606d38319cbb0deabebb05126/) {
		$crack = 1;
		last;
	}
	if ($unpack_data =~ s/c847abca184a6c5dfa47dc8efcd700019dc9df3743c640f50be307334fea/e02954a71cca592c855c91ecd4170001d6c606d38319cbb0deabebb05126/ ){
		$buffer = pack('H*', $unpack_data);
		$crack = 2;
	}
	syswrite(TMPFP, $buffer, length($buffer));
}

close(FP);
close(TMPFP);

if ($crack == 1) {
		unlink '/tmp/.securecrt.tmp' or die "can not delete files $!";
		print "It has been cracked\n";
		&license;
		exit 1;
} elsif ($crack == 2) {
		rename '/tmp/.securecrt.tmp', $file or die 'Insufficient privileges, please switch the root account.';
		chmod 0755, $file or die 'Insufficient privileges, please switch the root account.';
		print "crack successful\n";
		&license;
} else {
	die 'error';
}
