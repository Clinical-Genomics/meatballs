---
title: IconPCR - Individual well control qPCR system
revision_date: 2026-03-11
yearly_revision_date: 2026-09-15
owner: simon.sundling@scilifelab.se
---

# IconPCR instrument - WIP, do not use

## Purpose

Provide instructions on how to properly operate and maintain the n6tec IconPCR instrument(s).

## General info

The iconPCR System is the only Real-Time PCR platform with individually controlled wells while utilizing a standard 96-well format that is currently deployed for high throughput genomics. Traditional thermocyclers use a large block to control temperature cycling with no individual well control or fluorescence detection, with qPCR instruments acting as thermocyclers with the addition of registering fluorescent signals from each well.

The IconPCR instrument has novel features combining elements of traditional thermocyclers and qPCR systems:

1. **Individual well control** -it can stop PCR cycling on individual wells while keeping the PCRs running in other wells.
1. **_Autonorm_ features** -registering the fluorescent signal from each well and having automated options on when to terminate PCR cycling has met the conditions for terminating the PCR.

The motivation for utilising a system such as the IconPCR is to have better uniformity in library yield for each PCR in a plate, avoiding over-amplification (too much product) for high quality samples and ensuring proper library yield for low quality and/or quantity samples (which often otherwise fail to reach sufficient yield for a set PCR cycle number and have to be cancelled or reprepped).

![image](../small_laboratory_equipment/images/IconPCR_instrument_n6tec.png)

_Image of the IconPCR instrument with drawer open_

![image](images/IconPCR_instrument_n6tec.png)

_Image of the IconPCR instrument with drawer open_

