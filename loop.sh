for ((i=1; i<100; i++))
do
    if (($i%2)); then
        echo $i
    fi
done

for i in {1..50}
do
    echo $i
done


for i in {1..102}
do
    echo "=A$i&B$i"
done
