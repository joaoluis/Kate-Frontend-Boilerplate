DATE = $(shell date)
TIMESTAMP = $(shell date +%s)
APP_NAME = kate
SASS_INPUT_DIR = sass/
CSS_OUTPUT_DIR = css/
SASS_STYLE = expanded

default: build
	@echo "${DATE}: Finished."

build: 
	@echo "${DATE}: Building Kate Frontend Bootstrap..."
	
	if ! [ -f "${CSS_OUTPUT_DIR}${TIMESTAMP}-${APP_NAME}.css" ]
	then
		echo "$file found."
	else
		echo "$file not found."
	fi
	
	-f touch ${CSS_OUTPUT_DIR}${TIMESTAMP}-${APP_NAME}.css
	sass ${SASS_INPUT_DIR}/$(APP_NAME).scss:${CSS_OUTPUT_DIR}${TIMESTAMP}-${APP_NAME} --style ${SASS_STYLE}