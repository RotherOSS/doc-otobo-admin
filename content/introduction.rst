Introduction
============

OTOBO is an open source ticket request system with many features to manage customer telephone calls and emails. It is distributed under the GNU General Public License (GPL) and tested on various Linux platforms. Do you receive many emails and want to answer them with a team of agents?


About This Manual
-----------------

This manual is intended for use by OTOBO administrators. The chapters describe the administration of the OTOBO software. The administrator interface is available in the *Admin* menu item of the main menu, when you logged in as an administrator. Administrators are users, who are member of the *admin* group.

.. figure:: administration/images/admin-interface.png
   :alt: Administrator Interface

   Administrator Interface

The administrator interface contains several modules collected into groups. Use the filter box in the left sidebar to find a particular module by just typing the name to filter.

This manual shows the configuration possibilities needed to solve common problems. The chapters:

1. Identify a typical use-case for the administrator, to aid in orientation, and explain **what** OTOBO does to provide a solution (**warranty**).
2. Direct you **how** to configure OTOBO to fit your use-case (**utility**).

The chapters are the same as the modules in the administrator interface. The order of the chapters are also the same as they are displayed alphabetically in the (English) administrator interface. However, the steps to do to configure a fresh new OTOBO installation is different from this order. We recommend to configure OTOBO to do the steps as explained below.


Getting Started
---------------

.. note::

   The installation of OTOBO is explained in a separate `Installation Guide <https://doc.otobo.org/manual/installation/10.1/en/content/index.html>`__. To install OTOBO or upgrade OTOBO from a previous version, follow the steps described there.

After the installation of OTOBO is finished, you can login to the system with user ``root@localhost`` and using the generated password.

A fresh new OTOBO installation contains only the default settings. You need to customize your system to work properly and meet your needs.

First, you need to check some :doc:`administration/system-configuration` and modify the values, if needed. ``FQDN``, ``SystemID`` and ``SendmailModule`` are the most important. Defining ``TimeWorkingHours`` and ``TimeVacationDays`` are also needed to calculate the escalation times correctly in OTOBO.

Then, open the :doc:`communication-notifications/postmaster-mail-accounts` module to add email addresses used by the system. For sending email, you can add more :doc:`communication-notifications/email-addresses`.

To improve the security, :doc:`communication-notifications/pgp-keys` or :doc:`communication-notifications/s-mime-certificates` can be used for encryption of emails.

Let's continue with users, but you might need to add some :doc:`users-groups-roles/groups` and/or :doc:`users-groups-roles/roles` to the system first. It is recommended to create new groups for each main queues. There are some groups in your OTOBO, but no roles are defined by default. You can add roles, if needed, and you can set the :doc:`users-groups-roles/roles-groups` relations.

The next step is to add :doc:`users-groups-roles/agents` to the system and set the :doc:`users-groups-roles/agents-groups` and/or :doc:`users-groups-roles/agents-roles` relations.

Now you can add :doc:`users-groups-roles/customers` and :doc:`users-groups-roles/customer-users`. Customers are companies and customer users are the employees of the company.

.. note::

   Both agents and customer users can log in using Active Directory or LDAP for authentication. In these cases doesn't need to add users manually.

Like for agents, customers users can also assign to groups using the :doc:`users-groups-roles/customer-users-groups` management screen. Similarly, :doc:`users-groups-roles/customer-users-customers` relations can also be set.

Your OTOBO installation already contains a standard salutation and a standard signature, but you might need to edit them or create new :doc:`ticket-settings/salutations` and :doc:`ticket-settings/signatures`. Queues can not be created without salutations and signatures, and only one salutation and signature can be assigned to a queue.

After system addresses, salutations, signatures, groups are set, you can continue the setup with :doc:`ticket-settings/queues`. Each queue has to assign to a group, and only the group members can see the tickets in the assigned queue.

Now you can add :doc:`ticket-settings/auto-responses` and assign them to queues using the :doc:`ticket-settings/queues-auto-responses` management screen. Your OTOBO installation already contains some automatic responses, you can use or edit them instead of create new ones.

To reduce the time needed for answering the tickets, :doc:`ticket-settings/templates` or :doc:`ticket-settings/sms-templates` can be created.

Normal templates can contain :doc:`ticket-settings/attachments`, and you can assign the uploaded attachments to templates using the :doc:`ticket-settings/templates-attachments` management screen.

When templates are created, you can set the templates to use in queues in the :doc:`ticket-settings/templates-queues` or :doc:`ticket-settings/sms-templates-queues` management screens.

You need to review the default :doc:`ticket-settings/priorities`, :doc:`ticket-settings/states` and :doc:`ticket-settings/types`, and add new elements, if needed.

The customer requests can be categorize into services. If you would like to use this possibility, then create some :doc:`ticket-settings/services` and set the :doc:`users-groups-roles/customer-users-services` relations. Furthermore, :doc:`ticket-settings/service-level-agreements` can be assign to the services.

Now you can add some notifications to be received by agents, if particular events occur. You can do this in the :doc:`communication-notifications/ticket-notifications` screen.

To help agents to organize appointments, you can setup the :doc:`administration/calendars` and the :doc:`communication-notifications/appointment-notifications`.

Tickets, articles and other objects in OTOBO can be extended with :doc:`processes-automation/dynamic-fields` or can be reduced with :doc:`processes-automation/access-control-lists`.

Without doing everything manually, the number of failure can be reduced. Automatize some process in OTOBO using :doc:`processes-automation/generic-agent` jobs or creating processes with :doc:`processes-automation/process-management`. The incoming emails can be pre-processed and dispatched automatically by defining some :doc:`communication-notifications/postmaster-filters`.

If external systems need to integrate with OTOBO, :doc:`processes-automation/web-services` will be very useful for this.

However OTOBO has many features by default, you can extend the functionality by installing packages with the :doc:`administration/package-manager`.

Finally, you can set the :doc:`external-interface/home-page`, the :doc:`external-interface/custom-pages` and the :doc:`external-interface/layout` of the external interface, as well as you can define a :doc:`external-interface/customer-service-catalogue` displayed in the external interface.


Become OTOBO Expert
-------------------

The next chapters of this manual describe the features and configuration settings of OTOBO more detailed. There is a separated manual for `Configuration Options References <https://doc.otobo.org/doc/manual/config-reference/7.0/en/>`__, that gives you a good overview of :doc:`administration/system-configuration`, that can be adjusted to modify the behavior of OTOBO.
