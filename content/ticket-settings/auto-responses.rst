Auto Responses
==============

Quick and transparent service is vital to maintaining a good working relationship with your customer. Email, fax, social media and other non-real-time communications are patient, but you want to engage your customer immediately upon receipt of a request.

OTOBO allows you to respond to a customer immediately upon receipt of a request giving the customers instantaneous feedback assuring them that their request is in processing, establishing expectation.

Automatic responses can be sent to customers based on the occurrence of certain events, such as the creation of a ticket in a specific queue, the receipt of a follow-up message in regards to a closed or rejected ticket, etc.

Use this screen to add automatic responses for use in queues. A fresh OTOBO installation contains some automatic responses by default. The automatic response management screen is available in the *Auto Responses* module of the *Ticket Settings* group.

.. figure:: images/auto-response-management.png
   :alt: Auto Response Management Screen

   Auto Response Management Screen


Manage Auto Responses
---------------------

.. note::

   Adding automatic responses requires a valid system address. Create system addresses in the :doc:`../communication-notifications/email-addresses` screen.

To add an automatic response:

1. Click on the *Add Auto Response* button in the left sidebar.
2. Fill in the required fields.
3. Click on the *Save* button.

.. figure:: images/auto-response-add.png
   :alt: Add Auto Response Screen

   Add Auto Response Screen

.. warning::

   Auto responses can not be deleted from the system. They can only be deactivated by setting the *Validity* option to *invalid* or *invalid-temporarily*.

To edit an automatic response:

1. Click on an automatic response in the list of automatic responses.
2. Modify the fields.
3. Click on the *Save* or *Save and finish* button.

.. figure:: images/auto-response-edit.png
   :alt: Edit Auto Response Screen

   Edit Auto Response Screen

.. note::

   If several automatic responses are added to the system, use the filter box to find a particular automatic response by just typing the name to filter.


Auto Response Settings
----------------------

The following settings are available when adding or editing this resource. The fields marked with an asterisk are mandatory.

Name \*
   The name of this resource. Any type of characters can be entered to this field including uppercase letters and spaces. The name will be displayed in the overview table.

Subject \*
   The subject of the email sent to the users.

Response
   The body of the email sent to the users.

Type \*
   The event type that triggers the sending of this automatic response. Only one automatic response can be sent automatically per event. The following event types are available:

   auto follow up
      Is triggered for any follow-up message on an existing ticket. This includes also article notes which are visible for the customer. If the :doc:`../administration/system-configuration` option 'AutoResponseForWebTickets' is activated the automatic response is also sent for follow up articles created through the customer web interface or through a telephone call otherwise only for follow up articles created from a customer email. This automatic repsonse does not apply for new tickets, see the 'auto reply' event type.

   auto reject
      If the  :doc:`queues` setting 'follow up option' is set to 'reject' this event will be triggered if a customer answers in a ticket, that is already closed.

   auto remove
      Has currently no effect.
      No response will be generated.

   auto reply
      If a new ticket is generated the customer will get this auto response. If the :doc:`../administration/system-configuration` option 'AutoResponseForWebTickets' is activated the automatic response is also sent for new tickets created through the customer web interface or through a telephone call (telephone ticket) otherwise only for new tickets created from a customer email. This automatic repsonse does not apply if the 'auto reply/new ticket' event type occours.

   auto reply/new ticket
      If the  :doc:`queues` setting 'follow up option' is set to 'new ticket' this event will be triggered if a customer answers in a ticket, that is already closed. You can use this message to inform the customer of the new ticket number.

Auto response from \*
   The sender email address, from which the automatic response will be sent.

Validity \*
   Set the validity of this resource. Each resource can be used in OTOBO only, if this field is set to *valid*. Setting this field to *invalid* or *invalid-temporarily* will disable the use of the resource.

Comment
   Add additional information to this resource. It is recommended to always fill this field as a description of the resource with a full sentence for better clarity, because the comment will be also displayed in the overview table.


Auto Response Variables
-----------------------

Using variables in the text makes it possible to personalize messages. Variables, known as OTOBO tags, are replaced by OTOBO when generating the message. Find a list of available tags stems for this resource at the bottom of both add and edit screens.

.. figure:: images/auto-response-variables.png
   :alt: Auto Response Variables

   Auto Response Variables

For example, the variable ``<OTOBO_TICKET_TicketNumber>`` expands to the ticket number allowing a template to include something like the following.

.. code-block:: text

   Ticket#<OTOBO_TICKET_TicketNumber>

This tag expands, for example to:

.. code-block:: text

   Ticket#2018101042000012
