Ability for Multiple Values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A new functionality has been enabled for dynamic fields that allows having multiple values of the field in the published form.
Field Configuration

.. figure:: images/MultipleValues.jpg
    :alt: Configuration Multiple Values

    Configuration Multiple Values

In the configuration of dynamic fields, this option now appears, which when selecting the value "yes," enables an option to add more fields in the published form.

.. figure:: images/DisplayMultipleValues.jpg
   :alt: Display Multiple Values

    Display Multiple Values





Namespaces
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now OTOBO allows the creation of namespaces for dynamic fields. This feature enables organizing and structuring dynamic fields into groups, facilitating management and identification within the platform.

Namespaces act as prefixes for the names of dynamic fields. When creating a new dynamic field, you can assign a specific namespace, adding clarity and coherence to OTOBO's dynamic field management system.

To add a new namespace, navigate to the system configuration, under the setting: DynamicField::Namespaces.

.. figure:: images/namespaces-1.png
   :alt: Namespaces Settings

   Namespaces Settings

With one or more namespaces created, they can be selected in the 'Namespace' option within the dynamic field creation form.

.. figure:: images/namespaces2.png
   :alt: Namespaces field in Dynamic Field Creation

   Namespaces field in Dynamic Field Creation

Once a dynamic field is added to a namespace, its name will appear in the following format:

.. figure:: images/namespaces3.png
   :alt: Namespaces field in Dynamic Field Creation

   Namespaces field in Dynamic Field Creation

.. note::
  To use it in the Ticket Mask, you should call it by its name, using the namespace to which it belongs as a prefix.

.. figure:: images/namespaces4.png
   :alt: Namespaces in Ticket Masks

   Namespaces in Ticket Masks


