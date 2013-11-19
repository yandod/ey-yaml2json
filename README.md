# what is this
This is custom cookbook for Engine Yard Cloud.
Convert yaml files generated from system into JSON.

    $ php -r "var_dump(json_decode(file_get_contents('/data/candycane/shared/config/memcached.json'),true));"
string(358) "{"defaults":{"ttl":1800,"readonly":false,"urlencode":false,"c_threshold":10000,"compression":true,"debug":false,"namespace":"","sessions":true,"fragments":true,"memory":128,"servers":["ip-10-132-70-223.ap-northeast-1.compute.internal:11211"],"benchmarking":true,"raise_errors":true,"fast_hash":false,"fastest_hash":false},"production":{"benchmarking":false}}"