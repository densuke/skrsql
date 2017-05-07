URL=https://flairlink.jp/download/code-ssql.zip
FILE=$(shell basename $(URL))
DEST=/usr/local/share/ssql
BIN=/usr/local/bin

all: setup

setup: check download
	@echo "check OK, plase run 'make install'"

TESTDB=testdb-$$$$

check:
	@/bin/echo -n "check PATH..." ; which psql >&/dev/null || echo "[FATAL] PostgreSQL not found in PATH, please set and retry."
	@echo ""
	@if createdb $(TESTDB) </dev/null; then dropdb $(TESTDB); else echo "[FATAL] Unable to create DB without password, please check and retry."; fi

download: $(FILE)

$(FILE):
	if [ ! -f $(shell basename $(URL)) ]; then curl $(URL) > $(shell basename $(URL)); fi

clean:
	rm $(FILE)

install: download
	install -d $(DEST)
	unzip -o -q $(FILE) -d $(DEST)
	install -m 0755 bin/list $(BIN)/
	cd $(BIN) && for i in can q qa qb qc; do ln -svf list $$i; done

uninstall:
	rm -fr $(DEST)
	cd $(BIN) && for i in can q qa qb qc; do rm -f $$i; done; rm -f list 
