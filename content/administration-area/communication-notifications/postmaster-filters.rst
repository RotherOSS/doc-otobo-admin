Postmaster Filters
==================

Pre-sorting standard mail done in a mail room takes care that not every piece of mail sent to the office goes to the same group of people. After a second look at the envelope, rerouting occurs where needed.

OTOBO uses so-called *postmaster filters* to read the emails envelope and take further action. Depending upon, for example, a subject or sender, an email bound for the service desk could land in a sub-queue or be redirected to a completely different team to create transparency and give your customer the fastest service possible.

Use this screen to add postmaster filters to the system. The postmaster filter management screen is available in the *PostMaster Filters* module of the *Communication & Notifications* group.

.. figure:: images/postmaster-filter-management.png
   :alt: Postmaster Filter Management Screen

   Postmaster Filter Management Screen


Manage Postmaster Filters
-------------------------

.. note::

   When adding or editing a postmaster filter, please keep in mind that they are evaluated in *ASCIIbetical* order by name.

To add a postmaster filter:

1. Click on the *Add PostMaster Filter* button in the left sidebar.
2. Fill in the required fields.
3. Click on the *Save* button.


To edit a postmaster filter:

1. Click on a postmaster filter in the list of postmaster filters.
2. Modify the fields.
3. Click on the *Save* or *Save and finish* button.

To delete a postmaster filter:

1. Click on the trash icon in the list of postmaster filters.
2. Click on the *Confirm* button.

.. figure:: images/postmaster-filter-delete.png
   :alt: Delete Postmaster Filter Screen

   Delete Postmaster Filter Screen

.. note::

   If several postmaster filters are added to the system, a filter box is useful to find a particular postmaster filter by just typing to filter.


Postmaster Filter Settings
--------------------------

The following settings are available when adding or editing this resource. The fields marked with an asterisk are mandatory.

.. figure:: images/postmaster-filter-settings-example.png
   :alt: Postmaster Filter Settings Example

   Postmaster Filter Settings Example


Basic Postmaster Filter Settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: images/postmaster-filter-settings-basic.png
   :alt: Postmaster Filter Settings - Basic

   Postmaster Filter Settings - Basic

Name \*
   The name of this resource. Any type of characters can be entered to this field including uppercase letters and spaces. The name will be displayed in the overview table.

   .. note::

      When adding or editing one of the postmaster filters, remember multiple filters may apply to a single mail. Rules are executed and sorted by the ASCII value of the names. Based on the sorted order in the overview, they are applied from top to bottom. Look at the `ASCII table <https://en.wikipedia.org/wiki/Ascii>`__ to see how to sort your names based on the *ASCIIbetical* order.

Stop after match \*
   Postmaster filters are evaluated in *ASCIIbetical* order. This setting defines the evaluation of the subsequent postmaster filters.

   No
      All postmaster filters are executed.

   Yes
      The current postmaster filter is still evaluated, but evaluation of the remaining filters is canceled.


Filter Condition
^^^^^^^^^^^^^^^^

.. figure:: images/postmaster-filter-settings-filter-condition.png
   :alt: Postmaster Filter Settings - Filter Condition

   Postmaster Filter Settings - Filter Condition

A postmaster filter consists of one or more conditions that must be met in order for the defined actions to be executed on the email. Filter conditions can be defined for specific mail header entries or for strings in the mail body.

