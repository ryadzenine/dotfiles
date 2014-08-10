# YADR
## What is it about :
This is my dotfiles project. It is inspired from [YADR](https://github.com/skwp/dotfiles). I removed all the plugins that i don't need,
removed html/css/javascript/ruby/rails support, added python and golang support.
I also updated the vim configuration to use pathogen instead of Vundle.

I also added my bashrc with support to [liquidprompt](https://github.com/nojhan/liquidprompt).

Feel free to fork my work. Otherwise you can use the amazing [YADR](https://github.com/skwp/dotfiles)
## Installation

To get started please run:
Just clone the repo and run make. To update the plugins, please run make update.


## What's included, and how to customize?

Read on to learn what YADR provides!

### ZSH

Think of Zsh as a more awesome bash without having to learn anything new.
Automatic spell correction for your commands, syntax highlighting, and more.
We've also provided lots of enhancements:

* Vim mode and bash style `Ctrl-R` for reverse history finder
* `Ctrl-x,Ctrl-l` to insert output of last command
* Fuzzy matching - if you mistype a directory name, tab completion will fix it
* [fasd](https://github.com/clvv/fasd) integration - hit `z` and partial match for recently used directory. Tab completion enabled.
* [Prezto - the power behind YADR's zsh](http://github.com/sorin-ionescu/prezto)
* [How to add your own ZSH theme](doc/zsh/themes.md)

### Aliases ( Only Work with Zsh)

Lots of things we do every day are done with two or three character
mnemonic aliases. Please feel free to edit them:

    ae # alias edit
    ar # alias reload


### Git Customizations:

YADR will take over your `~/.gitconfig`, so if you want to store your usernames, please put them into `~/.gitconfig.user`

It is recommended to use this file to set your user info. Alternately, you can set the appropriate environment variables in your `~/.secrets`.

  * `git l` or `git lg`- a much more usable git log
  * `git b` - a list of branches with summary of last commit
  * `git r` - a list of remotes with info
  * `git t` - a list of tags with info
  * `git nb` - a (n)ew (b)ranch - like checkout -b
  * `git cp` - cherry-pick -x (showing what was cherrypicked)
  * `git simple` - a clean format for creating changelogs
  * `git recent-branches` - if you forgot what you've been working on
  * `git unstage` (remove from index) and `git uncommit`  (revert to the time prior to the last commit - dangerous if already pushed) aliases
  * Some sensible default configs, such as improving merge messages, push only pushes the current branch, removing status hints, and using mnemonic prefixes in diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
  * Slightly improved colors for diff


## Vim - What's included?

 * [Navigation : ctrl-space, easy-motion  and more](doc/vim/navigation.md)
 * [Code manipulation : python support, golang-support, comments, highlighting](doc/vim/coding.md)
 * [Utils - indents, paste buffer management, lots more](doc/vim/utils.md)
 * [General enhancements that don't add new commands](doc/vim/enhancements.md)

A list of some of the most useful commands that YADR provides in vim are
included below. This is not a comprehensive list. To get deeper knowledge,
practice a few of these every day, and then start looking into the lists
of plugins above to learn more.

#### Navigation

 * `,z` - go to previous buffer (:bp)
 * `,x` - go to next buffer (:bn)
 * `Ctrl-o` - Old cursor position - this is a standard mapping but very useful, so included here
 * `Ctrl-i` - opposite of Ctrl-O (again, this is standard)

#### Search/Code Navigation

 * `,gf` or `Ctrl-f` - same as vim normal gf (go to file), but in a vertical split (works with file.rb:123 line numbers also)
 * `gF` - standard vim mapping, here for completeness (go to file at line number)
 * `K` - Search the current word under the cursor and show results in quickfix window
 * `,hl` - toggle search highlight on and off
 * `,gg` or `,ag` - Grep command line, type between quotes. Uses Ag Silver Searcher.
 * `//` - clear the search

#### File Navigation

 * `Ctrl-Space` toggle the ctrlspace plugin
 * easymotion 
#### Better keystrokes for common editing commands

 * Automatic autocomplete using [Neocomplete](https://github.com/Shougo/Neocomplete)
 *  `,"` `,'` `,]` `,)` `,}` to surround a word in these common wrappers.
 * `,.` to go to last edit location (same as `'.`) because the apostrophe is hard on the pinky

#### Tabs, Windows, Splits

 * `Ctrl-h,l,j,k` - to move left, right, down, up between splits
 * `Q` - Intelligent Window Killer. Close window `wincmd c` if there are multiple windows to same buffer, or kill the buffer `bwipeout` if this is the last window into it.
 * `vv` - vertical split (`Ctrl-w,v`)
 * `ss` - horizontal split (`Ctrl-w,s`)
 * `,qo` - open quickfix window (this is where output from Grep goes)
 * `,qc` - close quickfix

#### Utility

 * `,cf` - Copy Filename of current file (full path) into system (not vi) paste buffer
 * `,cn` - Copy Filename of current file (name only, no path)
 * `,yw` - yank a word from anywhere within the word (so you don't have to go to the beginning of it)
 * `,ow` - overwrite a word with whatever is in your yank buffer - you can be anywhere on the word. saves having to visually select it
 * `,ocf` - open changed files (stolen from @garybernhardt). open all files with git changes in splits
 * `,w` - strip trailing whitespaces
 * `sk` - unsplit a link (k = up)
 * `,he` - Html Escape
 * `,hu` - Html Unescape
 * `,hp` - Html Preview (open in Safari)
 * `,hi` - show current Highlight group. if you don't like the color of something, use this, then use `hi! link [groupname] [anothergroupname]` in your vimrc.after to remap the color. You can see available colors using `:hi`
 * `,gt` - Go Tidy - tidy up your html code (works on a visual selection)

#### Vim Dev

 * `,cv` - (Vim Command) copies the command under your cursor and executes it in vim. Great for testing single line changes to vimrc.
 * `,vr` - (Vim Reload) source current file as a vim file

## Extending and overriding YADR settings

* [Debugging vim keymappings](doc/vim/keymaps.md)
* [Overriding vim settings with ~/.vimrc.after and friends](doc/vim/override.md)
* [Adding your own vim plugins](doc/vim/manage_plugins.md)

## Misc

* [Credits & Thanks](doc/credits.md)
* [Yan's Blog](http://yanpritzker.com)

[Learn more about YADR's pry customizations and how to install](doc/pry.md)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/skwp/dotfiles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
