class pakiti::client::install {
  # package installation
  package { 'pakiti-client':
    ensure => 'installed',
  }
}
