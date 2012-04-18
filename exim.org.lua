-- File: exim.org.lua
-- Zone: exim.org
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = 'exim.org'

-- NS records
-- automatically added - these are just for history
--    .exim.org::a.ns.bytemark.co.uk:21600
--    .exim.org::b.ns.bytemark.co.uk:21600
--    .exim.org::c.ns.bytemark.co.uk:21600

-- IPs we use
local main_ipv4 = '131.111.8.192'
local main_ipv6 = '2001:630:212:8:204:23ff:fed6:b664'

-- Standard TTL
local ttl = 7200

-- Basic A/AAAA records
a_and_aaaa(_a,      main_ipv4, main_ipv6, ttl)
a_and_aaaa('www',   main_ipv4, main_ipv6, ttl)
a_and_aaaa('mail',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('ftp',   main_ipv4, main_ipv6, ttl)
a_and_aaaa('wiki',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('lists', main_ipv4, main_ipv6, ttl)
a_and_aaaa('bugs',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('docs',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('vcs',   main_ipv4, main_ipv6, ttl)
a_and_aaaa('git',   main_ipv4, main_ipv6, ttl)
a_and_aaaa('dev',   main_ipv4, main_ipv6, ttl)
a_and_aaaa('mail',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('mail',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('mail',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('mail',  main_ipv4, main_ipv6, ttl)
a_and_aaaa('mail',  main_ipv4, main_ipv6, ttl)

-- MX records
mx(_a,'tahini.csx.cam.ac.uk', ttl)
mx(_a,'boom.graemef.net', ttl)
--
mx('bugs','tahini.csx.cam.ac.uk', ttl)

-- Mirrors etc - A and a few CNAME records
a(concat('www.us', _a),     '209.58.132.254',  ttl)
a(concat('www.ie', _a),     '193.120.14.243',  ttl)
a(concat('www.fr', _a),     '193.54.153.246',  ttl)
a(concat('www.congo', _a),  '194.7.39.155',    ttl)
a(concat('ftp.de', _a),     '195.211.161.101', ttl)
a(concat('www.de', _a),     '195.211.161.101', ttl)
a(concat('www.tw', _a),     '192.72.81.219',   ttl)
a(concat('www.pl', _a),     '193.219.28.2',    ttl)
cname(concat('www.no', _a), 'spheniscus.uninett.no', ttl)
cname(concat('www.in', _a), 'exim.in.freeos.com',    ttl)

-- end