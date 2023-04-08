# REST MVP

This is some example code that shows how little code is needed to create a basic API using Catalyst.

## To run
> cd rest_mvp
> perl -I lib script/rest_mvp_server.pl -d -r

## To test
I'm using a command line tool that comes with common with LWP modules, but Postman or whatever else should work fine as well.
> GET http://0:3000/api/server_time
* {"now":"Sat Apr  8 13:48:42 2023"}

> POST http://0:3000/api/cap -c 'application/json'
> { "cool story": "bro" }
* {"cool story":"bro"}
