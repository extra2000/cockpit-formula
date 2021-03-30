# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import COCKPIT with context %}

firewalld:
  service.running:
    - enable: true

cockpit-allow-on-public:
  firewalld.present:
    - name: public
    - services:
      - cockpit
