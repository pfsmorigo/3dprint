SCAD_FILES := $(wildcard *.scad)
PNG_FILES := $(patsubst %.scad, %.png, $(SCAD_FILES))

README.md: ${PNG_FILES}
	@echo "# 3D models made with OpenSCAD\n" > $@
	@for FILE in ${PNG_FILES}; do echo "[![$$FILE]($$FILE)]($${FILE%.*}.scad)" >> $@; done

%.png: %.scad
	openscad --imgsize=300,300 -o $@ $<

clean:
	${RM} ${PNG_FILES}

.PHONY: README.md