Search header field … for value
   Select a mail header or an ``X-OTOBO`` header from the first drop-down list, and enter a value as search term for the selected mail header to the second field. Even regular expressions can be used for extended pattern matching.

   A list of mail header entries can be found in `RFC5322 <https://tools.ietf.org/html/rfc5322>`_. It is also possible to define ``X-OTOBO`` headers as filter condition. The different ``X-OTOBO`` headers and their meaning are the following:

   ``X-OTOBO-AttachmentCount``
      This contains as value the number of attachments which are contained in the email (e.g. *0* for mails without attachments).

   ``X-OTOBO-AttachmentExists``
      Depending on whether attachments are included in the email this ``X-OTOBO`` header is set to ``yes``, or it has a ``no`` value if no attachments are included.

   ``X-OTOBO-BodyDecrypted``
      If the incoming mail was encrypted, it is possible to add a search term to look for the body of the incoming encrypted mail.

   ``X-OTOBO-CustomerNo``
      Set the customer ID for the ticket.

   ``X-OTOBO-CustomerUser``
      Set the customer user for the ticket.

   ``X-OTOBO-DynamicField-<DynamicFieldName>``
      Saves an additional information value for the ticket on *<DynamicFieldName>* dynamic field. The possible values depend on dynamic field configuration (e.g. text: *Notebook*, date: *2010-11-20 00:00:00*, integer: *1*).

   ``X-OTOBO-FollowUp-*``
      These headers are the same as the ones without the ``FollowUp`` prefix, but these headers are applied only for follow-up mails.

   ``X-OTOBO-FollowUp-State-Keep``
      If set to *1*, the incoming follow-up message will not change the ticket state. For this purpose the header can be customized in the system configuration using option ``KeepStateHeader``.

    ``X-OTOBO-From``
      Set the ``From`` attribute of the ticket. Either a fixed string can be used or a named capture, e.g. to extract the attribute from the body.

   ``X-OTOBO-Ignore``
      If set to ``Yes`` or ``True``, the incoming message will completely be ignored and never delivered to the system.

   ``X-OTOBO-IsVisibleForCustomer``
      Controls if the article is shown to customer users. Possible values are *0* or *1*.

   ``X-OTOBO-Lock``
      Set the lock state of a ticket. Possible values are ``locked`` or ``unlocked``.

   ``X-OTOBO-Loop``
      If set to ``Yes`` or ``True``, no auto answer is delivered to the sender of the message (mail loop protection).

   ``X-OTOBO-Owner``
      Set the agent as owner for the ticket.

   ``X-OTOBO-OwnerID``
      Set the agent ID as owner for the ticket.

   ``X-OTOBO-Priority``
      Set the priority for the ticket.

   ``X-OTOBO-Queue``
      Set the queue where the ticket shall be sorted. If this is set, all other filter rules that try to sort a ticket into a specific queue are ignored. If you use a sub-queue, specify it as *Parent::Sub*.

   ``X-OTOBO-Responsible``
      Set the agent as responsible for the ticket.

   ``X-OTOBO-ResponsibleID``
      Set the agent ID as responsible for the ticket.

   ``X-OTOBO-SenderType``
      Set the sender type for the ticket. Possible values are ``agent``, ``system`` or ``customer``.

   ``X-OTOBO-Service``
      Set the service for the ticket. If you use a sub-service, specify it as *Parent::Sub*.

   ``X-OTOBO-SLA``
      Set the service level agreement for the ticket.

   ``X-OTOBO-State``
      Set the state for the ticket.

   ``X-OTOBO-State-PendingTime``
      Set the pending time for the ticket (you should sent a pending state via ``X-OTOBO-State``). You can specify absolute dates like *2010-11-20 00:00:00* or relative dates, based on the arrival time of the email. Use the form ``+ $Number $Unit``, where ``$Unit`` can be *s* (seconds), *m* (minutes), *h* (hours) or *d* (days). Only one unit can be specified. Examples of valid settings: *+50s* (pending in 50 seconds), *+30m* (30 minutes), *+12d* (12 days).

      .. note::

         Settings like *+1d 12h* are not possible. You can specify *+36h* instead.

   ``X-OTOBO-Title``
      Set the title for the ticket.

   ``X-OTOBO-Type``
      Set the type for the ticket.

.. warning::

   These headers must be manually injected into the mail by means not provided for by OTOBO. OTOBO only accepts ``X-OTOBO`` headers from trusted sources.

.. seealso::

   The :ref:`Mail Account Settings` defines the trust level.

Negate
   If checked, the condition will use the negate search term.


Set Email Headers
^^^^^^^^^^^^^^^^^

.. figure:: images/postmaster-filter-settings-set-email-headers.png
   :alt: Postmaster Filter Settings - Set Email Headers

   Postmaster Filter Settings - Set Email Headers

In this section you can choose the actions that are triggered if the filter rules match.

Set email header … with value
   Select an ``X-OTOBO`` header from the first drop-down list, and add a value to the second field that should be set as value of the selected ``X-OTOBO`` header.

   .. seealso::

      The ``X-OTOBO`` headers are already described above.
