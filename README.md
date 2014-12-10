GMOD_server
===========

A standard gmod docker server compatible with the gamekick project

This is based off of the steam_base repo and contains

* A metadata.json file, showing actions, provided info, and configuration parameters
* A run script generated from a template
* A steam update script
* A script to write the configuration to the requried gmod config files (server.cfg)

This repo uses confd to write configuration files based on etcd values
