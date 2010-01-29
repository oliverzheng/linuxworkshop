==============
Linux Workshop
==============

.. raw:: pdf

    PageBreak

Welcome
-------

Agenda:

- What Linux is (5 minutes)
- The basic things (10 minutes)
- What Linux can do for you (45 minutes, maybe?)

What Linux Is
-------------

- An operating system, like Windows and Mac OS X
- Primarily used for server and desktop computers (as opposed to embedded
  processors on space shuttles)
- Started in the late 1980's, a derivative of UNIX, like Mac OS X, Solaris, BSD
- It's more than just command-line, srsly

Windows
-------

- Microsoft makes it and markets it
- You buy it, cause you don't like Macs
- You use the de facto programs like Office, Windows Live Messenger, Internet
  Explorer/Firefox/Chrome because that's what everyone else uses and that's all
  you've heard of

Mac OS X
--------

- Apple makes it and markets it (heavily)
- You buy it, cause you don't like Windows
- You use the de facto programs like Office, iChat/Adium, Safari/Firefox/Chrome
  because that's what everyone else uses and that's all you've heard of

Linux
-----

- People on the intertubes make it, nobody markets it
- You come to a workshop to see why Linux matters at all

(To be honest, it really doesn't, not to your average Joe.)

Ecosystem
---------

Volunteers code Linux, spearheaded by an egotistical jerk called Linus Torvalds
that everyone sucks up to. They also make application programs that suit their
need.

Notice how "their need" is the needs of the volunteer programmers. This is so
relevant it's not even funny.

Choice
------

Everything is (supposed to be) open source, because these guys believe in choice
- the choice to choose and know what a program is doing on your computer
exactly. (What happens if that new program you downloaded stole your password?
How do you even know?)

This philosophy alone manifested the culture of Linux.

Distributions
-------------

Due to the many choice of Linux, there have been many flavours that have been
adapted for users. Without these flavours, or so called **Linux distros**
(distributions), you would have to do the following to run Linux:

- Compile your own Linux kernel, with all the modules you want/need
- Find your drivers
- Configure all the base system components from scratch, compile them all, and
  test to see if the whole system works together
- Post way too many noob questions online

.. raw:: pdf

    PageBreak

A Linux Distro is composed of:

- a community that dislike all the other distros for whatever reason. Usually
  this is in the form of a mailing list, online forum, IRC, blogs.

- a **package manager**, a program that manages programs on the OS. Probably the
  most important thing on a distro, besides the fancy wallpapers.

  E.g. apt-get on Ubuntu

- **maintainers**, who are update all applications in the distro. Essentially,
  maintainers periodically update the URLs pointed to by package manager to the
  updated links in the **upstream**, which are the people that actually code the
  programs.

.. raw:: pdf

    PageBreak

In summary, your Linux distro is controlled by a bunch of strangers on the
Internet.

The Basic Things
----------------

Firstly, SSH into the department Linux server:

Windows:
    Enter ``ssh-linux.ece.ubc.ca`` for the hostname, and press Open. Login.

Mac:
    Applications -> Utilities -> Terminal. You don't even have to SSH since you
    already have a Linux-ish environment.

Linux:
    Open a terminal and you are set.

The Really Basic Commands
-------------------------

The command line is your **friend**. Over time, friendship may become love.

- ``cd`` - change directory
- ``ls`` - list files
- ``echo`` - print all arguments given on the command line
- ``cat`` - display file contents
- ``less`` - scroll things given to its input
- ``wget`` - download any file
- ``find`` - find a file matching a filename
- ``grep`` - find a file or a line given something to match against
- Pipes redirect the output one program 1 as the input of program 2:

  ``find | grep name``

- Redirectors is like a pipe, but operates with files

  ``echo testtest > testfile.txt``

Vim
---

- It is not meant to be scary, but efficient
- Everything (EVERYTHING!!11eleven) is and can be mapped to a key
- Your hand should never leave the home-row keys (that is, ``asdf`` and
  ``jkl;``)
- You probably have to use it in future courses in ECE, so embrace it now and
  prosper later

Basic Vim
---------

2 modes of operation (for now): **normal**, **insert**

Insert Mode:

- Press ``i`` to enter this mode
- Type as you would in a normal editor. Everything is the same.

.. raw:: pdf

    PageBreak

Normal Mode:

- The default mode when opening vim.
- Press ``<ESC>`` to enter this mode.
- Each key does something different

- save your file: ``:w<ENTER>``
- quit vim :( ``:q<ENTER>``, or save and quit in one go: ``:wq<ENTER>``, or
  quit without saving: ``:q!<ENTER>``
- move around: ``j``,``k``,``l``,``m`` = left, right, up, and down arrow keys
- delete: ``x`` deletes one letter, ``dd`` deletes the whole line, ``3dd``
  deletes the next 3 lines
- copy: ``yy`` copies the current line, ``3yy`` copies the next 3 lines
- paste: ``p`` pastes whatever you copied
- do whatever you just did: ``.`` to redo your last action
- record macros: ``qq`` start recording a macro, ``q`` again to stop
  recording, ``@q`` to play the macro, ``100@q`` to play the macro 100
  times
- undo: ``u``
- browse directories: ``:Ex<ENTER>`` shows you the directory, use movement keys to
  find your file

- Cheatsheet: http://www.tuxfiles.org/linuxhelp/vimcheat.html

Useful Things
-------------

Here is some stuff useful on the ECE server.

Screen
------

A terminal multiplexer, also saves across SSH sessions (in case of bad WiFi
connections).

- ``screen`` to start a screen session
- Inside screen, ``<CTRL>c`` to create a new terminal
- Inside screen, ``<CTRL>a-#`` to jump to the # terminal
- Inside screen, ``<CTRL>a-a`` to jump to the previous terminal
- Inside screen, ``<CTRL>a-d`` to "detach" the session.
- ``screen -r`` to reattach the session

Git
---

A version control that requires no server setup. Great for quick backups, and
collaboration.

- ``git init`` to start a Git repository
- ``git add .`` to add all files to the repository
- ``git commit -m 'Commit Message'`` to commit the previous add

Each commit is saved as a separate version and can be retrieved in the future
any time.

- ``git log`` to see the commit history - note the hash
- ``git checkout <HASH-HERE>`` to revert to that commit

For collaboration on your team projects, http://github.com/

Things That Are Kind of Awesome... IMO Anyway
---------------------------------------------

Not necessary applicable to the ECE servers, but here's some cool stuff.

AKA, showoff time.

Mutt
----

Vim-like email client.

rssdler & rtorrent
------------------

rssdler - automatically download items from RSS feeds
rtorrent - command-line Bittorrent

Combination - automatic background BT downloader for all your TV shows

mplayer
-------

A minimally intrusive version of VLC (which exists on Linux as well).

Elinks
------

Command-line browser.

Why? :/

slimrat
-------

Automatic downloader for Rapidshare, Megaupload, DepositFiles, MediaFire,
Youtube, blah blah blah.

Command-line and GUI options available.

Vimperator
----------

Firefox extension to make your Firefox act like Vim, get rid of your mouse
entirely.

Tiling Window Managers
----------------------

Automatic management of your windows, so you don't have to drag stuff around all
the time.

Python
------

A general purpose programming language. Easy to pick up, and has lots of
possibilities, especially in combination with other tools:

- Sync Gmail contacts to local email contacts (since Google uses Python and
  provides libraries for Python)
- Automatically transcode music to lower bit-rate with ``ffmpeg`` and copy when
  iPod/MP3 player is plugged in. Yes, iPods work on Linux. Surprise!
- Generate 200 name tags for the IEEE Think Engineering event with
  ``imagemagick``, a command-line based Photoshop-ish kind of thing.
- Automatically dial to Pizza Hut with Skype, and use ``festival`` to convert
  text to voice and order pizza to your house... for whatever reason.

In Summary
----------

The benefit of using Linux as a desktop computer:

- Get to know the workings of your computer better, since every component of
  the OS is exposed to you
- Be more efficient at everything
- Gain some competitive edge compared to using just Windows/Mac

.. raw:: pdf

    PageBreak

To make the best of Linux, you need to

- Pick a distro. Ubuntu isn't as god awful as I claim it to be.
- Pick a development environment. GNOME, KDE, tiling window manager, just a raw
  terminal, whatever
- Pick your editor: Vim or Emacs, there really is no other choice if you want to
  be efficient.
- Pick your primary scripting language and learn it well. I suggest Python, but
  there's Bash, Perl (please do not pick this), Ruby, Tcl, PHP (not this one
  either please), Lua, Lisp, Scheme, Haskell.
- Discover new and useful programs on Linux.

It's all about choice.
