LAYOUT_SRC:=scss/layout.scss
BOOTSTRAP_SRC:=scss/vendor/bootstrap/bootstrap.scss
FONTAWESOME_SRC:=scss/vendor/fontawesome/font-awesome.scss

LAYOUT_TARGET:=css/style.css
BOOTSTRAP_TARGET:=css/bootstrap.min.css
FONTAWESOME_TARGET:=css/font-awesome.min.css

all:

style:
	sass --unix-newlines ${LAYOUT_SRC} ${LAYOUT_TARGET}
	sass --style compressed ${BOOTSTRAP_SRC} ${BOOTSTRAP_TARGET}
	sass --style compressed ${FONTAWESOME_SRC} ${FONTAWESOME_TARGET}

watch:
	sass --watch \
        --unix-newlines ${LAYOUT_SRC}:${LAYOUT_TARGET} \
        --style compressed ${BOOTSTRAP_SRC}:${BOOTSTRAP_TARGET} \
        --style compressed ${FONTAWESOME_SRC}:${FONTAWESOME_TARGET}


clean:
