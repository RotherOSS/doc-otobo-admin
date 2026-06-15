Getting Started
===============

.. note::

   The installation of OTOBO is explained in a separate `Installation Guide <https://doc.otobo.org/manual/installation/11.1/en/content/index.html>`__. To install OTOBO or upgrade OTOBO from a previous version, follow the steps described there.

After the installation of OTOBO is finished, you can login to the system with user ``root@localhost`` and using the generated password.

A fresh new OTOBO installation contains only the default settings.
p your needs.

First, you need to check some :doc:`administration-area/administration/system-configuration` and modify the values, if needed.
``FQDN``, ``SystemID`` and ``SendmailModule`` are the most important.
Defining ``TimeWorkingHours`` and ``TimeVacationDays`` are also needed to calculate the escalation times correctly in OTOBO.

Then, open the :doc:`administration-area/communication-notifications/postmaster-mail-accounts` module to add email addresses used by the system.
For sending email, you can add more :doc:`administration-area/communication-notifications/email-addresses`.

To improve the security, :doc:`administration-area/communication-notifications/pgp-keys` or :doc:`administration-area/communication-notifications/s-mime-certificates` can be used for encryption of emails.

Let's continue with users, but you might need to add some :doc:`administration-area/users-groups-roles/groups` and/or :doc:`administration-area/users-groups-roles/roles` to the system first.
It is recommended to create new groups for each main queues.
There are some groups in your OTOBO, but no roles are defined by default.
You can add roles, if needed, and you can set the :doc:`administration-area/users-groups-roles/roles-groups` relations.

The next step is to add :doc:`administration-area/users-groups-roles/agents` to the system and set the :doc:`administration-area/users-groups-roles/agents-groups` and/or :doc:`administration-area/users-groups-roles/agents-roles` relations.

Now you can add :doc:`administration-area/users-groups-roles/customers` and :doc:`administration-area/users-groups-roles/customer-users`. Customers are companies and customer users are the employees of the company.

.. note::

   Both agents and customer users can log in using Active Directory or LDAP for authentication.
   In these cases doesn't need to add users manually.

Like for agents, customers users can also assign to groups using the :doc:`administration-area/users-groups-roles/customer-users-groups` management screen.
Similarly, :doc:`administration-area/users-groups-roles/customer-users-customers` relations can also be set.

Your OTOBO installation already contains a standard salutation and a standard signature, but you might need to edit them or create new :doc:`administration-area/ticket-settings/salutations` and :doc:`administration-area/ticket-settings/signatures`. Queues can not be created without salutations and signatures, and only one salutation and signature can be assigned to a queue.

After system addresses, salutations, signatures, groups are set, you can continue the setup with :doc:`administration-area/ticket-settings/queues`. Each queue has to assign to a group, and only the group members can see the tickets in the assigned queue.

Now you can add :doc:`administration-area/ticket-settings/auto-responses` and assign them to queues using the :doc:`administration-area/ticket-settings/queues-auto-responses` management screen.
Your OTOBO installation already contains some automatic responses, you can use or edit them instead of create new ones.

To reduce the time needed for answering the tickets, :doc:`administration-area/ticket-settings/templates` can be created.

Normal templates can contain :doc:`administration-area/ticket-settings/attachments`, and you can assign the uploaded attachments to templates using the :doc:`administration-area/ticket-settings/templates-attachments` management screen.

When templates are created, you can set the templates to use in queues in the :doc:`administration-area/ticket-settings/templates-queues` management screen.

You need to review the default :doc:`administration-area/ticket-settings/priorities`, :doc:`administration-area/ticket-settings/states` and :doc:`administration-area/ticket-settings/types`, and add new elements, if needed.

The customer requests can be categorize into services.
If you would like to use this possibility, then create some :doc:`administration-area/ticket-settings/services` and set the :doc:`administration-area/users-groups-roles/customer-users-services` relations.
Furthermore, :doc:`administration-area/ticket-settings/service-level-agreements` can be assign to the services.

Now you can add some notifications to be received by agents, if particular events occur.
You can do this in the :doc:`administration-area/communication-notifications/ticket-notifications` screen.

To help agents to organize appointments, you can setup the :doc:`administration-area/administration/calendars` and the :doc:`administration-area/communication-notifications/appointment-notifications`.

Tickets, articles and other objects in OTOBO can be extended with :doc:`administration-area/processes-automation/dynamic-fields` or can be reduced with :doc:`administration-area/processes-automation/access-control-lists`.

Without doing everything manually, the number of failure can be reduced.
Automatize some process in OTOBO using :doc:`administration-area/processes-automation/generic-agent` jobs or creating processes with :doc:`administration-area/processes-automation/process-management`.
The incoming emails can be pre-processed and dispatched automatically by defining some :doc:`administration-area/communication-notifications/postmaster-filters`.

If external systems need to integrate with OTOBO, :doc:`administration-area/processes-automation/web-services` will be very useful for this.

However OTOBO has many features by default, you can extend the functionality by installing packages with the :doc:`administration-area/administration/package-manager`.

.. rubric:: Become OTOBO Expert

The other chapters of this manual describe the features and configuration settings of OTOBO more detailed and give you a good overview of :doc:`administration-area/administration/system-configuration`, that can be adjusted to modify the behavior of OTOBO.
