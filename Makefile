SCAD_FILES := $(wildcard scads/*.scad)
IMG_FILES := $(patsubst %.scad, %.png, $(SCAD_FILES))
IMAGE_SIZE := 1600
THUMBNAIL_SIZE := 240

README.md: ${IMG_FILES}
	@cat $@.header > $@
	@for FILE in ${IMG_FILES}; do echo "<a href=\"$${FILE%.*}.scad\"><img src=\"$$FILE\" width=\"${THUMBNAIL_SIZE}\"></a>" >> $@; done

%.png: %.scad
	openscad --render --imgsize=${IMAGE_SIZE},${IMAGE_SIZE} -o $@ $<

clean:
	${RM} ${IMG_FILES}

.PHONY: README.md
