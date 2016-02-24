.. _user_guide:

User Guide
==========

.. _plugin_configuration:

Plugin configuration
--------------------

#. `Create a new environment <https://docs.mirantis.com/openstack/fuel/fuel-7.0/user-guide.html#launch-wizard-to-create-new-environment>`_
   with the Fuel UI wizard.  At the moment only the Ubuntu distribution is supported.

#. Click on the Settings tab of the Fuel web UI.

   For 7.0, select the "etckeeper" tab, enable the plugin by clicking on the
   "etckeeper" checkbox:

   .. image:: _static/7.0-settings.png
      :alt: A screenshot of the Etckeeper settings UI for 7.0
      :scale: 90%

   For 8.0, select the "Other" tab, enable the plugin by clicking on the
   "etckeeper" checkbox:

   .. image:: _static/8.0-settings.png
      :alt: A screenshot of the Etckeeper settings UI for 8.0
      :scale: 90%



#. (Optional) If you wish to use a Version Control system (VCS) other than git,
   you can can select an alternate VCS that will be used for the etckeeper
   backend.

#. Click *Save Settings* at the bottom of the page to save the configuration parameters.

#. Switch to the *Nodes* tab.

#. Select the *Networks* tab, scroll to the bottom, and `Verify Networks <https://docs.mirantis.com/openstack/fuel/fuel-7.0/user-guide.html#verify-networks>`_.

#. Then finally, `Deploy Changes <https://docs.mirantis.com/openstack/fuel/fuel-7.0/user-guide.html#deploy-changes>`_.

.. _plugin_install_verification:

Plugin Install Verification
---------------------------

You can log into the deployed nodes and check the status of etckeeper by running
the following commands to check the current VCS status for /etc and view the
commit log from the underlying VCS.

.. _etckeeper-status:

.. code:: bash

    root@node-1:~# etckeeper vcs status
    On branch master
    nothing to commit, working directory clean
    root@node-1:~#

.. _etckeeper-log:

.. code:: bash

    root@node-1:~# etckeeper vcs log
    commit a981e55c31508078fdf2883572b264d3422f7f42
    Author: root <root@nailgun.domain.local>
    Date:   Wed Feb 24 01:09:55 2016 +0000

        committing changes in /etc after puppet catalog run

    commit bc638d4e662c94c235a58f9c9cded84999175c4d
    Author: root <root@nailgun.domain.local>
    Date:   Wed Feb 24 01:09:31 2016 +0000

        committing changes in /etc after puppet catalog run

    commit b9b13795e98f4c507c7ca082830d45912239dbfb
    Author: root <root@nailgun.domain.local>
    Date:   Wed Feb 24 01:08:42 2016 +0000

        committing changes in /etc after puppet catalog run

    commit d551cbab7e229a4b6bbc579b71eeb813f682655f
    Author: root <root@nailgun.domain.local>
    Date:   Wed Feb 24 01:08:10 2016 +0000

        committing changes in /etc after puppet catalog run
    root@node-1:~#


Using Etckeeper
---------------

For instructions on using etckeeper, please see the `official documentation <http://etckeeper.branchable.com/>`_.
