## puppet-pakiti module

This is the puppet-pakiti module, it configures the pakiti-client cron with the configuration needed for WLCG MW Readiness

Usage 
```puppet
class{pakiti::client:
  site_name => 'CERN-DPM-TESTBED',
  tag_name  => 'MWR',
}
```

### License
ASL 2.0

### Contact
wlcg-mw-readiness-software <wlcg-mw-readiness-software@cern.ch>