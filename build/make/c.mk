BASE = $(basename $(FILE))
WARNING = -Wall

default:
  $(CC) ${WARNING} ${FILE} -o ${BASE}
