package RT::Extension::SummaryByUser;

use 5.008003;
use strict;
use warnings;

our $VERSION = '0.03_01';

=head1 NAME

RT::Extension::SummaryByUser - portlets to show ticket counters per user

=head1 DESCRIPTION

This extension ships with F<OwnerSummary> and F<RequestorSummary> portlets
you can use in a dashboard and/or RT at glance. Summary can be displayed
not only by user, but by users' organization or other fields. For example
RequestorSummary portlet displays summary by requestors' organization.
Read more about this below in L</CONFIGURATION> section.

=head1 INSTALLATION

Installation goes as usual for RT extensions, but for older RT versions
you have to apply patches. For more correct results and work without errors
in any version prior to RT 3.8.5 you must B<apply patches> that are shipped
with this distribution in the F<patches> directory. First of all apply
F<RT-3.8.4-chart-improvements.patch> then
F<RT-3.8-use_distinct_count_for_charts_when_required-2.patch>. Also,
L<DBIx::SearchBuilder> has been updated as well, and you need 1.56 or newer.

=head CONFIGURATION

Don't forget to B<register plugin> in the C<@Plugins> config option.

To make a portlet available in the Web UI you B<must register> it in
the RT config using C<$HomepageComponents> option.

More portlets can be created using this extension. Look into the
F<RequestorSummary> file, it just calls F<OwnerSummary> with arguments:

    <%INIT>
    return $m->comp( 'OwnerSummary', Role => 'Requestor', Field => 'Organization' );
    </%INIT>

As you can see there is two arguments: 'Role' and 'Field'. Role can be 'Owner',
'Creator', 'Requestor', 'Cc' and 'AdminCc'. Field can be any column from Users
table or empty. The following fields make sence: 'Organization', 'Country', 'State'
or 'City'. Empty value means that the report is groupped by particular users.

You can copy this file into F<local/html/Elements> directory with different name,
for example with F<RequestorCountrySummary>, change arguments, register the new
portlet in C<$HomepageComponents>, restart server and use new portlet.

=head1 REPOSITORY

    http://github.com/ruz/RT-Extension-SummaryByUser

=head1 AUTHOR

Ruslan Zakirov E<lt>Ruslan.Zakirov@gmail.comE<gt>

=head1 LICENSE

Under the same terms as perl itself.

=cut

1;
