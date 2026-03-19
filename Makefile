VENV        = .venv
PYTHON      = python3
VENV_PYTHON = $(VENV)/bin/python
VENV_PIP    = $(VENV)/bin/pip
SPHINXBUILD = $(VENV)/bin/sphinx-build
VENV_STAMP  = $(VENV)/.installed
SOURCEDIR   = .
BUILDDIR    = _build
MAKEFILE    = $(lastword $(MAKEFILE_LIST))

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Darwin)
	OPEN_CMD := open
else ifeq ($(UNAME_S),Linux)
	OPEN_CMD := xdg-open
else
	$(error Unsupported OS: $(UNAME_S))
endif

.PHONY: help html clean venv show clean-venv

help: ## List every available make target and what it does.
	@echo
	@echo "make targets:"
	@echo
	@awk 'BEGIN { FS = ":.*## " } /^[^#[:space:].][^:]*:.*## / { printf "  make %-22s %s\n", $$1, $$2 }' $(MAKEFILE)


$(VENV_PYTHON): ## (internal) Create the virtual environment if it does not exist.
	@test -x $@ || $(PYTHON) -m venv $(VENV)

$(VENV_STAMP): $(VENV_PYTHON) requirements.txt ## (internal) Install or refresh the documentation dependencies.
	$(VENV_PIP) install --quiet --upgrade pip
	$(VENV_PIP) install --quiet -r requirements.txt
	@touch $@

venv: $(VENV_STAMP) ## Validate the virtual environment and install dependencies if needed.
	@echo "Virtual environment ready at $(VENV)/"

html: $(VENV_STAMP) ## Build the local HTML preview.
	@echo "Generating local HTML preview ..."
	$(SPHINXBUILD) -b html "$(SOURCEDIR)" "$(BUILDDIR)/html"
	@echo "Done! Run \"make show\" to show the preview in your browser."

show: ## Open the generated HTML preview in the default browser.
	$(OPEN_CMD) $(BUILDDIR)/html/content/index.html

clean: ## Remove the generated documentation build output.
	rm -rf $(BUILDDIR)

clean-venv: clean ## Remove the build output and the virtual environment.
	rm -rf $(VENV)
