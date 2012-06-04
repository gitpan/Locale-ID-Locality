
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "List of localities (cities/regencies) in Indonesia",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Locale-ID-Locality",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Locale::ID::Locality",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Perinci::CmdLine" => 0,
    "Perinci::Sub::Gen::AccessTable" => "0.11",
    "perl" => "5.010000"
  },
  "script_files" => [
    "bin/list-id-localities"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
