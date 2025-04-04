
all: helloWorldMain helloWorldSys course asciiArt

helloWorldMain: helloWorldMain.o
	gcc helloWorldMain.o -o helloWorldMain

helloWorldMain.o: helloWorldMain.s
	as -g helloWorldMain.o -o helloWorldMain.s

helloWorldSys: helloWorldSys.o
	gcc helloWorldSys.o -o helloWorldSys

helloWorldSys.o: helloWorldSys.s
	as -g -o helloWorldSys.o helloWorldSys.s

course: course.o
	gcc course.o -o course

course.o: course.s
	as -g -o course.o course.s

asciiArt: asciiArt.o
	gcc asciiArt.o -o asciiArt

asciiArt.o: asciiArt.s
	as -g -o asciiArt.o asciiArt.s

clean:
	rm -f helloWorldMain helloWorldMain.o helloWorldSys helloWorldSys.o course course.o asciiArt.o asciiArt
