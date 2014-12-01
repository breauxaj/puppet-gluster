# Class: gluster
#
# This class installs the gluster package
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Installs the gluster package
#
# Requires:
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'gluster':
#      ensure => 'latest'
#    }
#
#  To remove the installation, use:
#
#    class { 'gluster':
#      ensure => 'absent'
#    }
#
class gluster (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'glusterfs-server',
  }

  package { $required: ensure => $ensure }

}
