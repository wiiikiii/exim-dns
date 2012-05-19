--     
-- File: templates.lua
--

function google_app(domain, ttl)
  local ttl = ttl or 28800
  
  -- Configure mail exchangers
  mx(domain, 'aspmx.l.google.com',      10, ttl)
  mx(domain, 'alt1.aspmx.l.google.com', 20, ttl)
  mx(domain, 'alt2.aspmx.l.google.com', 20, ttl)
  mx(domain, 'aspmx2.googlemail.com',   30, ttl)
  mx(domain, 'aspmx3.googlemail.com',   30, ttl)
  mx(domain, 'aspmx4.googlemail.com',   30, ttl)
  mx(domain, 'aspmx5.googlemail.com',   30, ttl)
  
  -- Additional Google Apps records
  cname(concat('calendar', domain), 'ghs.google.com', ttl)
  cname(concat('docs',     domain), 'ghs.google.com', ttl)
  cname(concat('mail',     domain), 'ghs.google.com', ttl)
  cname(concat('sites',    domain), 'ghs.google.com', ttl)
  cname(concat('start',    domain), 'ghs.google.com', ttl)
  
  -- Configure SPF
  -- txt(domain, 'v=spf1 a mx include:_spf.google.com ~all', ttl)
end



function a_and_aaaa(domain, ipv4, ipv6, ttl)
  local ttl = ttl or 28800
  
  a(domain, ipv4, ttl)
  aaaa(domain, ipv6, ttl)
end



function values (t)
    local i = 0
    return function () i = i + 1; return t[i]  end
end
