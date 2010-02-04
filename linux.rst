==============
Linux Workshop
==============

.. raw:: pdf

    PageBreak

Welcome
-------

Agenda:

- What Linux is (5 minutes)
- The basic things and setting up (15 minutes)
- The awesome things and a mini-project right here (30 minutes)
- Blah blah blah

Download this now:

http://oliverzheng.com/linux/slides.pdf

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
- (Actually I lied. About 70% of Linux's code is funded by commercial and
  non-profit organizations.)
- You come to a workshop to see why Linux matters at all
- To be honest, it really doesn't, not to your average Joe.

- The point of using Linux is to do more with less. Be efficient, automate, let
  the machine do your work.

Ecosystem
---------

Volunteers and paid programmers code Linux, spearheaded by an egotistical jerk
called Linus Torvalds that everyone sucks up to. They also make application
programs that suit their need.

Notice how "their need" is the needs of the programmers. This is why you are
here.

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

- ``cd`` - change directory::

        cd some-directory

- ``ls`` - list files::

        ls

- ``mkdir`` - make directory::

        mkdir some-new-directory

- ``rm`` - remove files or directories::

        rm some-file.txt

        rm -rf some-directory
        
r for recursive, f for force (because you can't remove a directory with
rm, unless you force it with f (rmdir removes directories (only if it's
empty already (unless you use f too)))).

- ``mv`` - move a file (also renames)

    ``mv original-file.txt new-file.txt``

- ``echo`` - print all arguments given on the command line

    ``echo chocolate-glazed chocolate cake with sliced almonds sprinkled over``

- ``cat`` - display file contents

    ``cat some-file.txt``

- ``wget`` - download any file

    ``wget http://google.com/``

- ``chmod`` - change permissions of a file. By default, Linux files are
  read-only, and not executables.

- Pipes redirect the output one program 1 as the input of program 2:

  ``cat some-file.txt | less``

- ``less`` - scroll things given to its input

- ``grep`` - find a file or a line given something to match against

    ``cat some-file.txt | grep keyword`` to find it.

    ``grep -R function_name *`` to find all files recursively with
    "function_name" in them.

- Redirectors is like a pipe, but operates with files

  ``echo testtest > testfile.txt``

  Special ``/dev/null`` is a file that acts as a black hole.

  ``echo this message is gone > /dev/null``

  In additional to standard output (stdout), secondary error output (stderr).

  ``echo >&2`` is put to stderr
  
  ``echo >&2 2>&1`` is put to stdout again

  ``>anything`` really means ``1>anything``

  ``>> file`` appends to the file, without overwriting.

Put These To Use...
-------------------

Bash is not the default shell. Let's fix that.

- ``echo "exec /bin/bash" >> .cshrc`` quotes aren't necessary actually.

Logout, log back in. Bash should be here now. Let's get a more useful Vim
configuration file.

- ``wget http://oliverzheng.com/linux/vimrc`` download the
  configuration file
- ``mv .vimrc .vimrc.backup`` to backup your original Vim configuration file
- ``mv vimrc .vimrc`` to rename the file
- ``cat .vimrc | less`` to view the file. ``j``/``k`` to scroll up and down.
  ``q`` to quit.

Vim
---

