if [ $1 == "set" ]; then
	cp $2 $3
else
	cp $3 $2
fi
