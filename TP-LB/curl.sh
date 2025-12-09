nginx1=0
nginx2=0

N=500

for ((i=1;i<=N;i++)); do
    response=$(curl -s localhost:83)

    if [[ "$response" == *"Hello 1"* ]]; then
        ((nginx1++))
    elif [[ "$response" == *"Hello 2"* ]]; then
        ((nginx2++))
    fi
done

echo "Répartition des réponses sur $N requêtes :"
echo "nginx1 : $nginx1"
echo "nginx2 : $nginx2"

p1=$((nginx1 * 100 / N))
p2=$((nginx2 * 100 / N))
echo "Pourcentage : nginx1 = $p1%, nginx2 = $p2%"