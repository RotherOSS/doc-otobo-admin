Import/Export
=============

Importing and exporting several object types, namely ACLs, dynamic fields, processes, and standard objects is possible via admin interface or via console command. Current supported standard object types are GenericAgents, Groups, Queues, Queue-Template relations, Roles, Role-Group relations, and Templates. Services and SLAs are also supported if a compatible version of the ServiceCatalog package is installed.

The admin screens for these object types have a widget to import and export data for the respective object type. Shown below are the group and the role group relations as examples.
 
To import data, select the respective file in the file picker and click on the import button. Then an overview screen over the data to be imported is shown. The user can exclude data from import there.

Likewise, the export shows an overview screen on which data to export. The data can be selected as well.

Group
-----

 .. figure:: images/AdminGroup.png
   :align: center
   :scale: 30%
   :alt: The screenshot shows the group overview screen in the admin interface.

   The screenshot shows the group overview screen in the admin interface.

The export screen looks as follows:

 .. figure:: images/AdminGroupExport.png
   :align: center
   :scale: 30%
   :alt: The screenshot shows the group export screen in the admin interface.

   The screenshot shows the group export screen in the admin interface.

Role Group Relations
--------------------

 .. figure:: images/AdminRoleGroup.png
   :align: center
   :scale: 30%
   :alt: The screenshot shows the role group relations overview screen in the admin interface.

   The screenshot shows the role group relations overview screen in the admin interface.

The export screen looks as follows:

 .. figure:: images/AdminRoleGroupExport.png
   :align: center
   :scale: 30%
   :alt: The screenshot shows the role group relations export screen in the admin interface.

   The screenshot shows the role group relations export screen in the admin interface.

Advanced Usage
--------------

For the more advanced use case, there are four new console commands:

- ``Admin::ImportExport::ImportACL``
- ``Admin::ImportExport::ImportDynamicField``
- ``Admin::ImportExport::ImportProcess``
- ``Admin::ImportExport::ImportStandardObject``

The commands take a file path as argument and import the data found in this file. ``Admin::ImportExport::ImportStandardObject`` relies on the export structure of the objects listed in the help text and determines which object type is imported.
