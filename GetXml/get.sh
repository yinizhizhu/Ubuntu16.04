files= ls -U /usr/share/backgrounds | grep -v contest
last_file='empty'

echo "<background>"
echo "  <starttime>"
echo "    <year>2017</year>"
echo "    <month>09</month>"
echo "    <day>06</day>"
echo "    <hour>00</hour>"
echo "    <minute>00</minute>"
echo "    <second>00</second>"
echo "  </starttime>"

for current_file in $files
do
	if [[ $last_file == 'empty' ]]
	then
		last_file=$current_file
		echo "  <static>"
		echo "    <duration>300.0</duration>"
		echo "    <file>/usr/share/backgrounds/$last_file</file>"
		echo "  </static>"
	else
		echo "  <transition>"
		echo "    <duration>5.0</duration>"
		echo "    <from>/usr/share/backgrounds/$last_file</from>"
		echo "    <to>/usr/share/backgrounds/$current_file</to>"
		echo "  </transition>"
		echo "  <static>"
		echo "    <duration>300.0</duration>"
		echo "    <file>/usr/share/backgrounds/$current_file</file>"
		echo "  </static>"
		last_file=$current_file
	fi
done
echo '</background>'


<background>
  <starttime>
    <year>2017</year>
    <month>09</month>
    <day>06</day>
    <hour>00</hour>
    <minute>00</minute>
    <second>00</second>
  </starttime>
</background>

03207_aragolighthouse_3840x2400.jpg