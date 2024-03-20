install:
	pip install -r requirements.txt -t python/lib/python3.10/site-packages/ --python-version 3.10 --only-binary=:all: --platform manylinux2014_x86_64
	cp -r layer_module/kidboo python/lib/python3.10/site-packages/

zip:
	zip -r kidboo_layer.zip .

all: install zip

clean:
	rm -rf python/ kidboo_layer.zip
