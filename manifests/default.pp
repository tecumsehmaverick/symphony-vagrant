# Symphony-specifics, mount the folders that contain our configuration. We do
# it this way because Symphony is added as a Git submodule and so it can't
# contain anything but the pristine state. Mounting the configuration folers
# allows us to save the configuration folders elsewhere.
file { "/srv/symphony/workspace":
    ensure => directory,
}
mount { '/srv/symphony/workspace':
	ensure => 'mounted',
	device => '/vagrant/assets/workspace',
	fstype => 'none',
	options => 'rw,bind',
}

file { "/srv/symphony/manifest":
    ensure => directory,
}
mount { '/srv/symphony/manifest':
	ensure => 'mounted',
	device => '/vagrant/assets/manifest',
	fstype => 'none',
	options => 'rw,bind',
}
