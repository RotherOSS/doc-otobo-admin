Ticket Masks
============

Ticket masks can be used to define dynamic field arrangements for all ticket edit masks in more sophisticated ways.
They enable multi column arrangements of dynamic fields, alternate labels and read only fields.
Under Admin->Ticket Masks, for all actions a yaml defining the dynamic field section of the mask can be provided.
Dynamic fields added to a mask via SysConfig (e.g. via DynamicField Screens), not present in the yaml definition, will be added as list below the defined fields.

An example configuration would be:

.. code-block:: yaml

   ---
   - DF: Category
   - DF: Serialnumber
     Mandatory: 1
   - Grid:
       Columns: 2
       ColumnWidth: 1fr 1fr
       Rows:
         -
           - DF: Part
             Readonly: 1
             Label: Part Current
           - DF: PartShould
         -
           - DF: TargetDate
             ColumnStart: 2
             ColumnSpan: 1

The basic structure of the yaml is an array of hashes.

On the first level ``DF`` and ``Grid`` are necessary keys for each hash, where ``DF`` causes a dynamic field to be rendered, and Grid defines a multi column section.

Valid keys extending ``DF`` are outside of a grid ``Mandatory``, ``Readonly`` and ``Label``.

In a ``Grid`` ``Columns`` set the number of columns, with the optional ``ColumnWidth`` the column width can be set.

``ColumnWidth`` accepts many css width definitions, usually it is recommended to use ``fr`` (fractions of the left over space), and absolute units (e.g. ``px``) only for checkboxes for example.
``2fr 3fr 60px`` would set the third column to 60 px, and distribute 2/5 of the remaining space to the first, 3/5 to the second column.
``auto`` can be used, but the column width won't stay the same between multiple rows, thus it is only recommended for single rows.

Lastly the ``Rows`` key with a 2D array as value defines the grid of dynamic fields.

In a grid ``ColumnStart`` and ``ColumnSpan`` are additional valid keys for ``DF``, placing them at certain locations within a row.
