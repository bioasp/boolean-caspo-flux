
IMAGE=pauleve/boolean-caspo-flux
TAG=latest

image:
	docker build -t $(IMAGE):$(TAG) .

test:
	colomoto-docker -V $(TAG) --no-update --image $(IMAGE) -e COLOMOTO_SKIP_JUPYTER_JS=1 jupyter nbconvert --execute --inplace *.ipynb

update-notebooks:
	colomoto-docker -V $(TAG) --no-update --image $(IMAGE) -e COLOMOTO_SKIP_JUPYTER_JS=1 --bind . jupyter nbconvert --execute --inplace *.ipynb

