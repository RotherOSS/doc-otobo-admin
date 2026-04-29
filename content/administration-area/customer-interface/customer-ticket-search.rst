Customer Ticket Search
======================

The Customer Ticket Search allows a customer to find tickets by various filters, namely:

- Ticket number
- Customer ID
- Fulltext search in Attachments, Body, Cc, From, Subject, To, Priority, and State
- Creation date

It provides also several different types of output redirection:

- CSV
- Excel
- Normal (a list within the UI)
- Print

In addition, similar to the Agent Interface, it supports search profiles through Search Templates, which are sets of predefined filters with specific search criteria for repeated use.

To activate this feature, enable the system config ``Frontend::Module###CustomerTicketSearch``.
The feature can then be accessed through an icon in the Customer Interface main menu.

For more advanced use cases, there is also the possibility to add Dynamic Fields to the Search Mask, e.g. by utilizing the Dynamic Field Screens feature of the Admin Interface. For more information on this, please refer to the `Dynamic Fields section on this manual <https://doc.otobo.de/manual/admin/11.0/en/content/administration-area/processes-automation/dynamic-fields.html#>`_.


