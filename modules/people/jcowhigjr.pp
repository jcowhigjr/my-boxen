```puppet
class people::jcowhigjr {
  include emacs   # requires emacs module in Puppetfile
  include sparrow # requires sparrow module in Puppetfile

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  repository { $dotfiles:
    source  => 'jbarnette/dotfiles',
    require => File[$my]
  }
}
```