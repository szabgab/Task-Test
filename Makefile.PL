use 5.008005;
use strict;
use inc::Module::Install 1.00;

# Workaround for the fact that Module::Install loads the modules
# into memory and when Test::NoWarnings is loaded it will hide
# the warnings generated from that point.
# Removed in r2208, added again in r9001
eval {
	require Test::NoWarnings;
	$SIG{__WARN__} = 'DEFAULT';
};

# Configure-time dependencies MUST be done first.
# This version ensures that we have a new MakeMaker that
# WON'T load modules to determine the version.
# This _SHOULD_ theoretically make the "require Test::NoWarnings".
# stuff above here no longer needed.
configure_requires 'ExtUtils::MakeMaker' => '6.52';


name 'Task-Test';
license 'perl';
author 'Gabor Szabo';
all_from 'lib/Task/Test.pm';
requires 'perl' => '5.008005';

requires 'Test::Exception'      => '0.27';
requires 'Test::More'           => '0.88';
requires 'Test::Most'           => '0';
requires 'Test::MockObject'     => '1.09';
requires 'Test::NoWarnings'     => '0.084';
requires 'Test::Output'         => '0';
requires 'Test::Perl::Critic'   => '1.02';
requires 'Test::Pod'            => '1.45';
requires 'Test::Pod::Coverage'  => '1.08';
requires 'Test::Script'         => '1.07';
requires 'Test::WWW::Mechanize' => '0';

requires 'Test::Warn'           => '0';
requires 'Test::Strict'         => '0';
requires 'Test::Deep'           => '0';
requires 'Test::Distribution'   => '0';
requires 'Test::MockObject'     => '0';
requires 'Test::Inline'         => '0';
requires 'Test::Snapshots'      => '0.02';
requires 'Win32::GUITest'       => '0' if win32;
requires 'Test::Kwalitee'       => '0';
requires 'Pod::Spell'           => '0';
requires 'Test::Spelling'       => '0';
requires 'Devel::Cover'         => '0';
requires 'HTML::Lint'           => '0';
requires 'LWP'                  => '0';
requires 'LWP::Simple'          => '0';
requires 'Test::HTML::Lint'     => '0';
#requires 'Test::WWW::Simple'    => '0';
requires 'HTTP::Proxy'          => '0';
#requires 'HTTP::Recorder'       => '0';
requires 'Test::DatabaseRow'    => '0';
requires 'File::Compare'        => '0';
requires 'Text::Diff'           => '0';
requires 'Test::Exception'      => '0';
requires 'Test::Differences'    => '0';
requires 'DBD::Mock'            => '0';
#requires 'Test::Unit'           => '0';
requires 'IPC::Run'             => '0';
requires 'IPC::Run3'            => '0';
requires 'Test::Memory::Cycle'  => '0';
requires 'Test::Taint'          => '0';
requires 'Test::Class'          => '0';
requires 'Test::Class::Moose'   => '0';



no_index 'directory' => qw{ t xt eg share inc privinc };
homepage 'https://github.com/szabgab/Task-Test';
bugtracker 'https://github.com/szabgab/Task-Test';
repository 'https://github.com/szabgab/Task-Test';

WriteAll;
