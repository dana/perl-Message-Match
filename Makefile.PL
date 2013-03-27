use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'Message-Match';
all_from 'lib/Message/Match.pm';
author   q{Dana M. Diederich <diederich@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   homepage   => 'https://metacpan.org/module/Message::Match',
   #IRC        => 'irc://irc.perl.org/#Message-Match',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/dana/perl-Message-Match.git',
   bugtracker => 'https://github.com/dana/perl-Message-Match/issues',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
);

install_as_cpan;
auto_install;
WriteAll;
