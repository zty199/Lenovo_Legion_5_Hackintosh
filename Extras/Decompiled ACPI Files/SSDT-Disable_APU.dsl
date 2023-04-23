/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLCEFYmR.aml, Sun Apr 23 20:56:53 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BA (186)
 *     Revision         0x02
 *     Checksum         0xBB
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "spoof"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "spoof", 0x00000000)
{
    External (_SB_.PCI0.GP17.VGA_, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Method (_SB.PCI0.GP17.VGA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((!Arg2 || !_OSI ("Darwin")))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x06)
            {
                "name", 
                Buffer (0x09)
                {
                    "#display"
                }, 

                "IOName", 
                "#display", 
                "class-code", 
                Buffer (0x04)
                {
                     0xFF, 0xFF, 0xFF, 0xFF                           // ....
                }
            })
        }
    }
}

