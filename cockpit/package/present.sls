# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import COCKPIT with context %}

cockpit-and-addons-present:
  pkg.installed:
    - pkgs: {{ COCKPIT.packages }}

{% if COCKPIT.dashboard.enabled %}
cockpit-dashboard-present:
  pkg.installed:
    - pkgs: {{ COCKPIT.dashboard.packages }}
{% endif %}
