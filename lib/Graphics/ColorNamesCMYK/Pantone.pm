package Graphics::ColorNamesCMYK::Pantone;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

# BEGIN_CODE
use HashData::Color::Pantone;

print 'our $NAMES_CMYK_TABLE = {', "\n";

my $hd = HashData::Color::Pantone->new;

for my $k ($hd->get_all_keys) {
    my ($c, $m, $y, $k) = split /,/, $hd->get_item_at_key($k);
    print sprintf "  '$k' => 0x%08x,\n", $k, ($t->{$k} = $c * 256**3 + $m * 256**2 + $y * 256 + $k);
}

print "}\n\n";
# END_CODE

1;
# ABSTRACT: Pantone colors

=head1 DESCRIPTION


=head1 SEE ALSO

Other C<Graphics::ColorNamesCMYK::*> modules.
