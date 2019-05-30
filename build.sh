OLDDIR=$PWD
OUTDIR=$PWD/release
echo $OUTDIR
mkdir -p $OUTDIR
cd code/libpcap
./configure --prefix=$OUTDIR
make clean
make 
make install

cd $OLDDIR
cd code/tcpdump
./configure --prefix=$OUTDIR
make clean
make
make install
