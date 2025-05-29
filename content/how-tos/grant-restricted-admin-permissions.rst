Usage
=====

The module adds a light admin functionality. Using this, agents can be granted restricted admin permissions to the following areas:

* Ticket notifications
* Templates including attachments and linked queues

After package installation and configuration, the light admin user has access to ticket notifications and templates in general. Regarding the access, three states are distinguished:

#. Light admin user has full access if he has rw access on all queues which affect the object.
#. Light admin user can view, but not edit, if he has at least ro access on at least one of the queues which affect the object. In case of templates no explicit queue means 'in use for no queue' and thus rw access. In case of ticket notifications no explicit queue means 'in use for all queues' and thus likely ro access (depending on the rights of the agent).
#. Object is related to queues on which the user has no permissions at all. These objects are hidden.

Setup
-----

The permissions can be assigend to every group. For convenience reasons, a specialised light admin group can be created.

To grant light admin permissions to the group, it has to be added to GroupRo in the following system configuration settings:

* Enable restricted access to the general admin:
    * Frontend::Module###Admin
    * Frontend::Navigation###Admin###001-Framework

* Include notifications:
    * Frontend::NavigationModule###AdminNotificationEvent
    * Frontend::Module###AdminNotificationEvent

* Include templates:
    * Frontend::NavigationModule###AdminTemplate
    * Frontend::NavigationModule###AdminTemplateAttachment
    * Frontend::NavigationModule###AdminQueueTemplates
    * Frontend::NavigationModule###AdminAttachment
    * Frontend::Module###AdminTemplate
    * Frontend::Module###AdminTemplateAttachment
    * Frontend::Module###AdminQueueTemplates
    * Frontend::Module###AdminAttachment
