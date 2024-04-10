tput clear

rows=$(tput lines)
cols=$(tput cols)

echo "Terminal size: $rows rows x $cols columns"

tput setaf 1
echo "This text is in red color"

tput bold
echo "This text is bold"

tput sgr0

tput cup 10 20
echo "This text is at row 10, column 20"

