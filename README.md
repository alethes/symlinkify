Symlinkify
==========

A simple Linux Symlink Manager built in node.js.

Installation
============

```
npm install -g symlinkify
```

Then, run: `symlinkify link_file.yaml` to create symlinks. Sample configuration file:

```
/source_dir:
    /link_dir:
        linked_file:        link_name
        linked_file2:       link2_name
    /link_dir2:
        linked_file:        link_name
        linked_file2:       link2_name
/source_dir2:
    /link_dir:
        linked_file:        link_name
        linked_file2:       link2_name
    /link_dir2:
        linked_file:        link_name
        linked_file2:       link2_name
```

`symlinkify` without arguments will attempt to use `links.yaml` from the package's root directory.