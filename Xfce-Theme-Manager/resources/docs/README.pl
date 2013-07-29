#------------------------------------------------------
#
#   Xfce-Theme-Manager
#
#   ©K.D.Hedger 2013
#   kdhedger68713@gmail.com
#
#   Released under GPL see the included licence file ( {prefix}/share/Xfce-Theme-Manager/docs/gpl-3.0.txt )
#   Translations of the licence can be found here:
#   http://www.gnu.org/licenses/translations.html
#------------------------------------------------------

DEPENDENCIES:

glib-2.0
gdk-2.0
cairo
gtk+-2.0

unzip - Runtime dependency to drag and drop zip archives.

****************************************************
EXTERNAL APPS (Optional):

Xfce4-Composite-Editor Available here:
http://gtk-apps.org/content/show.php/Xfce4-Composite-Editor?content=149523&PHPSESSID=f9317d406c1ed0e51799fb6b6a1e3e32
****************************************************

USAGE:
xfce-theme-manager [-m] [-u]

-m force a make of all the thumbnails for meta-themes/frames/controls/cursors and icons.
-u just build misssing thumbnails

[Reset Theme]
	Discard all changes.
[Custom Theme]
	Enter a custom theme name to save/delete, you can also quickly delete a custom theme by control-clicking a custom theme thumbnail.

[Advanced Tab]
	[About]
		Credits and stuff.
	[Rebuild DB]
		Rebuild the database.
	[Xfce-Composite-Editor]
		Run the composit editor ( if installed, see above ).
	[Backdrop Adjustments]
		Set Brightness/Saturation of the wallpaper.
	[Button Layout]
		The layout of close, maximize etc. ( some themes may overide this ).
	[Title Position]
		Placement of the window title,  ( some themes may overide this ).
	[Font Selection]
		Title bar/application font.
	[Cursor Size]
		Set the cursor size if the cursor theme suports it, some do some don't.
	[View Options]
		[Show system Themes]
			Show globally installed theme parts.
		[Only show Custom Themes]
			Only shows meta themes that you have created, auto generated meta themes are not shown.
		[Themes]
			Show globally installed meta themes.
		[Window Borders]
			Show globally installed Xwm4 themes.
		[Controls]
			Show globally installed Gtk themes.
		[Icons]
			Show globally installed icon themes.
		[Cursors]
			Show globally installed mouse themes.
		[Wallpapers]
			Show globally installed wallpapers.

Locally installed themes parts are always shown except for meta themes if the [Only show Custom Themes] is checked.
You can quickly delete a custom theme by holding control and clicking on the thumbnail, only custom themes you have created can be deleted and only the database entry is removed nothing is uninstalled from your system.

To install a theme/gtk/icon/cursor/border/wallpaper just drag and drop the archive ( wallpapers should not be archived ) anywhere on the main window and if posible the theme etc will be installed into the correct place, all installations are local, supported archive types are:"*.tgz","*.gz","*.zip","*.tar","*.bz2", supported wallpaper types are:"*.jpg","*.png","*.bmp","*.gif" anything else you will have to install yourself.

The thumbnails are stored in ${HOME}/.config/XfceThemeManager.

The first time you use Xfce-Theme-Manager you should either run it from the command line with the -m switch or click on the "Rebuld DB" button, the first build of the DB can take a while so be patient!

The DB is updated automatically on drag'n'drop, if you do a lot of adding and removeing of themes/icons etc you may want to run Re-build DB from the advanced tab.

Meta Themes are themes that contain a gtk2 folder and an xfwm4 folder (ie window frames and controls), if their is a gnome-like theme.index file that also specifies an icon set this will be used as well.

Spanish/German is now catered for if you have set the 'LANG' enviroment variable properly, other translations are invited email me for a list to be translated.

INSTALL:
Extract the archive say into /tmp, cd into /tmp/Xfce-Theme-Manager-(VERSION), run ./autogen.sh ( or ./configure ), make, sudo make install, this will install the Xfce-Theme-Manager GUI, icon and the desktop file.

The GUI can be run from the command line or from the settings menu.
The GUI can be manually installed and/or run from the main folder.

There is no configure script as the makefile is very simple, default is to install in /usr/local/bin this can be changed by setting the PREFIX variable prior to make install ( sudo make install PREFIX=/usr ).

If you have a source based pkg manager like slackware the dev files for glib etc should already be installed, if you are using a debian based install you may have to install the dev packages as well, from a terminal for a clean system type:

sudo apt-get update
sudo apt-get install build-essential glib-2.0-dev libgtk2.0-dev libxfce4ui-1-dev

Check your installation documentation for further details, but this works on a new clean version of xubuntu-12.10, other flavours of debian based installs should be the same.
You may have to access xfce-theme-manager via the main settings manager in the main menu.

You may have to run  xfce4-panel --restart to see the Xfce-Theme-Manager menu item in settings.

If you are upgrading from an older version please rebuild the DB ( from the "Advanced" tab ).

***************************************
BUGS:
Please send them direct to me at: kdhedger68713@gmail.com posting them on xfce-look etc gets too messy!
***************************************

Enjoy!

