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

file { "/srv/symphony/.htaccess":
	ensure => 'file',
	content => '### Symphony 2.3.x ###
Options +FollowSymlinks -Indexes

<IfModule !mod_rewrite.c>
	SetEnv HTTP_MOD_REWRITE No
</IfModule>

<IfModule mod_rewrite.c>

	RewriteEngine on
	RewriteBase /

	### SECURITY - Protect crucial files
	RewriteRule ^manifest/(.*)$ - [F]
	RewriteRule ^workspace/(pages|utilities)/(.*)\.xsl$ - [F]
	RewriteRule ^(.*)\.sql$ - [F]
	RewriteRule (^|/)\. - [F]

	### DO NOT APPLY RULES WHEN REQUESTING "favicon.ico"
	RewriteCond %{REQUEST_FILENAME} favicon.ico [NC]
	RewriteRule .* - [S=14]

	### CHECK FOR TRAILING SLASH - Will ignore files
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteCond %{REQUEST_URI} !/$
	RewriteCond %{REQUEST_URI} !(.*)/$
	RewriteRule ^(.*)$ $1/ [L,R=301]

	### URL Correction
	RewriteRule ^(symphony/)?index.php(/.*/?) $1$2 [NC]

	### ADMIN REWRITE
	RewriteRule ^symphony\/?$ index.php?mode=administration&%{QUERY_STRING} [NC,L]

	RewriteCond %{REQUEST_FILENAME} !-d
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteRule ^symphony(\/(.*\/?))?$ index.php?symphony-page=$1&mode=administration&%{QUERY_STRING}	[NC,L]

	### FRONTEND REWRITE - Will ignore files and folders
	RewriteCond %{REQUEST_FILENAME} !-d
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteRule ^(.*\/?)$ index.php?symphony-page=$1&%{QUERY_STRING}	[L]

</IfModule>
######
',
}