The electronic [logbook for IconPCR](https://docs.google.com/spreadsheets/d/1n1LqTXOZyvNmvATAjv6VL7cNkGL68kz1OGPmipIJxS8/edit?gid=776713845#gid=776713845) is located on _Google Drive Clinical Genomics/Logbooks_.

Equipment responsible is listed in [Atlas Equipment & tools](../../clinical_operations/equipment_and_tools.md) and the responsible person(s) for the equipment can be found in [Functions and signature list](../../../organisation/organisation/functions_and_signature_list.md).

### Communication

The handling of this instrument requires a license. Deviating results and other unforeseen problems should be discussed with HoU or PM. Communication regarding issues and updates related to the instructions in this document is done in the relevant mail and slack channels as listed in [Functions and signature list](../../../organisation/organisation/functions_and_signature_list.md).

### Equipment

| **Equipment** | **Name** | **Manufacturer (Producer)** | **Supplier (Ordered from)** |
| ------------- | -------- | --------------------------- | --------------------------- |
| IconPCR       | _Icon_   | n6tec                       | n6tec                       |

### Material

These are the consumables and reagents recommended by n6tec for the IconPCR instrument:

| **Article name**                                                   | **Storage and comment**  | **Article no**        | **Manufacturer (Producer)** | **Supplier (Ordered from)** |
| ------------------------------------------------------------------ | ------------------------ | --------------------- | --------------------------- | --------------------------- |
| Plate: Semi-skirted black, white-welled Hard-Shell 96-well plate\* | Interim TGA Post-PCR lab | HSS-9665              | Bio-Rad                     | Bio-Rad                     |
| Semi-skirted blue, white-welled twin.tec 96-well plate\*           | Interim TGA Post-PCR lab | 732-2366 or 951022043 | Eppendorf                   | VWR                         |
| Semi-skirted white, white-welled twin.tec 96-well plate\*          | Interim TGA Post-PCR lab | 732-2367              | Eppendorf                   | VWR                         |
| Seal: Microseal B plastic cover\*\*                                | Interim TGA Post-PCR lab | MSB-1001              | Bio-Rad                     | Bio-Rad                     |
| Dye: SYBR Green I, 10,000x                                         | Interim TGA Post-PCR lab | S7563                 | Invitrogen                  | Thermofisher                |
| Dye: EvaGreen Dye, 20x                                             | Interim TGA Post-PCR lab | 31000                 | Biotium                     | None                        |
| Dye: EvaGreen Plus Dye, 20x                                        | Interim TGA Post-PCR lab | 31077                 | Biotium                     | VWR                         |
| KAPA HiFi HotStart ReadyMix\*\*\* (2X) (6.25ml)                    | Freezer in Post-PCR lab  | KK2602                | Roche                       | Wisum                       |

\*Clear well plates were also tested and validated on iconPCR, however, white well plates have an overall lower background and are thus recommended for use with auto-normalization applications.

\*\*Applied Biosystems MicroAmpTM Optical Adhesive Film (p/n 4311971) also works and is on the list of recommended consumables for the instrument.

\*\*\*Various PCR mixes (enzymes and buffers) can be used for qPCR.

### Software

- Computer log-in password:
    - _iconpcr_

- _**n6 application**_ is the name of the software that controls the IconPCR instrument.

- Cloud/online based analysis software:
    - Address: analysis.n6tec.com
    - User: guest
    - Password: iconPCR

### Labelling of equipment

There is a sticker on the back of the instrument with serial- and model numbers.

In the front of the instrument, the instrument is labelled with name **Icon** and date for next calibration.

For more information about the equipment's registration number and status labels, see section "Labelling for lab equipment" in [Equipment Control](../../../infrastructure/clinical_operations/equipment_control.md).

## Procedure

### Glossary

- **Cq**: quantification cycle. Indicates the number of cycles at which the amplification curve passes a predetermined threshold.

- **Protocol**: the ensemble of temperatures, times, cycles and data capture elements used for a specific run.

- **Autonorm**: short for _autonormalization_, is a function/feature that allows the instrument to automatically stop a well’s PCR cycling based on the recorded fluorescence in the end of every PCR cycle. This function is unique to the iconPCR instrument. Here are the autonorm settings possible to use:
    1. **Slope mode** (abbreviated as "**Slope**") will monitor the rate of increase in fluorescence. Once it has reached its maximum slope (as determined by the first derivative of the raw fluorescence plot), the instrument will stop cycling on that well. This is confirmed by 1 cycle of slope decrease, therefore the well will stop cycling at SlopeMax + 1.

    1. **xBaseline** (abbreviated as "**xB**") mode will stop the cycling once a well has reached a certain factor of the baseline (n x baseline). The baseline is determined as the average fluorescence on the first 3 cycles. If the threshold is set at 4, each well will stop cycling once its fluorescence reaches four times its baseline level.

    1. **Target Fluorescence** (abbreviated as "**TF**") mode allows the user to determine a set level of fluorescence, and the cycling will stop once a well reaches said level. For example, if the threshold is set at 1000, a PCR will stop cycling as soon as its fluorescence level passes 1000.

### General operating instructions

If unexpected problems occur, or you are unsure how to operate the instrument, contact the equipment responsible person.

1. Always use the recommended consumables:
    - Semi-skirted qPCR plates, with the correct well color (white or clear) for the method.
    - A clear seal verified to work with the instrument, such as the _BioRad Microseal B_.

1. Use an appropriate fluorophore in the PCRs. _20X EvaGreen Plus, in water_ is confirmed by extensive testing to work well when paired with the instrument.

1. Start the system:
    1. Power on the instrument by pressing the switch on the back of the instrument, near the power cable.

    1. Turn on the computer. Sign in to windows using the computer log in password: _iconpcr_

    1. Start the **n6 application** software from the shortcut icon on the desktop.

1. Open the instrument tray to put the plate on the deck by clicking the button labeled _Open_ in the bottom left corner of the software window. When clicked, it will open the tray which harbours the qPCR plate. Click the same button again to _Close_ the tray.

1. To turn the instrument OFF: First, click the _Shut Down_ button in the instruments software. When the instrument has completely shut down, turn the instrument off using the power switch on the back of the instrument. Fold the screen on the computer to put it in standby mode.

How to interpret the LED display status bar for normal operation:

|  LED Display   |                 Status                 |           Action           |
| :------------: | :------------------------------------: | :------------------------: |
|   Solid blue   |            Instrument idle             |    NA, Normal operation    |
|  Solid green   |            Run in progress             |    NA, Normal operation    |
| Flashing green | Experiment starting/heated lid warming |    NA, Normal operation    |
|    No light    |      Manual shutdown in progress.      | Turn off the power switch. |

### Starting a run

1. **Select protocol**: Select an existing protocol from the list of recently run protocols, or create a new one.

2. **Select samples** to be run: Click on _Plate View_. Select the wells that are hosting PCRs for the run. If no wells are selected, the instrument will run the protocol on all 96 wells by default. You can assign the respective designator to each well (Unknown, Reference, Standards, NTC, Empty).

3. **Drawer operation**:
    1. Click the “_Open_” button on the bottom left of the n6 application.
    1. In the window that opened, click "_Open Drawer_" to open the drawer.
    1. Position the PCR plate on the white adapter, making sure the plate sits flat on the adapter.
    1. Click “_Close Drawer_” button.
    1. Exit the drawer operation window by pressing the **X**.

![image](../small_laboratory_equipment/images/IconPCR_Open_drawer_n6_Application.png)

1. **Start the PCR**: Click the “Run” button. Then choose the option “Run” or “Save and Run” (if you have made changes to the protocol and would like to save those for future uses).

1. **Check that the run has started**: Do not leave before making sure that the run has actually started, which is apparent when checking for one of these signs:
    1. Temperature has ramped to 98C in the _Temperature_ window under the _Fluorescence_ window in the software interface.
    1. The button _End Experiment_ is visible and active on the left side of the software interface, under the plate view.
    1. Fluorescence has been registered for the 1st or 2nd cycle in the _Fluorescence_ window.

![image](../small_laboratory_equipment/images/IconPCR_n6_Application.png)
_Screenshot of the n6 application view when running an experiment._

#### Ending a run

1. The system will not end the run automatically, the user have to press the "End experiment" button in the _n6 application_ when cycling as stopped. The easiest way to tell if cycling has finished for all PCRs in a plate is to view the temperature graph in the software:
    - When all PCRs are at 12 C, the run can be terminated as it means all PCRs have been terminated either by autonorm termination or by reaching the max number of cycles.

1. After the protocol is done, click on “End Experiment”.

1. Retrieve the PCR plate by clicking the button labeled _Open_ in the bottom left corner of the software window. When clicked, it will open the tray which harbours the qPCR plate. Click the same button again to _Close_ the tray.

1. Data can be retrieved after ending the experiment by clicking the button “Export Data”.

1. Turn off the instrument:
    1. Click the _Shut Down_ button in the instruments software.
    1. Turn the instrument off using the power switch on the back of the instrument.
    1. Fold down the computer screen to put it in standby mode.

![image](../small_laboratory_equipment/images/IconPCR_Turning_IconPCR_off.png)

### Creating a new experiment

1. In the n6 application, click on _Default_ if you are looking to create a new experiment. Once the protocol is displayed, you can edit the different cycling parameters.

1. To **remove** a step, click on the ... icon associated with the step and select _Delete Step_.

1. To edit **ramp rate** for a step, click on the ... icon associated with the step and select _Ramp Rate_.

1. To add a **fluorescence capture step**, click on the ... associated with the step and select “Capture”.
    - This option is only available on the last step of a cycle (right before the GoTo step).

1. To adjust the **number of cycles** for the whole plate, type it in the designated cell, on the left side of the screen.

1. To program **variable numbers of cycles** (i.e fixed different cycle number in different wells of the plate), click on the _Variable_ toggle. The cycles can be programmed as gradients by row, columns or even the whole plate. Selecting _Individual Rows_ or _Individual Columns_ will allow the user to program the number of cycles by rows or columns.

1. To program an autonormalization run, Click on the Autonormalization toggle. You will be able to choose between 3 different modes: Slope, xBaseline and Target Fluorescence.
    1. **Slope mode** will monitor the rate of increase in fluorescence. Once it has reached its maximum slope (as determined by the first derivative of the raw fluorescence plot), the instrument will stop cycling on that well. This is confirmed by 1 cycle of slope decrease, therefore the well will stop cycling at SlopeMax + 1.
    1. **xBaseline** mode will stop the cycling once a well has reached a certain factor of the baseline (n x baseline). The baseline is determined as the average fluorescence on the first 3 cycles. If the threshold is set at 4, each well will stop cycling once its fluorescence reaches four times its baseline level.
    1. **Target Fluorescence** mode allows the user to determine a set level of fluorescence, and the cycling will stop once a well reaches said level. If the threshold is set at 1000, each well will stop cycling as soon as its fluorescence level passes 1000.
        - Note: preliminary knowledge of PCR patterns is recommended when using the Targeted Fluorescence or xBaseline modes. If the user sets a threshold that is too high, the wells will not pass it and will continue cycling until the maximum number of cycles is reached.

1. If extra amplification is desired after autonormalization, this can be programmed by adding Additional Cycles. This function will add the specified number of cycles after the reaction hits the specified condition (threshold or maximum slope).

1. Once the protocol is finalized, click on _Save experiment_ (you can name the new version of the experiment, or overwrite a previous version by simply clicking “Save”).

### File management

1. Retrieving existing data:
    1. Click on the “Data” tab on the left column.

    1. Files can be sorted by start time, end time or name. You can also utilize the “Search” function to locate your file.
    1. Select file of interest and click on it.

1. Retrieving an existing protocol:
    1. If searching for a previously used protocol, browse through the “Saved protocols list”.

    1. You are also able to use a preprogrammed template. If a modification is introduced to one of these templates, you will be prompted to save it under a different name.

#### NGS Library Prep Recommendations

When using iconPCR for NGS library preparations, a few parameters are to be kept in mind.

- **Number of cycles**
    - At the core, iconPCR is a technology developed to minimize the number of PCR cycles to the strict necessary. Whether adding library indexes or doing cDNA amplification, the goal is to reach the necessary mass of DNA without over-amplifying. This number will vary based on the application, the reagents and the samples used. Whenever setting up an _Autonormalization_ run, it is important to define a maximum number of cycles (“Max # of cycles”). This should be the number of cycles past which you would not want to use a library for sequencing. The maximum number of cycles can be the “recommended number of cycles” stated by the provider of the library preparation kit, but it can also be different. The number provided by commercial protocols is typically determined to be suited for the majority of cases. This means that it will over-amplify certain samples, while under-amplifying others. To avoid this, we recommend adding 2-4 cycles to the recommended number, and use this as the “Max # of cycles”.

- **Yield**
    - The level of fluorescence in the PCR reaction is correlated with the amount of double stranded DNA present. For certain applications, larger amounts of DNA are required than for others. If that is the case, it is important to tailor your _Autonormalization_ in order to produce a higher amount of DNA. For applications that require larger DNA yields, it is recommended to choose the Slopes mode, which tends to stop reactions at the higher end of the amplification curve. If needed, it is also possible to add cycles. This feature would allow the reaction to continue for the determined number of repetitions after the threshold has been met.
- **Pooling**
    - Another advantage of _Autonormalization_ is the fact that it allows samples to be amplified to comparable levels. By doing so, users are able to pool libraries directly and achieve a level of normalization that would otherwise require additional steps (bead purification, DNA quantification, manual normalization). The number of samples to be pooled will also influence the amount of DNA required. If 96 samples are to be pooled and sequenced, the amount of DNA needed from each sample will be smaller than if only 8 samples are to be processed.

- **Choosing an Autonormalization mode**
    - The following diagram is designed to help guide the decision making process when running an autonormalization experiment.

![IconPCR_decision_tree_for_autonorm](../../laboratory_equipment/small_laboratory_equipment/images/iconpcr_autonorm_tree.png)

- Has the PCR amplification been previously characterized?
    - No: these specific conditions (mix, indexes, input range, ...) have not been previously characterized
        - What is your priority?
            - Automatically generate relatively high yields of normalized libraries for pooling by equal volume: Choose Slope mode and use the same volume per library for pooling prior to cleanup.
            - Minimize the number of cycles per library: Choose xBaseline mode with a low threshold (1.2-1.5x recommended). Adjust pooling volume by fluorescence using the n6 app.

    - Yes: the conditions used for this experiment have previously been tested and the amplification parameters (baseline, endpoint fluorescence) are well characterized.
        - What is your priority?
            - Minimize the number of cycles per library:Choose xBaseline mode with a threshold that is compatible with your amplification profiles (>1.5x)and adjust pooling volume by fluorescence using the n6 app.
            - Generate tightly normalized libraries: Choose Target Fluorescence mode and select a threshold between the upper baseline and endpoint fluorescence (as determined by a representative sample of libraries). Use the same volume per library for pooling.

## Maintenance

### Troubleshooting

If the instrument should encounter any issues, please contact instrument responsible.

How to interpret the LED display status bar for troubleshooting:

|                             LED Display                             | Status                                                 | Action                                                                                |
| :-----------------------------------------------------------------: | :----------------------------------------------------- | :------------------------------------------------------------------------------------ |
| Cycling through 3 colors (blue, red and green), then return to blue | System just powered on and returning to idle           | NA, Normal operation                                                                  |
|                             Solid blue                              | Instrument idle                                        | NA, Normal operation                                                                  |
|                             Solid green                             | Run in progress                                        | NA, Normal operation                                                                  |
|                           Flashing green                            | Experiment starting/heated lid warming                 | NA, Normal operation                                                                  |
|                            Solid yellow                             | Possible hardware issue during run (run is proceeding) | Verify data, contact support.                                                         |
|                           Flashing yellow                           | Possible hardware issue and instrument is idle         | Verify data of last experiment and contact support.                                   |
|                              Solid red                              | Experiment failed to start/run aborted                 | Ensure a plate is loaded. Restart experiment. If the issue persists, contact support. |
|                            Flashing red                             | Safety checks failed during idling period              | Contact support.                                                                      |
|                              No light                               | Manual shutdown in progress.                           | Turn off the power switch.                                                            |

### Cleaning after contamination/spill

If the instrument is contaminated with reagents or any other contaminant, carefully clean as soon as possible with a lint-free cloth with distilled water or a diluted detergent such as _Yes_ in water, followed by wiping with cloth damp with 70-80% EtOH solution.

### Preventative Maintenance & Service

Until 2027-05-16 (date of full payment acceptance was 2025-05-16), the IconPCR instrument _Icon_ is/was under a 2 year warranty if any unforeseen issues occur.

When asked by e-mail about the requirements of maintenance in regards to the warranty and preventative maintenance in general 2025-12-09, Wes Austin at n6tec replied:

"_No annual maintenance is required to maintain [...] warranty. Furthermore, there is no annual preventative maintenance needed in order to maintain a stable, working unit._"

Servicing this equipment is the sole responsibility of n6 TEC and must only be performed by n6 TEC trained service personnel.

## Backup

The protocol files and plate layouts are externally backed up according to [Equipment Control](../../../infrastructure/clinical_operations/equipment_control.md).

## Transport

The instrument should be turned off and electricity should be disconnected before moving. Weighing 31 kg, it is recommended two people lift it when moving it short <10 m distances. Longer moving distances >10 m should be aided by a trolley.

Test of function must be performed after moving.

### Shipping

If the instrument is to be shipped, follow the procedure for fastnening the shipping screw:

1. Turn on the instrument.

1. Open the n6 software and click on the maintenance icon in the bottom left corner.
1. Within the _Maintenance_ window, click the blue Home for Shipping button. You should hear the movement within the instrument. Wait until the sound has stopped before proceeding.
1. Turn off the instrument and unplug from the power outlet and computer.
1. Insert the shipping screw in the hole on the left side of the instrument and tighten with your fingers. Once the screw is secure, the instrument is ready to be packed up for shipping.

- Additionally, the instrument often needs to be decontaminated according to the requirements of the destination site.
    - Make sure to follow their specified recommendations for decontamination procedure and,
    - Fill in a decontamination statement upon request.

## Test of function

For test of function, start any program with a semi-skirted plate without any samples/liquid in it, follow the section **Starting a run** and make sure that there are no errors in the software. Document the results according to [Equipment Control](../../../infrastructure/clinical_operations/equipment_control.md).

## References

- [IconPCR instrument User Manual v1.1.pdf](../small_laboratory_equipment/resources/iconPCR_instrument_manual_v1_1.pdf), uploaded 2025-04-25
- [IconPCR recommended consumables.pdf](https://drive.google.com/drive/u/0/folders/1u7xD6CTuuzHTlX0FiZqzwZuQt09_wsHq), uploaded 2025-04-25
- [IconPCR procurement folder](https://drive.google.com/drive/folders/1Ontof3pycsgvj8P0MxmkHfPFme8TX9On) - See "Purchase order 6Tec IconPCR 2025-02-17.pdf" for purchase details, such as warranty etc.
- [IconPCR validation PR](https://github.com/Clinical-Genomics/validations/pull/330)

## Testing formatting

### Nested instructions in Admonitions

Instructions fetched from RC WGS, how they look un-nested:

1. In LIMS **LAB VIEW** scroll to _Step 3 >> Buffer Exchange WGS v1_ and click it.
    1. Process **all samples** at the same time, adding them with the blue _Add Group_ button. Press the green _VIEW ICE BUCKET_ and _BEGIN WORK_ buttons to open the LIMS step.

    1. In the _Place Samples_ tab:
        1. Place all samples in the same order from the "_Samples To Be Placed_" plate into the "_Placed Samples_" plate.
        1. Name the plate (copy-paste it from the left to the right plate) **rcYYMMDDwgs bex**.
        1. Press the green _RECORD DETAILS_ button.

    1. In the _Step Details_ window, fill in the 7 UDFs correctly.

    1. Press the blue buttons:
        1. _Copy Sample Volume (μl) from Sample Placement_, then
        1. _Calculate volumes_

    1. In the window _Samples_, the barcode of the output plate (from step 1, above) needs to be added to the UDF _Output Container Barcode_. Press _Apply_ to associate the output barcode to all samples in the list.

    1. Press the _Save_ button.

    1. Continue to follow the instructions for either Buffer exchange performed on the Hamilton instrument (Option 1) or manually (Option 2).

How they look nested:

??? note "LIMS instructions"

    1. In LIMS **LAB VIEW** scroll to _Step 3 >> Buffer Exchange WGS v1_ and click it.
        1. Process **all samples** at the same time, adding them with the blue _Add Group_ button. Press the green _VIEW ICE BUCKET_ and _BEGIN WORK_ buttons to open the LIMS step.

        1. In the _Place Samples_ tab:
            1. Place all samples in the same order from the "_Samples To Be Placed_" plate into the "_Placed Samples_" plate.
            1. Name the plate (copy-paste it from the left to the right plate) **rcYYMMDDwgs bex**.
            1. Press the green _RECORD DETAILS_ button.

        1. In the _Step Details_ window, fill in the 7 UDFs correctly.
        1. Press the blue buttons:
            1. _Copy Sample Volume (μl) from Sample Placement_, then
            1. _Calculate volumes_

        1. In the window _Samples_, the barcode of the output plate (from step 1, above) needs to be added to the UDF _Output Container Barcode_. Press _Apply_ to associate the output barcode to all samples in the list.

        1. Press the _Save_ button.

        1. Continue to follow the instructions for either Buffer exchange performed on the Hamilton instrument (Option 1) or manually (Option 2).

??? note "LIMS instructions"

    - In LIMS **LAB VIEW** scroll to _Step 3 >> Buffer Exchange WGS v1_ and click it.
        - Process **all samples** at the same time, adding them with the blue _Add Group_ button. Press the green _VIEW ICE BUCKET_ and _BEGIN WORK_ buttons to open the LIMS step.

        - In the _Place Samples_ tab:
            - Place all samples in the same order from the "_Samples To Be Placed_" plate into the "_Placed Samples_" plate.
            - Name the plate (copy-paste it from the left to the right plate) **rcYYMMDDwgs bex**.
            - Press the green _RECORD DETAILS_ button.

        - In the _Step Details_ window, fill in the 7 UDFs correctly.
        - Press the blue buttons:
            - _Copy Sample Volume (μl) from Sample Placement_, then
            - _Calculate volumes_

        - In the window _Samples_, the barcode of the output plate (from step 1, above) needs to be added to the UDF _Output Container Barcode_. Press _Apply_ to associate the output barcode to all samples in the list.

        - Press the _Save_ button.

        - Continue to follow the instructions for either Buffer exchange performed on the Hamilton instrument (Option 1) or manually (Option 2).
