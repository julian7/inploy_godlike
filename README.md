# Inploy_godlike
### Manage deployed services with god

This tiny gem adds support for another server, [god](http://god.rubyforge.org/), to manage restarts for your application. Features:

- it runs separate god instances for every application (choose your app names wisely)
- it loads all configuration files from config/*.god
- it starts or restarts monitoring process on every deployment
- ideal for local [rvm](http://rvm.beginrescueend.com/) configurations, where every user uses their own ruby instances

## Usage

in `config/deploy.rb`:

    deploy.server = :godlike
    deploy.god_group = 'groupname'

where 'groupname' is what you have set in all of your `*.god` files:

    God.watch do |w|
      ...
      w.group = 'groupname'
      ...
    end

## CLI usage after deployment:

Specify the group name every time you call `god`, like this:

    $ god -p <groupname> [commands and parameters]

Suggested `.rvmrc` settings:

`~/.rvmrc`:

    unalias god 2>/dev/null

`<application dir>/.rvmrc`:

    alias god='god -p <groupname>'

Copyright &copy; 2010 Balazs Nagy, released under the MIT license