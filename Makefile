SHELL := /bin/bash

build:
	echo "Building the project..."
	jupyter-book build jax_intro/

clean:
	echo "Cleaning the project..."
	jupyter-book clean jax_intro/

run:
	# Call clean and build
	make clean
	make build

push:
	make run

	ghp-import -n -p -f -o jax_intro/_build/html
