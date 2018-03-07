# License Agreement in .deb Package Demo

The `secretsauce` application is just a simple shell script that prints out one
line of output.  The real purpose of this demo is to show how to present the
user with a license and require that they accept the license in order to proceed
with package installation.

## Build the .deb
1. Run `create_archive.sh` from the current directory to create the required
   `secretsauce_1.0.orig.tar.gz` in the parent directory.
1. Run `debuild -us -uc`

## Test the .deb
1. Run `sudo dpkg -i secretsauce_1.0.deb`
1. Type "n" (or anything other than "Y" or "y") to observe that package
   installation is aborted.
1. Run `secretsauce` and observe that the package was not installed.
1. Run `sudo dpkg -i secretsauce_1.0.deb`
1. Type "Y" or "y" to agree to the license and observe that the package
   installs correctly.
1. Run `secretsauce` and observe that the package was installed successfully.
1. Run `sudo apt-get purge secretsauce` to remove the installed package.
