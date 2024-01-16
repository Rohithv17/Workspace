

declare -A doubletCount
totalFlips=1000

for (( i=0; i<$totalFlips; i++ )); do
  result1=$(( RANDOM % 2 ))
  result2=$(( RANDOM % 2 ))
  
  case "$result1$result2" in
    00) (( doubletCount["HH"]++ ));;
    01) (( doubletCount["HT"]++ ));;
    10) (( doubletCount["TH"]++ ));;
    11) (( doubletCount["TT"]++ ));;
  esac
done

for combination in HH HT TH TT; do
  percentage=$(( (doubletCount["$combination"] * 100) / totalFlips ))
  echo "$combination: $percentage%"
done
