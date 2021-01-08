# -*- coding: utf-8 -*-
# vim: ft=sls

{% if grains['osfinger'] != 'Leap-15' %}
include:
  - .package
  - .service
{% endif %}
