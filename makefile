

all: helloWorld helloWorldSys

helloWorld: helloWorldMain.o
	gcc helloWorldMain.o -o helloWorld

helloWorldMain.o: helloWorldMain.s
	gcc -g -c helloWorldMain.s -o helloWorldMain.o

helloWorldSys: helloWorldSys.o
	gcc helloWorldSys.o -o helloWorldSys

helloWorldSys.o: helloWorldSys.s
	as -g -o helloWorldSys.o helloWorldSys.s
clean:
	rm -f helloWorld helloWorldMain.o helloWorldSys helloWorldSys.o
