
SCSS_ROOT:=scss
SCSS_FILE:=layout.scss
SCSS_SOURCE:=${SCSS_ROOT}/${SCSS_FILE}

SCSS_WATCH:= .sass.PID

CSS_ROOT:=css
CSS_FILE:=style.css
CSS_TARGET:=${CSS_ROOT}/${CSS_FILE}


all:


style:
	sass ${SCSS_SOURCE} ${CSS_TARGET}

style-watch:
	sass --watch ${SCSS_SOURCE}:${CSS_TARGET}

style-watch-start: ${SCSS_WATCH}

.sass.PID:
	sass --watch ${SCSS_SOURCE}:${CSS_TARGET} & echo $$! > $@

style-watch-stop: ${SCSS_WATCH}
	kill `cat $<` && rm $<

clean:
