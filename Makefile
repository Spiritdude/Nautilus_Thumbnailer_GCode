APPNAME = Nautilus_Thumbnailer_GCode
VERSION = 0.0.1

all::
	@echo "make install deinstall test edit push pull change backup"

requirements::
	sudo apt -y install povray

install::
	sudo cp gcode2png /usr/local/bin/
	sudo cp gcode.thumbnailer /usr/share/thumbnailers/
	sudo cp gcode.xml /usr/share/mime/packages/
	sudo update-mime-database /usr/share/mime/
	rm -rf ~/.cache/thumbnails/fail/
                        
deinstall::
	sudo rm -f /usr/local/bin/gcode2png /usr/share/thumbnailers/gcode.thumbnailer /usr/share/mime/packages/gcode.xml

# -- dev only

edit::
	dee4 gcode2png Makefile README.md

push::
	git push

pull::
	git pull

change::
	git commit -am "..."

backup::
	cd ..; tar cfvz ~/Backup/${APPNAME}-${VERSION}.tar.gz ${APPNAME}; scp ~/Backup/${APPNAME}-${VERSION}.tar.gz backup:Backup/

