Import/Export
=============
The system provides two different kind of features for importing and exporting data. The ImportExport templates allow data transfers for a wide range of object types, including tickets, customer companies, and translations. In addition, several standard object types (ACLs, dynamic fields, processes and standard objects) can be imported and exported directly via their admin interface or through console commands.

ImportExport Templates
----------------------
The ImportExport section of the admin interface allows the definition and management of templates that can be executed to import or export objects of several types, such as tickets, customer companies, translations or other object types added by packages.

 .. figure:: images/templates-admin.png
   :align: center
   :scale: 30%
   :alt: Import/export templates admin interface.

   Import/export templates admin interface.

**To create a template**, click the *Add template* button to start a creation wizard with the following five steps:

**Step 1:**

Basic and common information, such as template name, object type, import/export file format, and validity. An optional commentary can be included. Regarding the object type, several backends are available, namely Ticket, CustomerCompany and Translations. Other backends are available via various packages, notably e.g. the Config Item backend. 

 .. figure:: images/templates-step1.png
   :align: center
   :scale: 30%
   :alt: Template creation - step 1

   Template creation - step 1

**Step 2:**

Object attribute settings, such as default field values or the interpretation of empty values for specific fields.

 .. figure:: images/templates-step2.png
   :align: center
   :scale: 30%
   :alt: Template creation - step 2

   Template creation - step 2

**Step 3:**

Format information, regarding import/export file format details such as column separator or encoding

 .. figure:: images/templates-step3.png
   :align: center
   :scale: 30%
   :alt: Template creation - step 3

   Template creation - step 3

**Step 4:**

Fields to be imported/exported

 .. figure:: images/templates-step4.png
   :align: center
   :scale: 30%
   :alt: Template creation - step 4

   Template creation - step 4

**Step 5:**

Search criteria to filter the import/export result

 .. figure:: images/templates-step5.png
   :align: center
   :scale: 30%
   :alt: Template creation - step 5

   Template creation - step 5


After creation, a template can be **modified** by selecting its number in the table, which returns to the template definition wizard.

The trash bin icon can be used to **delete** the template.

To **import data** with a given template, click its respective *Import* option, select the import file in the file picker, and click on the *Start Import* button. After the import is finished, an import summary report is shown.

To **export data** with a given template, click its respective *Export* option and select the export file in the file dialog.

A note on the Ticket backend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Identifiers can be used for tickets and articles to potentially skip the article. Rules are as follows:

* TicketID or TicketNumber are required to be marked as identifier for ticket identification
* Article_ArticleID is required to be marked as identifier for article identification
* When using identification and the object is found in the system, tickets are just updated instead of created, articles are skipped
* Regardless of whether identification is used or not, if objects are created, TicketID and ArticleID will be generated newly by OTOBO, TicketNumber (if included) will be set to the one of the csv. The latter will lead to an import error if the TicketNumber already exists (no identification used), and can also be problematic if imported from a system with a different SystemID or TicketNumber generator - use with care.

The console commands Admin::ImportExport::Export and Admin::ImportExport::Import provide functionality on the command line.
Using the command line also allow chunked export and import.

In order to achieve better performance, some SysConfig setting are temporarily altered during Export and Import. This means that
ElasticSearch has to be reindexed after an import.

There is an import feature called extended synchronisation. This feature can be activated via the SysConfig.
When using the extended synchronization, TicketID as well as Article_ArticleID have to be provided. This means that the history of the tickets will be imported. Additionally, the links of the tickets will be imported.

If old, imported ticket numbers with a different system ID (important, but with the same ticket number generator) are also to be recognized in follow-ups, install the *LegacySystemIDSupport* package and enter the original system ID in the settings.

Importing/Exporting other objects
---------------------------------
Importing and exporting several object types, namely ACLs, dynamic fields, processes, and standard objects is possible via admin interface or via console command. Current supported standard object types are GenericAgents, Groups, Queues, Queue-Template relations, Roles, Role-Group relations, and Templates. Services and SLAs are also supported if a compatible version of the ServiceCatalog package is installed.

The admin screens for these object types have a widget to import and export data for the respective object type. Shown below are the group and the role group relations as examples.
 
To import data, select the respective file in the file picker and click on the import button. Then an overview screen over the data to be imported is shown. The user can exclude data from import there.

Likewise, the export shows an overview screen on which data to export. The data can be selected as well.

**Group**

 .. figure:: images/AdminGroup.png
   :align: center
   :scale: 30%
   :alt: Group overview screen in the admin interface.

   Group overview screen in the admin interface.

The export screen looks as follows:

 .. figure:: images/AdminGroupExport.png
   :align: center
   :scale: 30%
   :alt: *** group export screen in the admin interface.

   Group export screen in the admin interface.

**Role Group Relations**

 .. figure:: images/AdminRoleGroup.png
   :align: center
   :scale: 30%
   :alt: *** role group relations overview screen in the admin interface.

   Role group relations overview screen in the admin interface.

The export screen looks as follows:

 .. figure:: images/AdminRoleGroupExport.png
   :align: center
   :scale: 30%
   :alt: *** role group relations export screen in the admin interface.

   Role group relations export screen in the admin interface.

**Advanced Usage**

For the more advanced use case, there are four new console commands:

- ``Admin::ImportExport::ImportACL``
- ``Admin::ImportExport::ImportDynamicField``
- ``Admin::ImportExport::ImportProcess``
- ``Admin::ImportExport::ImportStandardObject``

The commands take a file path as argument and import the data found in this file. ``Admin::ImportExport::ImportStandardObject`` relies on the export structure of the objects listed in the help text and determines which object type is imported.
