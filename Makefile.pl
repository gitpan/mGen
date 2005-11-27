#The installing ,by now,is too simple to use the standart way.
#just copy the module to its place:

my $site_path;
#$site_path=""; # <- Enter perl/site/lib here and unmark it
for my $dir(@INC){$site_path=$dir if ($dir=~/\/site\/lib/);}
if ($site_path eq "") {print "Can\'t find perl\/site\/lib ...\nPlease enter the directory manualy"; exit;}

mkdir("$site_path/Bio",'0666') if(!-d "$site_path/Bio");
open(F,"mGen.pm") or die "Can't find the module file!\n"; @f=<F>; close F;
open(F,">$site_path/Bio/mGen.pm") or die "Can't copy the file to destination directory $site_path/Bio/mGen.pm!\n"; print F @f; close F;
print "Installed!\n";

# use ExtUtils::MakeMaker;
# # See lib/ExtUtils/MakeMaker.pm for details of how to influence
# # the contents of the Makefile that is written.
# WriteMakefile(
#     'NAME'		=> 'Bio::mGen',
#     'VERSION_FROM'	=> 'mGen.pm', # finds $VERSION
#     'PREREQ_PM'		=> {'LWP::Simple' => 0.0 , 'Compress::Zlib' => 0}, # e.g., Module::Name => 1.1
#     ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
#     (ABSTRACT_FROM => 'mGen.pm', # retrieve abstract from module
#      AUTHOR     => 'Ivan M Nanev <cyber_indian@hotmail.com>') : ()),
# );
