Glossary
========

.. glossary::
   Activity
      Part of the process management.

   Agent
      An agent is a user which services customer users.
      The person working for your organization.

   Back end
      A configuration file, module, script or other functional item within OTOBO which is not reachable via the browser.

   Calendar
      Defines working hours, time-zone, and holidays to be applied when using :term:`escalation times`.

   Customer
      Physical organizations to which customer users are assigned.
      These provide the function to group users together which belong to a single organization.

   Customer User
      Physical persons, and their contact data, which belong to a customer.
      These are the people raising tickets.

   Dynamic Field
      A field used in tickets and articles to extend the data which can be saved in a ticket or article.
      They are saved from values in the database or accessed from outside resources.

   Escalation Times
      The defined amount of working time before a ticket breaches an agreement.

   Front end
      The graphical interface to OTOBO as viewed in a browser.

   Group
      This is a resource within OTOBO.
      An :term:`agent` or a :term:`customer` can be assigned permissions to this resource as needed.
      Additionally, they can be used for access control, processes and web services.

   Invoker
      An invoker is a special Perl module which allows OTOBO to provide information to a remote system via REST or HTTP.
      Invokers must be developed in Perl by a back end developer.

   Mapping
      A mapping allows OTOBO to provide inbound and outbound translation of data allowing us to offer a specific data construction to rebuild incoming structures to meet our needs.

   Operation
      Similar to a web hook, a provider operation offers a specific sub-set of OTOBO Perl API functionality to external systems.

   Process
      Part of the process management.
      A process defines the workflow for a task and consists of activities, activity dialogs, transitions and transition actions.

   Process Management
      Part of OTOBO to support definition of workflows for recurring tasks.

   Process Path
      Part of the process management.
      A process path describes the connections between the parts of a process.

   Resource
      A resource is any object which has effective permissions.
      This can be, but is not limited to, a ticket, dashboard widget, statistic, or module.

   Screen
      A graphical interface to OTOBO viewed in a browser (see also :term:`Front end`).

   Service
      A means of delivering added value to customers by making it easier for customers or helping them to achieve their desired results without them having to personally bear the responsibility for specific costs and risks.

   Service Level Agreement
      A service level agreement (SLA) is a contract between a service provider (either internal or external) and the end user that defines the level of service expected from the service provider.
      SLAs are output-based in that their purpose is specifically to define what the customer will receive.

   Service Request
      (see also :term:`Ticket`).

   Transition
      Part of the process management.

   Transition Action
      Part of the process management.

   SLA
      (see also :term:`Service Level Agreement`).

   Ticket
      A ticket is a collection of all communications with a customer during the course of a service request.
      A ticket contains articles, which are the communication received from or sent to customers, agents, external systems, etc.
      Tickets belong to a customer user, are assigned to agents and reside in queues.

   Transport
      A transport is the method chosen for communication.
      OTOBO supports REST and SOAP.

   Activity Dialog
      Part of the process management.

   Working Time
      A definition of minutes passed during the defined working hours of any :term:`calendar`.
