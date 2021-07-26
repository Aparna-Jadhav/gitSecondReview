function roll() {

  # capture parameter
  declare -i DIE_COUNT=$1
  declare -i DIE_SIDES=$2
  declare -i BONUS=$3
  declare -i TOTAL=0
  declare -i COUNT=0
  declare -i ROLL=0
  declare -a rolls
  rollspread="("

  # check for die sides
  if [ ! $DIE_SIDES -gt 0 ]; then
    # default to 6
    DIE_SIDES=6
  fi
  
  while [  $COUNT -lt $DIE_COUNT ]; do
    let ROLL=$[(( $RANDOM % $DIE_SIDES )) + 1]
    rolls=( "${rolls[@]}" "$ROLL" )
    let TOTAL=$[ $ROLL + $TOTAL ]
    let COUNT=$[ $COUNT + 1 ]
  done

  let COUNT=0
  for i in "${rolls[@]}"
  do
    if [ $COUNT = 0 ]; then
      rollspread="$rollspread$i"
      let COUNT=$[ $COUNT + 1 ]
    else
      rollspread="$rollspread $i"
    fi
  done


  # echo to screen
  echo -e "$DIE_COUNT \bd$DIE_SIDES+$BONUS"
  echo -e "$rollspread) $TOTAL (+$BONUS) =" $[ $TOTAL  + $BONUS ]

}
