#!/bin/bash

department=$1
course=$2
section=$3
cell=$4
provider=$5

course_url="https://courses.students.ubc.ca/cs/main?pname=subjarea&tname=subjareas&req=5&dept=$department&course=$course&section=$section"
look_for="Total Seats Remaining:</td><td align=left><b>0<"

text_url="http://www.textcanada.ca"
text_message="Course+$department+$course+has+available+seats+now"
text_data="number=$cell&message=$text_message&prov=$provider&amount=1&remLen=110&submit=Send+Your+Message%21"

found_seat="Found empty seat in course $department $course."
sent_text="A text has been sent to your number $cell."

if [ "`wget -O - "$course_url" 2>/dev/null | grep "$look_for"`" == "" ]; then
    wget "$text_url" --post-data="$text_data" -O - >/dev/null 2>&1
    echo $found_seat
    echo $sent_text
fi
