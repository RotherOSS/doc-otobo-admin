Customer Users ↔ Groups
=======================

Customer users shouldn't need to be bothered with the internal workings of your service desk.
A single point of contact request can trigger several processes within your organization,
all of which having the customer user information attached and are visible to the customer.

OTOBO allows you to assign :term:`group` permissions to customer users.
Access works just the same as for agents, preventing a customer from modifying and viewing a request.
Thus allowing the customer to focus on the results of the original communication and funneling the discussion through one ticket.

.. seealso::

   Assign a group to an entire customer using :doc:`customers-groups`.

Use this screen to add one or more customer users to one or more groups.
To use this function, at least one customer user and one group need to have been added to the system.
The management screen is available in the *Customers Users ↔ Groups* module of the *Users, Groups & Roles* group.

.. figure:: images/customer-user-group-management.png
   :alt: Manage Customer User-Group Relations

   Manage Customer User-Group Relations

Customer group support needs to be enabled in at least one customer user :term:`back end` to use this function.
For the default OTOBO :term:`back end`, this can be enabled in the system configuration by clicking on the *Enable it here!* button.

.. figure:: images/customer-group-activation.png
   :alt: Enable Customer Group Feature

   Enable Customer Group Feature

.. note::

   To enable this feature in systems using a directory server or multiple non-default back ends,
   a custom configuration file needs to be placed in ``Kernel/Config/Files`` (for example named ``ZZZ_CustomerBackend.pm``).
   Once activated, all customer users from this back end will require group assignment.

.. warning::

   After making changes to the back end, the server cache will be deleted, which may cause a temporary drop in performance.


Manage Customer Users ↔ Groups Relations
----------------------------------------

To assign some groups to a customer user:

1. Click on a customer user in the *Customer Users* column.
2. Select the permissions you would like to connect the customer user to groups with.
3. Click on the *Save* or *Save and finish* button.

.. figure:: images/customer-user-group-customer-user.png
   :alt: Change Group Relations for Customer User

   Change Group Relations for Customer User

To assign some customer users to a group:

1. Click on a group in the *Groups* column.
2. Select the permissions you would like to connect the group to customer users with.
3. Click on the *Save* or *Save and finish* button.

.. figure:: images/customer-user-group-group.png
   :alt: Change Customer User Relations for Group

   Change Customer User Relations for Group

To change customer user default groups:

1. Click on the *Edit Customer User Default Groups* button in the left sidebar.
2. Add or modify groups in setting ``CustomerGroupAlwaysGroups``.
3. Deploy the modified system configurations.

.. figure:: images/customer-user-group-default-groups.png
   :alt: CustomerGroupAlwaysGroups System Configuration Screen

   ``CustomerGroupAlwaysGroups`` System Configuration Screen

These groups are automatically assigned to all customer users.

.. note::

   If several customer users or groups are added to the system,
   use the search box to find a particular customer user or use the filter box to find a particular group by just typing the name to filter.

Multiple customer users or groups can be assigned in both screens at the same time.
Additionally clicking on a customer user or clicking on a group in the relations screen will open the *Edit Customer User* screen or the *Edit Group* screen accordingly.

.. warning::

   Accessing a customer user or a group provides no back link to the relations screen.


Customer Users ↔ Groups Relations Reference
-------------------------------------------

When assigning a customer user to a group or vice versa,
several permissions can be set as connection between a customer user and a group.
The following permissions are available by default:

ro
   Read only access to the resource.

rw
   Full read and write access to the resource.

.. note::

   By setting a checkbox in the header of a column will set all the checkboxes in the selected column.
