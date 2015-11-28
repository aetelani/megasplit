server:
	nc -l 1212 | parallel --pipe --recend '' -k --block 100k cat > out
client:
	dd if=/dev/urandom bs=1 count=1M > in; cat in | nc localhost 1212
