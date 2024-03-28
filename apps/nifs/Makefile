all: priv/nifs.so

priv/nifs.so: src/nifs.c
	cc -fPIC -I$(ERTS_INCLUDE_DIR) -dynamiclib -undefined dynamic_lookup -o priv/nifs.so src/nifs.c

clean:
	rm -f priv/nifs.so	