COUNT=1
DIR1=path/filename

# how to use Array
SERVICES = app1 app2 app3 app4 app5
.PHONY: $(SERVICES)
$(SERVICES):
	GOOS=linux GOARCH=amd64 go build ${gcflag} -i -o ./bin/linux/$@ ./$@

.PHONY: build-all
build-all: $(SERVICES)

 
# how to use if statement
.PHONY: checkif
#checkif: SHELL: =/bin/bash
checkif:

	# Number
	@if [ ${COUNT} -eq 1 ]; then\
		echo 1;\
	elif [ ${COUNT} -eq 2 ]; then\
		echo 2;\
	else\
		echo 'something else';\
	fi

	# String
	@if [ ${DIR1} = 'path/filename' ]; then\
		echo path/filename;\
	elif [ ${DIR1} = 'path' ]; then\
		echo path;\
	else\
		echo 'something else';\
	fi


# how to use for loop
.PHONY: checkloop
checkloop: max=10
checkloop:
	@for ((i=0; i < ${max}; i++)); do\
		echo $${i};\
	done


# how to use for loop 2
.PHONY: checkloop2
checkloop2: DIRNAME=abc
checkloop2:
	@idx=1 ; while [[ $$idx -le 10 ]] ; do \
		rm -rf ./docker/node/${DIRNAME}/data$$idx ; \
		((idx = idx + 1)) ; \
	done ;


.PHONY: content
content:
	@echo ${TYPE}
	@if [ ${TYPE} = 'btc' ]; then\
		echo btc;\
	elif [ ${TYPE} = 'eth' ]; then\
		echo eth;\
	else\
		echo 'something else';\
	fi

# how to use variable
contentwith: TYPE=btc
contentwith: content

# how to use variable 2
contentwith2: TYPE=eth
contentwith2: content
