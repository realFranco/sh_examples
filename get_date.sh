# Check dates using conditionals

# date_v=$(date)
day=($(date))
day=${day[0]}

echo $day

if [ "$day" = "sáb" ]; then
    echo "day"
else
    echo "not day"
fi

val=1

if [[ $(date) == *"sab"* ]]; then
    echo "Hoy parece ser un día malo"
    val=2
else 
    if [[ $(date) == *"b"* ]] || [[ $(date) == *"sá"* ]]; then
        echo "Hoy parece sábado."
        val=3
    fi
fi

dt=($(date))
hour=${dt[3]}

echo "out_$hour.json"