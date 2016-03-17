libre (master) $ ab -n 1000 -c 10 http://localhost:9292/ciudades
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        WEBrick/1.3.1
Server Hostname:        localhost
Server Port:            9292

Document Path:          /ciudades
Document Length:        553 bytes

Concurrency Level:      10
Time taken for tests:   6.277 seconds
Complete requests:      1000
Failed requests:        0
Write errors:           0
Total transferred:      975000 bytes
HTML transferred:       553000 bytes
Requests per second:    159.30 [#/sec] (mean)
Time per request:       62.773 [ms] (mean)
Time per request:       6.277 [ms] (mean, across all concurrent requests)
Transfer rate:          151.68 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       3
Processing:    26   62  17.2     60     167
Waiting:       23   59  16.4     56     132
Total:         26   63  17.2     60     167

Percentage of the requests served within a certain time (ms)
  50%     60
  66%     65
  75%     71
  80%     73
  90%     83
  95%     95
  98%    112
  99%    127
 100%    167 (longest request)
