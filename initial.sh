#!/bin/bash

course_url="https://courses.students.ubc.ca/cs/main?pname=subjarea&tname=subjareas&req=5&dept=$department&course=$course&section=$section"
look_for="Total Seats Remaining:</td><td align=left><b>0<"

text_url="http://www.textcanada.ca"
text_message="Course+$department+$course+has+available+seats+now"
text_data= "number=$cell&message=$text_message&prov=5&amount=1&remLen=110&submit=Send+Your+Message%21"

found_seat="Found empty seat in course $department $course."
sent_text="A text has been sent to your number $cell."
