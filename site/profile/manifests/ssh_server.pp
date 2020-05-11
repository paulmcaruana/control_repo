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
    user   => 'root',
    type   => 'ssh-rsa',
    key    => ' AAAAB3NzaC1yc2EAAAADAQABAAABAQCwpIE1CAQPmhXc0jjvglQLuz0B4kIzvixKHU8rbgDmXIWwLpeep8YExSUea1oPkJcJgzyYAcRyS7dKUQat2Dxl7RQzaIvLTK0ACc4Lk1L995ogiBq2QqFlxCIMGzNRl6dc5s+kiVSfJ4YIpHUYRVL1e5yexCJdt+xf2nOSdvZpzvMfTCqshGCdeF5CugtgZxeYSKaCOa5SpPRXtBZcwc1l2e1LnF42cyddESijfOD0RZ8DCzafJDEa0Wx1xC2/c1/igBEl37Emo4cY+T1/vF3MVHLt6ATgc3pilkzWidKmOGaOrJNJJYxiC7HizD7G21F0P/Hviu4xDLgGbs9RYnbT',
  }  
}
