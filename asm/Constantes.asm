// ------Controle-------
constant NEWPAGE($FC)
constant NEWSPACE($FD)
constant NEWLINE($FE)
constant ENDSTRING($FF)
constant CREDIT3B($3B)

// VDP
constant BG3($2109)
constant VDP_CTRL($2115)
constant VDP_DATA($2116)
constant REG_STAT77($213E)
constant REG_STAT78($213F)

// CPU DMA Ports (Read/Write) ($43XP X = Channel Number 0..7, P = Port)
constant REG_DMAP0($4300)    // DMA0 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD0($4301)    // DMA0 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T0L($4302)    // DMA0 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T0H($4303)    // DMA0 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B0($4304)     // DMA0 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS0L($4305)    // DMA0 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS0H($4306)    // DMA0 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB0($4307)    // DMA0 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A0L($4308)    // DMA0 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A0H($4309)    // DMA0 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL0($430A)    // DMA0 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED0($430B)  // DMA0 Unused Byte                                      1B/RW
// $430C..$430E - Unused Region (Open Bus)
constant REG_MIRR0($430F)    // DMA0 Mirror Of $430B                                  1B/RW

constant REG_DMAP1($4310)    // DMA1 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD1($4311)    // DMA1 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T1L($4312)    // DMA1 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T1H($4313)    // DMA1 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B1($4314)     // DMA1 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS1L($4315)    // DMA1 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS1H($4316)    // DMA1 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB1($4317)    // DMA1 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A1L($4318)    // DMA1 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A1H($4319)    // DMA1 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL1($431A)    // DMA1 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED1($431B)  // DMA1 Unused Byte                                      1B/RW
// $431C..$431E - Unused Region (Open Bus)
constant REG_MIRR1($431F)    // DMA1 Mirror Of $431B                                  1B/RW

constant REG_DMAP2($4320)    // DMA2 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD2($4321)    // DMA2 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T2L($4322)    // DMA2 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T2H($4323)    // DMA2 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B2($4324)     // DMA2 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS2L($4325)    // DMA2 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS2H($4326)    // DMA2 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB2($4327)    // DMA2 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A2L($4328)    // DMA2 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A2H($4329)    // DMA2 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL2($432A)    // DMA2 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED2($432B)  // DMA2 Unused Byte                                      1B/RW
// $432C..$432E - Unused Region (Open Bus)
constant REG_MIRR2($432F)    // DMA2 Mirror Of $432B                                  1B/RW

constant REG_DMAP3($4330)    // DMA3 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD3($4331)    // DMA3 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T3L($4332)    // DMA3 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T3H($4333)    // DMA3 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B3($4334)     // DMA3 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS3L($4335)    // DMA3 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS3H($4336)    // DMA3 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB3($4337)    // DMA3 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A3L($4338)    // DMA3 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A3H($4339)    // DMA3 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL3($433A)    // DMA3 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED3($433B)  // DMA3 Unused Byte                                      1B/RW
// $433C..$433E - Unused Region (Open Bus)
constant REG_MIRR3($433F)    // DMA3 Mirror Of $433B                                  1B/RW

constant REG_DMAP4($4340)    // DMA4 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD4($4341)    // DMA4 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T4L($4342)    // DMA4 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T4H($4343)    // DMA4 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B4($4344)     // DMA4 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS4L($4345)    // DMA4 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS4H($4346)    // DMA4 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB4($4347)    // DMA4 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A4L($4348)    // DMA4 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A4H($4349)    // DMA4 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL4($434A)    // DMA4 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED4($434B)  // DMA4 Unused Byte                                      1B/RW
// $434C..$434E - Unused Region (Open Bus)
constant REG_MIRR4($434F)    // DMA4 Mirror Of $434B                                  1B/RW

constant REG_DMAP5($4350)    // DMA5 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD5($4351)    // DMA5 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T5L($4352)    // DMA5 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T5H($4353)    // DMA5 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B5($4354)     // DMA5 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS5L($4355)    // DMA5 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS5H($4356)    // DMA5 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB5($4357)    // DMA5 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A5L($4358)    // DMA5 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A5H($4359)    // DMA5 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL5($435A)    // DMA5 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED5($435B)  // DMA5 Unused Byte                                      1B/RW
// $435C..$435E - Unused Region (Open Bus)
constant REG_MIRR5($435F)    // DMA5 Mirror Of $435B                                  1B/RW

