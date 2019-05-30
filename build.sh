OLDDIR=$PWD
OUTDIR=$PWD/release
echo $OUTDIR
mkdir -p $OUTDIR
cd libpcap
./configure --prefix=$OUTDIR
make clean
make 
make install

cd $OLDDIR
cd tcpdump
./configure --prefix=$OUTDIR
make clean
make
make install
