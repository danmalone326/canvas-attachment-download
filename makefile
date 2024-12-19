
help: 
	@cat README.md

install: .venv

run: downloads
	@./attachment-download

clean: 
	rm -rf downloads

### Below here is for development

.venv: .venv/touchfile

.venv/touchfile: requirements.txt
	test -d .venv || python3 -m venv .venv
	. .venv/bin/activate; pip install --disable-pip-version-check -Ur requirements.txt
	@cp -n setup.example.ini setup.ini || echo "Using existing setup.ini"
	chmod og=,u=rw setup.ini
	touch .venv/touchfile
	@echo "---> Remember to edit setup.ini"

downloads:
	mkdir -p downloads

clean-all: clean
	rm -rf .venv
	find . -iname "*.pyc" -delete

rebuildRequirements:
	. .venv/bin/activate; pip freeze > requirements.txt

activate:
	@echo "# Run the following to activate"
	@echo . .venv/bin/activate

deactivate:
	@echo "# Run the following to deactivate"
	@echo deactivate