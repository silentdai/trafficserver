LUAJITOPT=""
if [ $(uname) == "Darwin" ]; then
#packages
brew install automake autoconf libtool pcre openssl
brew link --force openssl
LUAJITOPT="--disable-luajit"
fi
#config && make
autoreconf -if && ./configure --prefix=/opt/ats-dyc --enable-debug --enable-cppapi ${LUAJITOPT} && make