(Did you think you'd leave here without seeing Vim?)

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
- quit vim :( ``:q<ENTER>``, or save and quit in one go: ``:wq<ENTER>``, or quit
  without saving: ``:q!<ENTER>``
- move around: ``j``, ``k``, ``h``, ``l`` = down, up, left, and right arrow keys
- delete: ``x`` deletes one letter, ``dd`` deletes the whole line, ``3dd``
  deletes the next 3 lines
- copy: ``yy`` copies the current line, ``3yy`` copies the next 3 lines
- paste: ``p`` pastes whatever you copied
- do whatever you just did: ``.`` to redo your last action
- record macros: ``qq`` start recording a macro, ``q`` again to stop recording,
  ``@q`` to play the macro, ``100@q`` to play the macro 100 times
- undo: ``u``
- find: ``/whatever_you_are_looking_for``
- browse directories: ``:Ex<ENTER>`` shows you the directory, use movement keys
  to find your file

- Cheatsheet: http://www.tuxfiles.org/linuxhelp/vimcheat.html

Bash
----

You are using it already. It's in your terminal. It string together commands to
form a program.

Most awesome Bash tutorial of all time:

http://www.linuxconfig.org/Bash_scripting_Tutorial

Bash Basics
-----------

Everything is a string, including variables and output from programs. (Variables
can be numbers, but it is rarely used.)

- Define variable: ``var="some string"``
- Use variable: ``second_var="some more string and $var"`` - variables are
  expanded in double quotes (but not single quotes)
- Command line arguments: ``$1`` is the first argument, ``$2`` the second, and
  so on
- Using output as strings: ``output="`echo lala`"`` - the ticks are where the
  magic is at, and remember to quote the command output in case output is
  separated by whitespace.
- If statements::

    if [ "string1" == "string2" ]; then
        echo wtf no way
    else
        echo mmmmmhmm
    fi # This is a comment. fi is backwards if

This all works in your terminal, by the way.

You just learned a new language. ``echo Bash >> resume``

Let's String These Together
---------------------------

Ever want to register in a course that's full?

Let's write a script that **texts your cellphone automatically** when it **finds
an open seat**.

.. raw:: pdf

    PageBreak

Holy shit? No seriously, let's proceed.

.. raw:: pdf

    PageBreak

First, this is what it does.

.. raw:: pdf

    PageBreak

Let's keep it clean and put our stuff in one directory.

- ``mkdir course_reg``
- ``cd course_reg``

Download a initial file to work off from.

- ``wget http://oliverzheng.com/linux/script.sh -O script.sh`` specifies
  an output file.
- ``chmod 755 script.sh`` to make it executable
- ``vim script.sh`` to start editing...

.. raw:: pdf

    PageBreak

Providers:

    - Bell: **4**
    - Fido: **5**
    - Koodo: **9**
    - Bell: **4**
    - MTS Mobility: **1**
    - Rogers: **6** (might not work for you, cause they suck bowling balls)
    - SaskTel: **7**
    - Telus: **2**
    - Virgin Mobile: **3**

.. raw:: pdf

    PageBreak

Moment of truth?

- ``./script.sh EECE 320 201 6049999999 1`` and check your cellphone.

Useful Things
-------------

Here is some stuff useful on the ECE server (and command-line in general).

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

rssdler - automatically download items from RSS feeds rtorrent - command-line
Bittorrent

Combination - automatic background BT downloader for all your needs

mplayer
-------

A minimally intrusive version of VLC (which exists on Linux as well).

Elinks
------

Command-line browser.

Why? :/

slimrat
-------

Automatic downloader for Rapidshare, Megaupload, DepositFiles, MediaFire, blah
blah blah.

Command-line and GUI options available.

Vimperator
----------

Firefox extension to make your Firefox act like Vim, get rid of your mouse
entirely.

Wine
----

Windows API emulator for binary compatible execution of "exe's".

This Presentation
-----------------

- Written in plain text format (reStructuredText format, used in documentation)
- Compiled to PDF (with rst2pdf)
- Presented with dedicated presentation software (called Impressive)
- Stored in a version controlled repository (Git).

.. raw:: pdf

    PageBreak

Because OpenOffice blows.

Wireshark
---------

Not just Linux, but Windows and Mac OS X as well.

Most hilariously useful tool ever for hacking.

Tiling Window Managers
----------------------

Automatic management of your windows, so you don't have to.

Without a doubt the #1 reason I use Linux.

List of these for your future reference:

http://wiki.archlinux.org/index.php/Comparison_of_Tiling_Window_Managers

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

Drawbacks of Linux:

- No Office, but it runs in Wine, virtual machine, and there is always dual
  boot. OpenOffice is okay-ish for viewing stuff
- Every component of your system is exposed to you, including drivers, kernel
  modules, software packaging, system upgrade, software configuration

  E.g. on the extreme side: "Why isn't this f*#&$@ wireless driver working with
  my X-org configurations when Flash player 10 is installed and OpenJDK isn't?"

.. raw:: pdf

    PageBreak

To make the best of Linux, you need to

- Pick a distro. Ubuntu is good enough and simple to start with.
- Pick a desktop environment. GNOME, KDE, tiling window manager, just a raw
  terminal, whatever
- Pick your editor: Vim or Emacs, there really is no other choice if you want to
  be efficient.
- Pick your primary scripting language and learn it well. I suggest Python, but
  there's Bash, Perl (please do not pick this), Ruby, Tcl, PHP (not this one
  either please), Lua, Lisp, Scheme, Haskell...
- Discover new and useful programs on Linux.

It's all about choice.

.. raw:: pdf

    PageBreak

Email me: Oliver Zheng - CONFIG_EMAIL
