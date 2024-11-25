# ensure go has access to brew installed libs
export CGO_LDFLAGS="-L$(brew --prefix)/lib";
export CGO_CFLAGS="-I$(brew --prefix)/include"
