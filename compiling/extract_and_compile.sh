firstvar=$1
secondvar=$2

tar -xf NthPrime.tgz --directory $secondvar

cd "$secondvar"
cd NthPrime

gcc *.c -o NthPrime

./NthPrime $firstvar
