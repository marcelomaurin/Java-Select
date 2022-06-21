JCC=javac
SOURCE= \
	./HelloWorld/Hello.java

TARGET= HelloWorld

CLASS=Hello

USER=root@192.168.0.213
PASSWORD=<pass>

DEBUG= -g

all: compile run

compile:
	$(JCC) $(DEBUG) $(SOURCE) 

jar:
	jar cfm $(CLASS).jar Manifest.txt  $(TARGET)/$(CLASS).class


run:
	java -cp . $(TARGET).$(CLASS)

runjar:
	java -jar $(CLASS).jar
	
mysql:
	mysql -u$(USER) -p$(PASSWORD) < ./mysql/sampledb.sql
	mysql -u$(USER) -p$(PASSWORD) < ./mysql/pessoas.sql
