Script Dynamic Field Settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This dynamic field 'Script' allows you to calculate expressions based on the Toolkit Template language, as long as the conditions defined during the field creation are met.

.. figure:: images/dynamic-field-script.png
   :alt: Script Dynamic Field Settings

   Script Dynamic Field Settings

Expression Field
   In the ``Expression field``, the function to be evaluated will be defined. Example:

   ::

      [% Data.QueueID * 5 %]

Requirements 
   List of attributes that function as conditions. If one or more attributes are chosen, the function will only be executed if the attributes have valid values ​​set.

Preview Triggers 
   If configured, the function will be re-evaluated via AJAX every time the value of the selected attribute or attributes is updated.

Storage Triggers (Events) 
   If one or more events from the list are selected, the expression will be re-evaluated every time the event or events occur.

Show link 
   Here you can specify an optional HTTP link for the field value in overviews and zoom screens. Example:

   ::

      http://some.example.com/handle?query=[% Data.Field1 | uri %]

Link for preview
   If filled in, this URL will be used for a preview which is shown when this link is hovered in ticket zoom. Please note that for this to work, the regular URL field above needs to be filled in, too.

Check RegEx
   Here you can specify a regular expression to check the value. The regex will be executed with the modifiers ``xms``. Example:

   ::

      ^[0-9]$

Add RegEx
   Clicking on the *⊞* button will add two new fields, where a regular expression and an error message can be added.







Dynamic Field Set 
~~~~~~~~~~~~~~~~~~~

This new field allows parametrizing dynamic fields within it and structuring them across rows and columns.

Field Configuration
------------------------
   Standard configuration for all fields is displayed.

.. figure:: images/FieldConfiguration.jpg
   :alt: General dynamic field configuration

   General dynamic field configuration


Configuration
------------------
.. figure:: images/Configuration.jpg
   :alt: Set dynamic field configuration

   Set dynamic field configuration


   Dynamic Fields
   --------------
   This text field is used to parameterize the fields that will be displayed in YAML format.

   Grid
   -------
   It's a variable that defines a container to organize elements in 
   rows and columns.

   Columns
   --------------
   Specifies the number of columns in the structure.

   ColumnWidth
   --------------
   Specifies the width of the columns, using pixels in the example.
   
   Rows
   -------
   A list containing the rows of the structure.

   ColumnStart
   --------------
   Indicates which column the data field starts in.

   DF
   -------
   Represents the dynamic field; the field name should be indicated.

   Mandatory
   --------------
   Indicates if the dynamic field is mandatory ('1' for yes and '0' for 
   no).


Field Display
--------------
After configuring and publishing the field in a creation form, this is how it appears.

.. figure:: images/FieldDisplay.jpg
   :alt: Field display in form

   Field display in form

Multiple Values
   Allows using multiple values in the field structure.
.. figure:: images/MultipleValues.jpg
   :alt: Field duplication with multiple values

   Field duplication with multiple values






Lens Dynamic Script Settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Lens field allows referencing objects within OTOBO, along with their characteristics, enabling the display and/or editing of them.

.. figure:: images/dynamic-field-lens.png
   :alt: Lens Dynamic Field Settings

   Lens Dynamic Field Settings

The referenced dynamic field
   Here you can set up a dynamic field that references an object within OTOBO, such as Agent, Customer (User), Ticket, CI, and CI Version.

The attribute of the referenced object
   Here you can reference an attribute of the related object. For example, accessing an attribute of a related CI in the referenced dynamic field.




