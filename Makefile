
IMAGE=bioasp/boolean-caspo-flux
TAG=cmsb2021

image: prepare-source
	docker build -t $(IMAGE):$(TAG) .
publish:
	docker push $(IMAGE):$(TAG)

test:
	colomoto-docker -V $(TAG) --no-update --image $(IMAGE) -e COLOMOTO_SKIP_JUPYTER_JS=1 jupyter nbconvert --execute --inplace *.ipynb

update-notebooks:
	colomoto-docker -V $(TAG) --no-update --image $(IMAGE) -e COLOMOTO_SKIP_JUPYTER_JS=1 --bind . jupyter nbconvert --execute --inplace *.ipynb

prepare-source:
	tar cvf dist.tar dist
	tar cvfz data.tar.gz data
	tar cvfz simulations.tar.gz simulations

clean:
	-rm -fv *.tar*
