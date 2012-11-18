all: qmk keymap app

qmk: seven-square.pro
	mkdir -p build
	(cd build && qmake -o Makefile ../seven-square.pro)

keymap: src/keycodes.h
	./contributes/generate-keymap.sh

app:
	(cd build && make)

clean:
	(cd build && make clean)
	#rm -f Makefile.qmake
	#rm -f keymap-generated.h
