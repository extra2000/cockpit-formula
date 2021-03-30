# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import COCKPIT with context %}

cockpit-and-addons-present:
  pkg.installed:
    - pkgs: {{ COCKPIT.packages }}

firewalld-present:
  pkg.installed:
    - name: {{ COCKPIT.firewall.package }}

{% if COCKPIT.dashboard.enabled %}
cockpit-dashboard-present:
  pkg.installed:
    - pkgs: {{ COCKPIT.dashboard.packages }}
{% endif %}

{% if COCKPIT.machines.enabled %}
cockpit-machines-present:
  pkg.installed:
    - pkgs: {{ COCKPIT.machines.packages }}
{% endif %}
