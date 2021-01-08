# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import COCKPIT with context %}

{% for srv in COCKPIT.services %}
{{ srv }}:
  service.running:
    - enable: true
{% endfor %}
