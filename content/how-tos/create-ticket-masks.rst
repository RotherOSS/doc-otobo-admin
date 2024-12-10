How-To: Create a Ticket Mask
============================

#. Make sure you have created every dynamic field that should be used in your ticket mask.
#. Create a new ticket mask for the action AgentTicketPhone.
   .. figure:: images/create-ticket-mask-change-definition.png
      :alt: Create/change mask definition

      Create/change mask definition
#. Change the definition to:
   .. code-block:: yaml
      ---
      - DF: TitleBuyingFlowers
      - DF: Budget
        Mandatory: 1
      - DF: SetBuyingFlowers
      - DF: TitlePersonalData
      - Grid:
          Columns: 5
          Rows:
            -
              - DF: GivenName
                Mandatory: 1
                ColumnStart: 2
              - DF: Surname
                Mandatory: 1
                ColumnStart: 3
              - DF: RemainingMoney
                Readonly: 1
                ColumnStart: 4
      code
#. Save the definition and test it by opening the action (in our example AgentTicketPhone).

The result look like:
.. figure:: ../administration-area/process-automation/images/ticket-mask-example.png
   :alt: Example of a ticket mask for action AgentTicketPhone

   Example of a ticket mask for action AgentTicketPhone