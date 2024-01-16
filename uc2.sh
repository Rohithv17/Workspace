declare -A singletCount
totalFlips=1000

for (( i=0; i<$totalFlips; i++ )); do
  result=$(( RANDOM % 2 ))
  (( singletCount[result ? "Tails" : "Heads"]++ ))
done

headsPercentage=$(( (singletCount["Heads"] * 100) / totalFlips ))
tailsPercentage=$(( 100 - headsPercentage ))

echo "Singlet Combination Results:"
echo "Heads: $headsPercentage%"
echo "Tails: $tailsPercentage%"
