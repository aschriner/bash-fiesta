arg=$1

case "$arg" in
'1') output="Texas" ;;
'cat') output="dog" ;;
'crossbow') output="You'll shoot your eye out" ;;
'foo'*) output="Mmmm, all I heard was food" ;;
*) output="I don't understand." ;;
esac

echo $output
