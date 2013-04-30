DATE=$(shell date)
SASS_INPUT_FILE = sass/kate.scss
CSS_OUTPUT_FILE = css/kate.css
SASS_STYLE = expanded

default: build
	@echo "${DATE}: Finished."

build: 
	@echo "${DATE}: Building Kate Frontend Bootstrap..."
	sass ${SASS_INPUT_FILE}:${CSS_OUTPUT_FILE} --style ${SASS_STYLE}