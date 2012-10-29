# puppet-scponly

puppet-scponly is a puppet module to manage chrooted scponly users.

## How to use

A user with default settings:

```
  scponly::user { 'username': }
```

This will create the folder `/home/username` if it's not already there.
The contents will basically look like this:


with only the `incoming` folder being writable by the user.

With all settings customized:

```
  scponly::user { 'username': 
    homedir_prefix = '/opt',
    writable_dir   = 'put_files_here'

  }
```

This will create the folder `/opt/username` if it's not already there.
The contents will basically look identical to the above example, but
instead of the `incoming` directory there will be a `put_files_here` directory.
