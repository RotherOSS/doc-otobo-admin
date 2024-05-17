CustomTranslations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Item “Translations”
    New or existing translations are managed and administered in the "Translations"

.. figure:: images/ItemTranslations.png
   :alt: Widget Languages

    Widget Languages


   By clicking on the Translations item, the user displays the subaction "Overview".

.. figure:: images/ModuleTranslations.png
   :alt: Overview Module Translations

    Overview Module Translations

   It contains the following elements:

Language Dropdown
   To select the working language (By default the language of the User in session is selected).

.. figure:: images/Actions.png
   :alt: Actions - Languages

    Actions - Languages


Add Translation
   To add a new translation in the system.

Edit Translations
   To modify an existing translation.

Deploy Translations
   To display the translations in the system.

.. figure:: images/ActionsTranslations.png
   :alt: Buttons Translations

    Buttons Translations


Active Translations 
    Table with all translations displayed.

.. figure:: images/ActiveTranslations.png
   :alt: Table Active Translations

    Table Active Translations


Filter
    To filter the translation table.

.. figure:: images/Filter.png
   :alt: Filter Active Translations

    Filter Active Translations


Translation States
    Possible translation statuses.

.. figure:: images/TranslationsState.png
   :alt: Widget States Translations

    Widget States Translations
   
- New translation: New translations pending to be deployed.
- Editing Translation: Edited translations pending deployment.
- Translation Marked for Deletion: Translations marked for deletion pending deployment.
- Deployed Translation: Active translations that have already been deployed.

.. figure:: images/TranslationsStates_2.png
   :alt: Display States Translations

    Display States Translations


Hint
    This widget contains a short explanatory text about the module.

.. figure:: images/Hint.png
   :alt: Widget Hint

    Widget Hint



Add translation screen
----------------------
    This function allows you to add a new translation to OTOBO and allows you to select each of the translatable data elements in the system.

.. figure:: images/AddTranslationsScreen.png
   :alt: Overview Add Translation

    Overview Add Translation

    When entering the section to add a new translation, a new screen is displayed with the following elements:

Actions
    This widget contains the "Go to Overview" button to return to the main screen of the module.

.. figure:: images/ActionsAddTranslations.png
   :alt: Widget actions Add Translation

    Widget actions Add Translation

Hint
    This widget contains a short explanatory text about the section the user is in.

.. figure:: images/HintAddTranslations.png
   :alt: Widget Hint Add Translation

    Widget Hint Add Translation

Language 
    Informative label of the language where the translation will be created.

Object
    Selectable options with element to translate: Dynamic field content, Dynamic field labels, General label, Priorities, Queue, Services, SLA, Templates, Ticket status, Ticket types.

.. figure:: images/ObjectAddTranslations.png
   :alt: Object field

    Object field

Dynamic Field List
    This field is displayed only when "Dynamic Field" is selected in the "Object" field. It contains the names of the dynamic fields.

.. figure:: images/DynamicFieldList.png
   :alt: Dynamic Field List

    Dynamic Field List

Content
    This text field contains the tags to translate.

.. figure:: images/Content.png
   :alt: Content Field

    Content Field

Translation
    Text field or table depending on the selected option, where the translation is entered.

.. figure:: images/TranslationField.png
   :alt: Translation Field  

    Translation Field

Button Save and Finish
    To save the translation and finish.

Cancel button
    To cancel the action.

.. figure:: images/ButtonSaveCancel.png
   :alt: Button - Save or Cancel


Selectable Options
------------------

Dynamic Field Contents
    Displays all existing dynamic fields and a dropdown field with values to translate is chosen

.. figure:: images/OptionDynamicFieldContents.png
   :alt: Table for translation - Dynamic Field Content

    Table for translation - Dynamic Field Content

Dynamic Field Labels
    Displays all existing dynamic fields in the system and a field is chosen to translate the label

.. figure:: images/OptionDynamicFieldLabels.png
   :alt: Table for translation - Dynamic Field Labels

    Table for translation - Dynamic Field Labels
    

General Label
    Allows to translate any existing label in the system.

.. figure:: images/OptionGeneralLabel.png
   :alt: Fields for translation - General labes

    Fields for translation - General labes
   

Priorities
    Allows to translate the existing priorities in the system.

