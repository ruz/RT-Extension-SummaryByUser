package RT::Extension::SummaryByUser;

use 5.008003;
use strict;
use warnings;

our $VERSION = '0.01';

=head1 NAME

RT::Extension::SummaryByUser - portlets to show ticket counters per user

=head1 DESCRIPTION

This extension ships with F<OwnerSummary> portlet you can use in a
dashboard and/or RT at glance. To make it available you B<must
register> it in the RT config using C<$HomepageComponents> option.
For more correct results and work without errors in any version prior
to RT 3.8.5 you must B<apply patch> that is shipped with this distribution
in the F<patches> directory. Also, L<DBIx::SearchBuilder> has been
updated as well, and you need 1.55_01 or newer.

Don't forget to B<register plugin> in the C<@Plugins> config option.

=head1 AUTHOR

Ruslan Zakirov E<lt>Ruslan.Zakirov@gmail.comE<gt>

=head1 LICENSE

Under the same terms as perl itself.

=cut

1;