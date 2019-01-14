package Regexp::Pattern::Net;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %RE;

$RE{ipv4} = {
    summary => 'Match an IPv4 address',
    pat => qr/(?:(?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})[.](?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})[.](?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})[.](?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2}))/, # from Regexp::Common {net}{IPv4}
    examples => [
        {str=>'1.2.3.4', matches=>1},
        {str=>'1.256.3.4', matches=>0},
    ],
};

$RE{port} = {
    summary => 'Match a port number (1-65535)',
    pat => qr/(?:(?^:[+]?0*[1-9])|(?^:[+]?0*[1-9]\d)|(?^:[+]?0*[1-9]\d{2})|(?^:[+]?0*[1-9]\d{3})|(?^:[+]?0*[1-5]\d{4})|(?^:[+]?0*6[0-4]\d{3})|(?^:[+]?0*65[0-4]\d{2})|(?^:[+]?0*655[0-2]\d)|(?^:[+]?0*6553[0-5]))/, # produced using Number::Range::Regexp
    examples => [
        {str=>'1'     , gen_args=>{-anchor=>1}, matches=>1},
        {str=>'20'    , gen_args=>{-anchor=>1}, matches=>1},
        {str=>'300'   , gen_args=>{-anchor=>1}, matches=>1},
        {str=>'4000'  , gen_args=>{-anchor=>1}, matches=>1},
        {str=>'50000' , gen_args=>{-anchor=>1}, matches=>1},
        {str=>'65536' , gen_args=>{-anchor=>1}, matches=>0},
        {str=>'100000', gen_args=>{-anchor=>1}, matches=>0},
    ],
};

1;
# ABSTRACT: Regexp patterns related to network

=head1 SEE ALSO

L<Regexp::Pattern>

L<Regexp::Common>, particularly L<Regexp::Common::net>
