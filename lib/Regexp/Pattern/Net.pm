package Regexp::Pattern::Net;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %RE;

$RE{ipv4} = {
    summary => 'Match a JSON number literal',
    pat => qr/(?:(?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})[.](?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})[.](?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})[.](?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2}))/, # from Regexp::Common {net}{IPv4}
    examples => [
        {str=>'1.2.3.4', matches=>1},
        {str=>'1.256.3.4', matches=>0},
    ],
};

1;
# ABSTRACT: Regexp patterns related to network

=head1 SEE ALSO

L<Regexp::Pattern>

L<Regexp::Common>, particularly L<Regexp::Common::net>
