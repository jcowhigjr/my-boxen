```puppet
class people::jcowhigjr {
  include emacs   # requires emacs module in Puppetfile
  include sparrow # requires sparrow module in Puppetfile
  	include watts
	include vlc 
	include things 
	include spotify 
	include skype 
	include propane 
	include istatmenus3 
	include flux 
	include airfoil 
	include istatmenus4

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  repository { $dotfiles:
    source  => 'jcowhigjr/dotfiles',
    require => File[$my]
  }
}
```