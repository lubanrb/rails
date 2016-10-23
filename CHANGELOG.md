# Change log

## Version 0.1.10 (Oct 23, 2016)

Minor enhancements:
  * Cleaned up the design and implementation of Rails app parameters in a deployment project
    * As a result, bump up gem dependency on Luban to version 0.9.10
    * As a result, bump up gem dependency on Rack to version 0.2.14

## Version 0.1.9 (Oct 19, 2016)

Minor enhancements:
  * Utilized new parameters, #logrotate_max_age, #logrotate_count, from Luban to unify logrotate setup
  * Bump up gem dependency of Luban to version 0.9.8
  * Bump up gem dependency of luban-rack to version 0.2.13

## Version 0.1.8 (Sept 28, 2016)

Minor enhancements:
  * Updated logrotate configuration
  * Bump up gem dependency of Luban to version 0.9.0

## Version 0.1.7 (Sept 27, 2016)

Minor enhancements:
  * Skipped asset compilation if no source code updates
  * Updated gem dependency on luban-rack to 0.2.8

## Version 0.1.6 (Sept 19, 2016)

Minor enhancements:
  * Added logrotate configuration template for Rails
  * Set up environment variables for RAILS_ENV in envrc by default
  * Refactored the way of composing shell commands
    * As a result, bumped up the gem dependency on Luban to version 0.8.0 and
    * Bumped up the gem dependency on Luban::Rack to version 0.2.7


## Version 0.1.5 (Sept 05, 2016)

Minor enhancements:
  * Added general database configuration template for Rails 4.0 or earlier

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
