
.PHONY = export

export-env:
	conda env export --no-builds | grep -v "prefix" > environment.yml

create:
	conda create -f environment.yml
