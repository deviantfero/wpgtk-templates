

#	Front
#	default color: 5294e2 for Promix
oldfront=#593923
newfront=#404453


sed -i "s/#5294e2/$oldfront/g" "$1"
sed -i "s/$oldfront/$newfront/g" "$1"


