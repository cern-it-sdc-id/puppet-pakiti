class pakiti::client::config(
  $conf_file_location = $pakiti::client::params::conf_file_location,
  $site_name = $pakiti::client::params::site_name, 
  $source_conf_file = $pakiti::client::params::source_conf_file,
  $tag_name = $pakiti::client::params::tag_name,
) inherits pakiti::client::params {
  # script configuration
  file { $conf_file_location:
    mode   => '0644',
    source => $source_conf_file,
  }
  # cron definition
  cron { "pakiti-client-wlcg-${tag_name}":
    ensure  => 'present',
    command => "pakiti-client --conf ${conf_file_location} --site ${site_name} --rndsleep 60 --tag ${tag_name}",
    user    => 'nobody',
    hour    => fqdn_rand(24,'pakiti'),
    minute  => fqdn_rand(60,'pakiti'),
  }
}
