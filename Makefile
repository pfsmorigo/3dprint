SCAD_FILES := $(wildcard scads/*.scad)
PNG_FILES := $(patsubst %.scad, %.png, $(SCAD_FILES))

README.md: ${PNG_FILES}
	@cat $@.header > $@
	@for FILE in ${PNG_FILES}; do echo "[![$$FILE]($$FILE)]($${FILE%.*}.scad)" >> $@; done

%.png: %.scad
	openscad --imgsize=250,250 -o $@ $<

clean:
	${RM} ${PNG_FILES}

.PHONY: README.md
