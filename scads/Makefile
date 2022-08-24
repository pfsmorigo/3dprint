SCAD_FILES := $(wildcard *.scad)
PNG_FILES := $(patsubst %.scad,%.png,$(SCAD_FILES))

main: ${PNG_FILES}

%.png: %.scad
	openscad --imgsize=300,300 -o $@ $<
