COUNT=1
DIR1=path/filename

#checkif: SHELL:=/bin/bash
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


checkloop: max=10
checkloop:
	@for ((i=0; i < ${max}; i++)); do\
		echo $${i};\
	done


valiable: TYPE=btc
valiable: content

valiable2: TYPE=eth
valiable2: content

content:
	@echo ${TYPE}
	@if [ ${TYPE} = 'btc' ]; then\
		echo btc;\
	elif [ ${TYPE} = 'eth' ]; then\
		echo eth;\
	else\
		echo 'something else';\
	fi
