class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  service { 'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user => 'root',
          type => 'ssh-rsa',
          key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDppb1m2PmPg3jD26VGM9xhadQyJBil3igONMUXXu2jxUk0o+ZxtTWifMN+1MwQ8RcaGS1ftZwRGnjjr/FVvg0y+9mMAjmBavJA1lOQHCSQCuPaAomaVKTBDEhnUHKYibxbr7OOw7ErctMaHCTrS2f8XEc6SAeLsAT1BBRfrry1Soe5ibgHDO+KUbF+/cFangQ/aToUbnFosZpE73lQw212vDg0dtvgCO6JdHU7X5FsHMEealRUn34sd1xtZZAZyI6XLWEWzM9uvj0s+YbLhEoY+KNe4q5uolgX4PHdigyE4602GJ6jEdhAx8G0zSwG3yhTTbrL8scxXsbc1GE0ZFtv root@master.puppet.vm',
  }
}
