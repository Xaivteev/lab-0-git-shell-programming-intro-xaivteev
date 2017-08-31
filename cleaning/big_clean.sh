tararc=$1
scratchdir=$2
tarname=`echo "$tararc" | cut -d'.' -f1`

here=$(pwd)


tar -xf $tararc --directory $scratchdir

cd $scratchdir
cd $tarname

for i in *
do
    if grep -q "DELETE ME!" $i
    then
	rm $i
    fi   
done

cd ..

tar -zcf "cleaned_$tararc" $tarname

mv "cleaned_$tararc" $here
