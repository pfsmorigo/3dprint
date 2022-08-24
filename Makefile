SCAD_FILES := $(wildcard scads/*.scad)
PNG_FILES := $(patsubst %.scad, %.png, $(SCAD_FILES))
THUMBNAIL_SIZE := 250

README.md: ${PNG_FILES}
	@cat $@.header > $@
	@for FILE in ${PNG_FILES}; do echo "[![$$FILE]($$FILE)]($${FILE%.*}.scad)" >> $@; done

%.png: %.scad
	openscad --imgsize=${THUMBNAIL_SIZE},${THUMBNAIL_SIZE} -o $@ $<

clean:
	${RM} ${PNG_FILES}

.PHONY: README.md
