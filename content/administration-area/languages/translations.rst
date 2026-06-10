Translations
~~~~~~~~~~~~

New or existing translations are managed and administered in the "Translations" module, located in the "Languages" group of the administration area.

.. figure:: images/translations-item-translations.png
   :alt: Widget Languages

   Widget Languages


By clicking on the Translations item, the user displays the subaction "Overview".

.. figure:: images/translations-module-translations.png
   :alt: Overview Module Translations

   Overview Module Translations

It contains the following elements:

Language Dropdown
   To select the working language (By default the language of the User in session is selected).

.. figure:: images/translations-actions.png
   :alt: Actions - Languages

   Actions - Languages


Add Translation
   To add a new translation in the system.

Edit Translations
   To modify an existing translation.

Deploy Translations
   To display the translations in the system.

.. figure:: images/translations-actions-translations.png
   :alt: Buttons Translations

   Buttons Translations


Active Translations
    Table with all translations displayed.

.. figure:: images/translations-active-translations.png
   :alt: Table Active Translations

   Table Active Translations


Filter
    To filter the translation table.

.. figure:: images/translations-filter.png
   :alt: Filter Active Translations

   Filter Active Translations


Translation States
    Possible translation statuses.

.. figure:: images/translations-translations-state.png
   :alt: Widget States Translations

   Widget States Translations

- New translation: New translations pending to be deployed.
- Editing Translation: Edited translations pending deployment.
- Translation Marked for Deletion: Translations marked for deletion pending deployment.
- Deployed Translation: Active translations that have already been deployed.

.. figure:: images/translations-translations-state.png
   :alt: Display States Translations

   Display States Translations


Hint
    This widget contains a short explanatory text about the module.

.. figure:: images/translations-hint.png
   :alt: Widget Hint

   Widget Hint



Add translation screen
----------------------
    This function allows you to add a new translation to OTOBO and allows you to select each of the translatable data elements in the system.

.. figure:: images/translations-add-translations-screen.png
   :alt: Overview Add Translation

   Overview Add Translation

When entering the section to add a new translation, a new screen is displayed with the following elements:

Actions
    This widget contains the "Go to Overview" button to return to the main screen of the module.

.. figure:: images/translations-actions-add-translations.png
   :alt: Widget actions Add Translation

   Widget actions Add Translation

Hint
    This widget contains a short explanatory text about the section the user is in.

.. figure:: images/translations-hint-add-translations.png
   :alt: Widget Hint Add Translation

   Widget Hint Add Translation

Language
    Informative label of the language where the translation will be created.

Object
    Selectable options with element to translate: Dynamic field content, Dynamic field labels, General label, Priorities, Queue, Services, SLA, Templates, Ticket status, Ticket types.

.. figure:: images/translations-object-add-translations.png
   :alt: Object field

   Object field

Dynamic Field List
    This field is displayed only when "Dynamic Field" is selected in the "Object" field.
    It contains the names of the dynamic fields.

.. figure:: images/translations-dynamic-field-list.png
   :alt: Dynamic Field List

   Dynamic Field List

Content
    This text field contains the tags to translate.

.. figure:: images/translations-content.png
   :alt: Content Field

   Content Field

Translation
    Text field or table depending on the selected option, where the translation is entered.

.. figure:: images/translations-translation-field.png
   :alt: Translation Field

   Translation Field

Button Save and Finish
    To save the translation and finish.

Cancel button
    To cancel the action.

.. figure:: images/translations-button-save-cancel.png
   :alt: Button - Save or Cancel


Selectable Options
------------------

Dynamic Field Contents
    Displays all existing dynamic fields and a dropdown field with values to translate is chosen

.. figure:: images/translations-option-dynamic-field-contents.png
   :alt: Table for translation - Dynamic Field Content

   Table for translation - Dynamic Field Content

Dynamic Field Labels
    Displays all existing dynamic fields in the system and a field is chosen to translate the label

.. figure:: images/translations-option-dynamic-field-labels.png
   :alt: Table for translation - Dynamic Field Labels

   Table for translation - Dynamic Field Labels


General Label
    Allows to translate any existing label in the system.

.. figure:: images/translations-option-general-label.png
   :alt: Fields for translation - General labes

   Fields for translation - General labes


Priorities
    Allows to translate the existing priorities in the system.

.. figure:: images/translations-option-priorities.png
   :alt: Fields for translation - Priorities

   Fields for translation - Priorities

Queues
    Allows to translate all existing queues.

