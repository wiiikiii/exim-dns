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
local ttl = 28800

-- Basic A/AAAA records

local a_record_names = {
    _a, 'www', 'mail', 'ftp', 'wiki', 'lists', 'bugs',
    'docs', 'vcs', 'git', 'dev', 'www2' }
for i,v in pairs(a_record_names) do
    a_and_aaaa(v,   main_ipv4, main_ipv6,       ttl)
end

-- MX records
mx(_a,              'tahini.csx.cam.ac.uk', 5,  ttl)
mx(_a,              'boom.graemef.net', 15,     ttl)
--
mx('bugs',          'tahini.csx.cam.ac.uk', 5,  ttl)

-- Mirrors etc - A and a few CNAME records
a('www.us',         '209.58.132.254',           ttl)
a('www.ie',         '193.120.14.243',           ttl)
a('www.fr',         '193.54.153.246',           ttl)
a('www.congo',      '194.7.39.155',             ttl)
a('ftp.de',         '195.211.161.101',          ttl)
a('www.de',         '195.211.161.101',          ttl)
a('www.tw',         '192.72.81.219',            ttl)
a('www.pl',         '193.219.28.2',             ttl)
cname('www.no',     'spheniscus.uninett.no',    ttl)
cname('www.in',     'exim.in.freeos.com',       ttl)

-- Delegation of testdns.exim.org for testsuite
ns('testdns',       'nlns.globnix.net',         ttl)
ns('testdns',       'us0ns.globnix.net',        ttl)

-- end