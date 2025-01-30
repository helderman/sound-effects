# 'make' or 'make all' will execute every *.sh file found in folder src
# and store each resulting *.mp3 file in folder mp3.

all: $(patsubst src/%.sh,mp3/%.mp3,$(wildcard src/*.sh))

mp3/%.mp3: src/%.sh
	$< $@

clean:
	$(RM) mp3/*.mp3
