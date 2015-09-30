class pakiti::client (
  $site_name = undef,
  $tag_name = undef,
) inherits pakiti::client::params {

  Class[Pakiti::Client::Install] -> Class[Pakiti::Client::Config]

  if $site_name == undef { 
    fail("'site_name' not defined") 
  }	 
  if $tag_name == undef {
    fail("'tag_name' not defined")
  }

  class{"pakiti::client::install":}
  class{"pakiti::client::config":
	tag_name => $tag_name,
	site_name => $site_name,
  }

}
