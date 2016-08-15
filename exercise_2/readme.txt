Application instructions:

1) Clear table contents in postgres:
	a. Log into postgres as user w205:
		- psql --host=localhost --username=w205 --password --dbname=tcount
	b. Clear existing tweetwordcount table:
		- TRUNCATE TABLE tweetwordcount;
	c. Disconnect from postgres:
		- \q

2) Run EX2Tweetwordcount project:
	a. cd /root/EX2Tweetwordcount
	b. sparse run
	c. To quit application, ctrl+c

3) Query for desired information:
	a. python finalresults.py:
		- This will return a list of words in the stream and the number of times each appears
	b. python finalresults.py <word>:
		- This will return the number of times that the <word> appears in the stream
	c. python histogram.py k1 k2:
		- This will return a list of words in the stream with a number of appearances between the k1 and k2 integer arguments 


NOTE: Debugging difficulties:

In attempting to debug postgres and sparse difficulties, I followed the troubleshooting outlined on the ISVC course page (led by James).
I also rebuilt my AMI to ensure it was probably setup with streamparse and other requisite tools. 
Unfortunately I continued to receive an execution error message after some sparse processing, halting the operation before a stream of tweets could be produced. 
This was in contrast to the hello-stream-twitter.py file, which effectively produced a stream of tweets (refer to screenshots for a sample). 
I sought a number of ways to remedy this issue, but ultimately have yet to find the debugging solution. 
However, I believe the query files and topology/spouts/bolts are functional in the right environment.

