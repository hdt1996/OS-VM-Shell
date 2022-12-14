BASEDIR=$(readlink -f $(dirname "$0"))
USER=$(echo "$USER")
cd ~/Desktop

read -p \
"What icon do you want?
.......................
1) git
2) standard
3) web
......................
Enter name: " icon

case "$icon" in
	"git")
	icon=$(readlink -f $BASEDIR/src/git.png);;
	"web")
	icon=$(readlink -f $BASEDIR/src/web.png);;
	"standard")
	icon=$(readlink -f $BASEDIR/src/exec_icon.jpg);;
esac

read -p "Drag/Drop or Write your scripts path here: " inps
for inp in $inps
do
	inp=$(echo $inp | sed s/\'//g)
	custom_name="$(echo $inp | rev | cut -d '/' -f1 | rev | sed -e 's/\.sh//')"
	echo \
"
[Desktop Entry]
Version=1.0
Exec=$inp
Name=$custom_name
GenericName=$custom_name
Comment=$custom_name
Encoding=UTF-8
Terminal=true
Type=Application
Icon="$icon"
Categories=Application;Network;TEST
" > ./$custom_name.desktop

sudo chown $USER:$USER ./$custom_name.desktop 
sudo chmod ug+x ./$custom_name.desktop 
gio set ./$custom_name.desktop metadata::trusted true
done



