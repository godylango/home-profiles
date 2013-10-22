## Home Directory Profiles

Collection of profiles I find useful for development (particularly Ruby) on *nix machines.  Sets up aliases, rvm prompts, emacs defaults, etc.

To install, simply clone this repository into your home directory, and invoke the `mk_sym_links.sh` script.

    $ cd
    $ git clone git@github.com:IndieBosco/home-profiles.git
    $ home-profiles/mk_sym_links.sh

The `mk_sym_links.sh` script will create sym-links only if a profile does NOT already exist.  Thus, you may want to rename the original to a backup name.

Also, don't forget to edit the [user] section of gitconfig to specify your email and name.
