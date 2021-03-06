Installation Guide
==================

How to install the plugin
-------------------------

Please refer to the `Install Fuel Plugins <https://docs.mirantis.com/openstack/fuel/fuel-7.0/user-guide.html#install-plugin>`_ section from the User Guide for installation
of the plugin.  You can also refer to the `CLI command reference for Fuel Plugins <https://docs.mirantis.com/openstack/fuel/fuel-7.0/user-guide.html#fuel-plugins-cli>`_.

#. Copy the plugin file to the Fuel Master node.

   .. code:: bash

       scp fuel-plugin-etckeeper*rpm root@<Fuel Master node IP address>:

#. Install the plugin using the fuel command line:

   .. code:: bash

       ssh root@<Fuel Master node IP address>
       fuel plugins --install fuel-plugin-etckeeper*.rpm

#. Verify that the plugin is installed correctly:

   .. code:: bash

       [root@fuel ~]# fuel plugins
       id | name                  | version | package_version
       ---|-----------------------|---------|----------------
       2  | fuel-plugin-etckeeper | 1.0.0   | 3.0.0
