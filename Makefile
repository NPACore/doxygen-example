.PHONY: all
all: doxygen-out/html/

doxygen-bash.sed:
	curl -L https://raw.githubusercontent.com/Anvil/bash-doxygen/refs/heads/master/doxygen-bash.sed -o $@

doxygen/doxymatlab/:
	git submodule add https://github.com/simgunz/doxymatlab/ $@

doxygen/doxygen-awesome-css/:
	git submodule add https://github.com/jothepro/doxygen-awesome-css.git
	#git -C doxygen-awesome-css checkout v2.3.4

cpan-doxy:
	eval $$(perl -I $HOME/perl5/lib/perl5 -Mlocal::lib) &&
	cpanm Doxygen::Filter::Perl

doxygen-out/html/:  Doxyfile $(wildcard doc/*) $(wildcard src/*) | doxygen-bash.sed doxygen/doxygen-awesome-css/ doxygen/doxymatlab/
	doxygen
