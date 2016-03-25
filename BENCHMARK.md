```
libre (master) $ ab -n 1000 -c 10 http://0.0.0.0:3000/ciudades
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 0.0.0.0 (be patient)
apr_socket_recv: Connection refused (61)
libre (master) $ ab -n 1000 -c 10 http://0.0.0.0:3000/ciudades
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 0.0.0.0 (be patient)
apr_socket_recv: Connection refused (61)
libre (master) $ ab -n 1000 -c 10 http://0.0.0.0:9292/ciudades
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 0.0.0.0 (be patient)
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
Server Hostname:        0.0.0.0
Server Port:            9292

Document Path:          /ciudades
Document Length:        395 bytes

Concurrency Level:      10
Time taken for tests:   4.068 seconds
Complete requests:      1000
Failed requests:        0
Write errors:           0
Total transferred:      817000 bytes
HTML transferred:       395000 bytes
Requests per second:    245.82 [#/sec] (mean)
Time per request:       40.680 [ms] (mean)
Time per request:       4.068 [ms] (mean, across all concurrent requests)
Transfer rate:          196.13 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.4      0      10
Processing:    14   40  10.0     39      94
Waiting:       14   37   9.5     36      87
Total:         14   40  10.0     39      94

Percentage of the requests served within a certain time (ms)
  50%     39
  66%     42
  75%     45
  80%     47
  90%     53
  95%     60
  98%     69
  99%     77
 100%     94 (longest request)
```
