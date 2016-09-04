# Change log

## Version 0.1.4 (Sept 04, 2016)

Minor enhancements:
  * Extended support for assets precompilation
    * Added parameter #assets_precompile to turn on/off assets precompilation
    * Checked rails version (>=3.1) before assets precompilation starts

## Version 0.1.3 (Sept 01, 2016)

Minor enhancements:
  * Added RAILS_ENV setup to the shell command prefix

## Version 0.1.2 (Sept 01, 2016)

Bug fixes:
  * Moved assets precompilation after source publication and gem bundling
  * Bump up gem dependency of Luban to version 0.7.9

## Version 0.1.1 (Aug 30, 2016)

New features:
  * Changed linked_dirs/linked_files setup in Publisher
    * As a result, bump up the gem dependency of Luban to version 0.7.5 and
    * bump up the gem dependency of Rack to version 0.2.4

Bug fixes:
  * Fixed asset precompilation
    * Precompiled assets only when publishing application
    * Composed the correct RAILS_ENV for asset compilation

## Version 0.1.0 (Aug 04, 2016)

New features:
  * Initialized Luban deployment application for Rails
