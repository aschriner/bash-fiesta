arg=$1

case "$arg" in
    [1-3]) output="Texas" ;;
    [4-9]) output="banana" ;;
    [20]*) output="That's a big number." ;;
    'cat') output="dog" ;;
    'crossbow') output="You'll shoot your eye out" ;;
    'foo'*) output="Mmmm, all I heard was food" ;;
    *) output="I don't understand." ;;
esac

echo $output