constant REG_DMAP6($4360)    // DMA6 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD6($4361)    // DMA6 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T6L($4362)    // DMA6 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T6H($4363)    // DMA6 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B6($4364)     // DMA6 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS6L($4365)    // DMA6 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS6H($4366)    // DMA6 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB6($4367)    // DMA6 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A6L($4368)    // DMA6 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A6H($4369)    // DMA6 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL6($436A)    // DMA6 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED6($436B)  // DMA6 Unused Byte                                      1B/RW
// $436C..$436E - Unused Region (Open Bus)
constant REG_MIRR6($436F)    // DMA6 Mirror Of $436B                                  1B/RW

constant REG_DMAP7($4370)    // DMA7 DMA/HDMA Parameters                              1B/RW
constant REG_BBAD7($4371)    // DMA7 DMA/HDMA I/O-Bus Address (PPU-Bus AKA B-Bus)     1B/RW
constant REG_A1T7L($4372)    // DMA7 DMA/HDMA Table Start Address (Lower 8-Bit)       2B/RW
constant REG_A1T7H($4373)    // DMA7 DMA/HDMA Table Start Address (Upper 8-Bit)       1B/RW
constant REG_A1B7($4374)     // DMA7 DMA/HDMA Table Start Address (Bank)              1B/RW
constant REG_DAS7L($4375)    // DMA7 DMA Count / Indirect HDMA Address (Lower 8-Bit)  2B/RW
constant REG_DAS7H($4376)    // DMA7 DMA Count / Indirect HDMA Address (Upper 8-Bit)  1B/RW
constant REG_DASB7($4377)    // DMA7 Indirect HDMA Address (Bank)                     1B/RW
constant REG_A2A7L($4378)    // DMA7 HDMA Table Current Address (Lower 8-Bit)         2B/RW
constant REG_A2A7H($4379)    // DMA7 HDMA Table Current Address (Upper 8-Bit)         1B/RW
constant REG_NTRL7($437A)    // DMA7 HDMA Line-Counter (From Current Table entry)     1B/RW
constant REG_UNUSED7($437B)  // DMA7 Unused Byte                                      1B/RW
// $437C..$437E - Unused Region (Open Bus)
constant REG_MIRR7($437F)    // DMA7 Mirror Of $437B                                  1B/RW
// $4380..$5FFF - Unused Region (Open Bus)

// Further Memory
// $6000..$7FFF - Expansion (Battery Backed RAM, In HiROM Cartridges)
// $8000..$FFFF - Cartridge ROM

// CPU On-Chip I/O Ports (Write-only, Read=Open Bus)
constant REG_NMITIMEN($4200) // Interrupt Enable & Joypad Request                     1B/W
constant REG_WRIO($4201)     // Programmable I/O Port (Open-Collector Output)         1B/W
constant REG_WRMPYA($4202)   // Set Unsigned  8-Bit Multiplicand                      1B/W
constant REG_WRMPYB($4203)   // Set Unsigned  8-Bit Multiplier & Start Multiplication 1B/W
constant REG_WRDIVL($4204)   // Set Unsigned 16-Bit Dividend (Lower 8-Bit)            2B/W
constant REG_WRDIVH($4205)   // Set Unsigned 16-Bit Dividend (Upper 8-Bit)            1B/W
constant REG_WRDIVB($4206)   // Set Unsigned  8-Bit Divisor & Start Division          1B/W
constant REG_HTIMEL($4207)   // H-Count Timer Setting (Lower 8-Bit)                   2B/W
constant REG_HTIMEH($4208)   // H-Count Timer Setting (Upper 1bit)                    1B/W
constant REG_VTIMEL($4209)   // V-Count Timer Setting (Lower 8-Bit)                   2B/W
constant REG_VTIMEH($420A)   // V-Count Timer Setting (Upper 1-Bit)                   1B/W
constant REG_MDMAEN($420B)   // Select General Purpose DMA Channels & Start Transfer  1B/W
constant REG_HDMAEN($420C)   // Select H-Blank DMA (H-DMA) Channels                   1B/W
constant REG_MEMSEL($420D)   // Memory-2 Waitstate Control                            1B/W


    
	
	
	