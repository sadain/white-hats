#!/usr/bin/python

print 'Content-Type: text/html\n'


print '<html><head><meta http-equiv="refresh" content="3"><style> ::-webkit-scrollbar{display: none;}table{position: absolute;z-index: 2;left: 50%;top: 185%;transform: translate(-50%,-30%);width: 50%;border-collapse: collapse;border-spacing: 0;box-shadow: 0 2px 15px rgba(64,64,64,.7);border-radius: 12px 12px 0 0;overflow:scroll;}td , th{padding: 15px 20px;text-align: center;}tr:first-child td{background-color: #ba68c8;color: #fafafa;font-family: Sans-serif;font-weight: 200;text-transform: uppercase;}tr{width: 100%;background-color: #fafafa;font-family:  sans-serif;}tr:nth-child(even){background-color: #eeeeee;} </style></head><body>'

#print '<h1><center><u>Wifi IDS</u></center></h1>'

import glob

fd = open("data-01.csv", "r")

print '<table>'

for line in fd.readlines():
	if line.find(',') == -1 :
		continue

	try:
		vals = line.split(',')
		if len(vals) > 10:
			print '<tr>' 
			print '<td>' + vals[0] + '</td>'
        		print '<td>' + vals[3] + '</td>'
                        print '<td>' + vals[5] + '</td>'
                        print '<td>' + vals[6] + '</td>'
                        print '<td>' + vals[7] + '</td>'
        		print '<td>' + vals[13] + '</td>'
			print '</tr>'	
	except:
		raise

print '</table>'
print '</body></html>'

