2014-04-11
==================
 * clean des plugins inutilisés 
 * installation de command-T en replacement de ctrlP
 * installation de vim-ctrlspace 
 * installation de vim-sneak

2014-04-04
==================
 * Installing solarized and gruvbox colorscheme
 * removing vim-gocode vim-godef and installing vim-go

2014-02-22
==================
 * Changed neocompletion to supertab
 * Fixed golang support (tags , completion , doc )
 
2014-02-21
==================
 
 * Fork from Ryad Zenine 
 * Updating the vim configuration to use pathogen
 * Language support +GO + PYTHON -JS -HTML -RUBY -LESS -PUPPET ect... 
 * Removing a lot of vim plugins that are not usefull for me 
 * Updating the output of git log
 * Added a bashrc file 
 * Removed all OsX related stuff
 * Installed annonymous fonts 
 * Added liquidprompt as a submodule  
 * Removed all the ruby code 
 * Added extended support for python and golang
2014-02-15
==================

 * Replace Git Grep with Ag and remove unused plugins
 * Sneak: hit Space and type two letters to quickly jump somewhere
 * Added Ctrl-R, reverse history search for :commands
 * Remove ;; semicolon mapping. Messes with regular semicolon usage (find next char)
 * Change to Lightline instead of Airline [Fix #418]

Jan 5, 2013
==================

* Switch to lightline instead of airline for status bar. Works better in terminal vim and should be faster.
* Added investigate.vim (gK for docs)
* Fix homebrew installation of macvim with lua enabled, and fix deprecated homebrew install.

Dec 17, 2013
==================

* Cleanup of README to make it more palatable, focusing on the primary key bindings
* Improved integration with Ag, giving ,ag and ,af aliases
* Got rid of conque term, implemented a "send to iTerm" rspec runner (invoke with ,rs ,rl ,ss ,sl) for the rspec and spring/rspec versions.

March 29, 2013
==================

* Migrated to Vundle instead of pathogen for easier bundle management
* Added Silver Searcher for lightning fast :Gsearch
