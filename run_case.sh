#Get rid of the somewhat excessive debugging info from FreeFem++
export FF_VERBOSITY=0;

case "$1" in
    1)
	echo "Launching test-case 1"
	FreeFem++-nw main.edp --config 1 --resu resu/case1 --binit 1 --btarget 1e1 --cv 1 --tau 1e-2 --l0 0 --gamma .01
	;;
    2)
	echo "Launching test-case 2"
	FreeFem++-nw main.edp --config 2 --resu resu/case2 --l0 0 --binit 1e-1 --btarget 1e1 --cv 1 --tau 1e-2 --gamma .01 --errc 5e-3
	;;
    3)
	echo "Launching test-case 3"
	FreeFem++-nw main.edp --config 3 --resu resu/case3 --binit 0 --btarget 0 --cv 1 --tau 1e-2 --l0 0 --raffinit 5e-2 --gamma .01 --jjmax 30
	;;
    4)
	echo "Launching test-case 4"
	FreeFem++-nw main.edp --config 4 --resu resu/case4 --binit 1e1 --btarget 1e2 --cv 1 --tau 3e-3 --l0 15 --optraff 1 --raffinit 3e-2 --kc -1 --errc 2e-2
	;;
    5)
	echo "Launching test-case 5"
	FreeFem++-nw main.edp --config 5 --resu resu/case5 --binit 1e2 --btarget 1e2 --cv .97 --tau 1e-2 --l0 0 --optraff 0 --raffinit 3e-2 --beta 0 --gamma 1e-2
	;;
    *)
	echo "Usage : $0 {1|2|3|4|5}"
	;;
esac
