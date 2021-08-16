BRANCH?=	$(shell git rev-parse --abbrev-ref HEAD)

all:

test:		
	@[ "$(BRANCH)" = "master" -o "$(BRANCH)" = "" ] \
	    || { (echo "$(BRANCH)" | grep -q reading)   && .scripts/check.py; } \
	    || { (echo "$(BRANCH)" | grep -q challenge) && .scripts/check.py; }
