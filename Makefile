# v3.7.0
URL=https://github.com/miyabilink/sukkiri-sql4-codes/releases/latest/download/sukkiri-sql4-codes.zip
FILE=$(shell basename $(URL))
DEST=/usr/local/share/ssql
BIN=/usr/local/bin

all: setup

setup: check download
	@echo "check OK, plase run 'make install'"

TESTDB=testdb-$$$$

check:
	@/bin/echo -n "check PATH..." #
	@sh -c "type psql"
	@echo "OK"
	@if createdb $(TESTDB) </dev/null; then dropdb $(TESTDB); else echo "[FATAL] Unable to create DB without password, please check and retry."; fi

download: $(FILE)

$(FILE):
	if [ ! -f $(shell basename $(URL)) ]; then curl -sL $(URL) > $(shell basename $(URL)); fi

clean:
	rm $(FILE)

install: download
	install -d $(DEST)
	unzip -o -q $(FILE) -d $(DEST)
	cd $(DEST)/setup/chapae; \
	  for item in $$(ls -1 *[0-9][0-9][0-9][0-9].sql | egrep -o '[0-9]{4}.sql$$' | cut -d. -f1 | grep -o '^..' | sort -u); do \
	    cd ../chap$${item}; \
	    ln -sv ../chapae/*$${item}*.sql .; \
	    cd -; \
	  done
	install -m 0755 bin/list $(BIN)/
	cd $(BIN) && for i in can q drill; do ln -svf list $$i; done

uninstall:
	rm -fr $(DEST)
	cd $(BIN) && for i in can q drill; do rm -f $$i; done; rm -f list