.. figure:: images/OptionPriorities.png
   :alt: Fields for translation - Priorities

    Fields for translation - Priorities

Queues
    Allows to translate all existing queues.

.. figure:: images/OptionQueues.png
   :alt: Fields for translation - Queues

    Fields for translation - Queues


Services
    Allows translation of all services.

.. figure:: images/OptionServices.png
   :alt: Fields for translation - Services

    Fields for translation - Services


SLAs
    Allows translation of all SLAs.

.. figure:: images/OptionSLAs.png
   :alt: Fields for translation - SLAs  

    Fields for translation - SLAs  


Templates
    Allows you to translate templates.

.. figure:: images/OptionsTemplates.png
   :alt: Fields for translation - Templates

    Fields for translation - Templates


Tickets States
    Allows translation of ticket statuses.

.. figure:: images/OptionTicketsStates.png
   :alt: Fields for translation - Ticket States

    Fields for translation - Ticket States



Tickets Types
    Allows translation of ticket types.

.. figure:: images/OptionTicketTypes.png
   :alt: Fields for translation - Ticket Types

    Fields for translation - Ticket Types



Edit Translation
----------------
    This section allows you to edit the translations displayed in the module. 

    When entering the section to edit translations a new screen is displayed with the following elements:

Translations
    Translation table with

.. figure:: images/TableEditTranslations.png
   :alt: List of translations for editing

    List of translations for editing

- Filter Content: Translation filtering field.
- Content: content column with all the translated tags in the module.
- Translation: input column with all translations displayed with the possibility to edit and add a new translation.



Deploy Translation
------------------
    This function allows you to deploy translations, changing their status to deployed and adding them to the database or deleting them from the module when they are marked for deletion.

.. figure:: images/DeployTranslations.png
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

.. figure:: images/AddTemplate.png
   :alt: Fields Add template.

    Fields Add template.

   In the second step, the following fields are displayed:

.. figure:: images/Step2.png
   :alt: Fields Step 2.

    Fields Step 2.

Format
    Plain text format is selected.

Checkbox
    To indicate whether empty fields keep the current values.


    In the third step the following new fields are displayed:

Column Separator
    Allows you to choose the column separator between Colon (:), Comma(,), Period(.), Semicolon(;), Tabulator (TAB).

.. figure:: images/Step3_1.png
   :alt: Field Column separator Step 3.

    Field Column separator Step 3.


Charset
    The default character encoding is unmodifiable and according to the previously selected language.

.. figure:: images/Step3_2.png
   :alt: Field Charset Step 3.

    Field Charset Step 3.


Include Column Headers
    Allows you to choose between yes/no if the option is whether the file should have the column headers in the file to be imported.

.. figure:: images/Step3_3.png
   :alt: Field Include Column Headers Step 3.

    Field Include Column Headers Step 3.



    In the fourth step, the order of the file columns is defined:

.. figure:: images/Step4.png
   :alt: Information mapping table.

    Information mapping table.

Add Mapping Element
    To add the sections or columns of the file.


Key
    Source string: Text string to be translated.
    Translation English: Language in which the translation will be done.

.. figure:: images/Step4_1.png
   :alt: Mapped information.

    Mapped information.



    In the fifth step you define whether you want to export untranslated strings of specific objects:

.. figure:: images/Step5.png
   :alt: Search information.

    Search information.


Restrict export per search
    allows you to choose whether you want to restrict the export by searching for specific options.

Export Untranslated strings of
    allows you to choose the option from which the untranslated strings will be exported.

.. figure:: images/Step5_1.png
   :alt: Field Export Untraslated.

    Field Export Untraslated.



Ticket Information (Translation)
---------------------------------
    Attributes of the ticket such as Queues and Services that are translated using the translation module will be visible in the selection tree views of the fields.


Services in English

.. figure:: images/ServicesEnglish.png
   :alt: List Services.

    List Services.

Services translated to Spanish in tree view

.. figure:: images/ServicesSpanish.png
   :alt: List Services translated to Spanish.

    List Services translated to Spanish.


Queues in English

.. figure:: images/QueuesEnglish.png
   :alt: List Queues.

    List Queues.

Queues translated to Spanish in tree view

.. figure:: images/QueuesSpanish.png
   :alt: List Queues translated to Spanish.

    List Queues translated to Spanish.

