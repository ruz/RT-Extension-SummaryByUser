use inc::Module::Install;

RTx('RT-Extension-SummaryByUser');
all_from('lib/RT/Extension/SummaryByUser.pm');
readme_from('lib/RT/Extension/SummaryByUser.pm');

requires 'DBIx::SearchBuilder' => '1.56';

WriteAll();
