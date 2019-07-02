#!/bin/bash
# $1 prv argument i toe e pateka od kade da se proveri pa se rekurzivno
# $2 vtor argument i toa file so kakvo ime da se vnesi finalnoto baranjle
if [ $# -lt 2 ];then
	echo "PLease enter more then 2 things"
	exit 1;
fi

from=`ls $1 | grep "testiranjeee"` # SI PISIS USLOVOT, IMPORTANT ako primer SAKASH DA IMASH BUKVA ILI BROJ MULTIPLE TIMES ----
for i in $from				# -----> grep "[0-9]\{5\}" , 5 broja ke imash
do
if [ -d $i ]
then
	cd $i
	echo $PWD
	~/rekurzijafaks.sh $PWD $2 	#Treba da tie e vo HOME directorium za da skriptata raboti, dokolku scriptata ti e na drugo mesto smeni pateka
else
	echo "Ova e reshenieto" >> ~/$2
	cat $i >> ~/$2
fi
done
cd ~ 	# posle se vrati se vo svojot direktorium                                                                                                                                             
