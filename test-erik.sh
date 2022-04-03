

arrNomer=()
echo "Enter the Credit card Number : [save the data with enter key]"
IFS=""
while read Nomer 
do
  arrNomer+=($Nomer) #set all number first before be reverse it
done

echo "Hasil Reverse dengan SED";

IFS=""
for str in ${arrNomer[@]}; do #lets do loop all array 
  echo "${str}" | sed -e 's/\([0-9]\+\) \([0-9]\+\) \([0-9]\+\) \([0-9]\+\)/\4 \3 \2 \1/'
done
