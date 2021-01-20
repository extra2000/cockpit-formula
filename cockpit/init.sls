# -*- coding: utf-8 -*-
# vim: ft=sls

## NOTE: Cannot use grains['osfinger'] because 'osfinger` is not available on Arch Linux. See https://github.com/saltstack/salt/issues/54344.
{% if salt['grains.get']('osfinger') != 'Leap-15' %}
include:
  - .package
  - .service
{% endif %}