.. figure:: images/translations-option-queues.png
   :alt: Fields for translation - Queues

   Fields for translation - Queues


Services
    Allows translation of all services.

.. figure:: images/translations-option-services.png
   :alt: Fields for translation - Services

   Fields for translation - Services


SLAs
    Allows translation of all SLAs.

.. figure:: images/translations-option-sl-as.png
   :alt: Fields for translation - SLAs

   Fields for translation - SLAs


Templates
    Allows you to translate templates.

.. figure:: images/translations-options-templates.png
   :alt: Fields for translation - Templates

   Fields for translation - Templates


Tickets States
    Allows translation of ticket statuses.

.. figure:: images/translations-option-tickets-states.png
   :alt: Fields for translation - Ticket States

   Fields for translation - Ticket States



Tickets Types
    Allows translation of ticket types.

.. figure:: images/translations-option-ticket-types.png
   :alt: Fields for translation - Ticket Types

   Fields for translation - Ticket Types



Edit Translation
----------------

This section allows you to edit the translations displayed in the module.
When entering the section to edit translations a new screen is displayed with the following elements:

Translations
    Translation table with

.. figure:: images/translations-table-edit-translations.png
   :alt: List of translations for editing

   List of translations for editing

- Filter Content: Translation filtering field.
- Content: content column with all the translated tags in the module.
- Translation: input column with all translations displayed with the possibility to edit and add a new translation.



Deploy Translation
------------------
This function allows you to deploy translations, changing their status to deployed and adding them to the database or deleting them from the module when they are marked for deletion.

.. figure:: images/translations-deploy-translations.png
   :alt: Table of displayed translations.

   Table of displayed translations.



Import/Export Translations
--------------------------

This function allows you to import and/or export files with translations using templates for the different languages configured.
When going to the Import/Export module, a new section "Translations" is displayed, a table with the existing templates for importing files.


Add Template
    When adding a new template, the new "Translations" option is displayed in the "Object" input.

Format
    Allows you to choose the CSV file format.

.. figure:: images/translations-add-template.png
   :alt: Fields Add template.

   Fields Add template.

In the second step, the following fields are displayed:

.. figure:: images/translations-step2.png
   :alt: Fields Step 2.

   Fields Step 2.

Format
    Plain text format is selected.

Checkbox
    To indicate whether empty fields keep the current values.


    In the third step the following new fields are displayed:

Column Separator
    Allows you to choose the column separator between Colon (:), Comma(,), Period(.), Semicolon(;), Tabulator (TAB).

.. figure:: images/translations-step3-1.png
   :alt: Field Column separator Step 3.

   Field Column separator Step 3.


Charset
    The default character encoding is unmodifiable and according to the previously selected language.

.. figure:: images/translations-step3-2.png
   :alt: Field Charset Step 3.

   Field Charset Step 3.


Include Column Headers
    Allows you to choose between yes/no if the option is whether the file should have the column headers in the file to be imported.

.. figure:: images/translations-step3-3.png
   :alt: Field Include Column Headers Step 3.

   Field Include Column Headers Step 3.



In the fourth step, the order of the file columns is defined:

.. figure:: images/translations-step4.png
   :alt: Information mapping table.

   Information mapping table.

Add Mapping Element
    To add the sections or columns of the file.


Key
    Source string: Text string to be translated.
    Translation English: Language in which the translation will be done.

.. figure:: images/translations-step4-1.png
   :alt: Mapped information.

   Mapped information.



In the fifth step you define whether you want to export untranslated strings of specific objects:

.. figure:: images/translations-step5.png
   :alt: Search information.

   Search information.


Restrict export per search
    allows you to choose whether you want to restrict the export by searching for specific options.

Export Untranslated strings of
    allows you to choose the option from which the untranslated strings will be exported.

.. figure:: images/translations-step5-1.png
   :alt: Field Export Untraslated.

   Field Export Untraslated.



Ticket Information (Translation)
---------------------------------

Attributes of the ticket such as Queues and Services that are translated using the translation module will be visible in the selection tree views of the fields.


Services in English

.. figure:: images/translations-services-english.png
   :alt: List Services.

   List Services.

Services translated to Spanish in tree view

.. figure:: images/translations-services-spanish.png
   :alt: List Services translated to Spanish.

   List Services translated to Spanish.


Queues in English

.. figure:: images/translations-queues-english.png
   :alt: List Queues.

   List Queues.

Queues translated to Spanish in tree view

.. figure:: images/translations-queues-spanish.png
   :alt: List Queues translated to Spanish.

   List Queues translated to Spanish.

