//-----------------------------------------------------------------------------
//                   Compiler.pas
// This include file contains common defines of compiler version for
// Delphi / C++Builder and also  / Turbo Delphi / Kylix / C# Builder
//                   Copyright(C)  2013 乣 2014 seizo
//                   Detect compiler version
//                   Supports Delphi 1 - Delphi XE7
//-----------------------------------------------------------------------------

// Delphi 1
{$IFDEF VER80}
  {$DEFINE VER80_PLUS}
{$ENDIF}

// Delphi 2
{$IFDEF VER90}
  {$DEFINE VER90_PLUS}
{$ENDIF}

// C++Builder 1
{$IFDEF VER93}
  {$DEFINE VER93_PLUS}
{$ENDIF}

// Delphi 3
{$IFDEF VER100}
  {$DEFINE VER100_PLUS}
{$ENDIF}

// C++Builder 3
{$IFDEF VER110}
  {$DEFINE VER110_PLUS}
{$ENDIF}

// Delphi 4
{$IFDEF VER120}
  {$DEFINE VER120_PLUS}
{$ENDIF}

// C++Builder 4
{$IFDEF VER125}
  {$DEFINE VER125_PLUS}
{$ENDIF}

// Delphi 5
// C++Builder 5
{$IFDEF VER130}
  {$DEFINE VER130_PLUS}
{$ENDIF}

// Delphi 6
// C++Builder 6
// Kylix / 2 / 3
{$IFDEF VER140}
  {$DEFINE VER140_PLUS}
{$ENDIF}

// Delphi 7 / 7.1
{$IFDEF VER150}
  {$DEFINE VER150_PLUS}
{$ENDIF}

// Delphi 8 for .NET
// IDE Integration Pack for Delphi 8
// IDE Integration Pack for C# Builder 1.0
{$IFDEF VER160}
  {$DEFINE VER160_PLUS}
{$ENDIF}

// Delphi 2005 (Win32 / .Net)
{$IFDEF VER170}
  {$DEFINE VER170_PLUS}
{$ENDIF}

// Delphi 2006 (Win32 / .NET)
// C++Builder 2006 (Win32 / .NET)
// Turbo Delphi
// Turbo C++
// Delphi 2007 (Win32)
// C++Builder 2007 (Win32)
{$IFDEF VER180}
  {$DEFINE VER180_PLUS}
{$ENDIF}

// Delphi 2007 (Win32)
// C++Builder 2007 (Win32)
{$IFDEF VER185}
  {$DEFINE VER185_PLUS}
{$ENDIF}

// Delphi 2007 for .Net
{$IFDEF VER190}
  {$DEFINE VER190_PLUS}
{$ENDIF}

// Delphi 2009 (Win32)
// C++Builder 2009 (Win32)
{$IFDEF VER200}
  {$DEFINE VER200_PLUS}
{$ENDIF}

// Delphi 2010 (Win32)
// C++Builder 2010 (Win32)
{$IFDEF VER210}
  {$DEFINE VER210_PLUS}
{$ENDIF}

// Delphi XE (Win32)
// C++Builder XE (Win32)
{$IFDEF VER220}
  {$DEFINE VER220_PLUS}
{$ENDIF}

// Delphi XE2 (Win32 / Win64 / OSX)
// C++Builder XE2 (Win32 / OSX)
{$IFDEF VER230}
  {$DEFINE VER230_PLUS}
{$ENDIF}

// Delphi XE3 (Win32 / Win64 / OSX)
// C++Builder XE3 (Win32 / Win64 / OSX)
{$IFDEF VER240}
  {$DEFINE VER240_PLUS}
{$ENDIF}

// Delphi XE4 (Win32 / Win64 / OSX / iOS)
// C++Builder XE4 (Win32 / Win64 / OSX)
{$IFDEF VER250}
  {$DEFINE VER250_PLUS}
{$ENDIF}

// Delphi XE5 (Win32 / Win64 / OSX / iOS / Android)
// C++Builder XE5 (Win32 / Win64 / OSX / iOS)
{$IFDEF VER260}
  {$DEFINE VER260_PLUS}
{$ENDIF}

// Delphi XE6 (Win32 / Win64 / OSX / iOS / Android)
// C++Builder XE6 (Win32 / Win64 / OSX / iOS / Android)
{$IFDEF VER270}
  {$DEFINE VER270_PLUS}
{$ENDIF}

// Delphi XE7 (Win32 / Win64 / OSX / iOS / Android)
// C++Builder XE7 (Win32 / Win64 / OSX / iOS / Android)
{$IFDEF VER280}
  {$DEFINE VER280_PLUS}
{$ENDIF}

{$IFDEF VER280_PLUS}
  {$DEFINE VER270_PLUS}
{$ENDIF}
{$IFDEF VER270_PLUS}
  {$DEFINE VER260_PLUS}
{$ENDIF}
{$IFDEF VER260_PLUS}
  {$DEFINE VER250_PLUS}
{$ENDIF}
{$IFDEF VER250_PLUS}
  {$DEFINE VER240_PLUS}
{$ENDIF}
{$IFDEF VER240_PLUS}
  {$DEFINE VER230_PLUS}
{$ENDIF}
{$IFDEF VER230_PLUS}
  {$DEFINE VER220_PLUS}
{$ENDIF}
{$IFDEF VER220_PLUS}
  {$DEFINE VER210_PLUS}
{$ENDIF}
{$IFDEF VER210_PLUS}
  {$DEFINE VER200_PLUS}
{$ENDIF}
{$IFDEF VER200_PLUS}
  {$DEFINE VER190_PLUS}
{$ENDIF}
{$IFDEF VER190_PLUS}
  {$DEFINE VER185_PLUS}
{$ENDIF}
{$IFDEF VER185_PLUS}
  {$DEFINE VER180_PLUS}
{$ENDIF}
{$IFDEF VER180_PLUS}
  {$DEFINE VER170_PLUS}
{$ENDIF}
{$IFDEF VER170_PLUS}
  {$DEFINE VER160_PLUS}
{$ENDIF}
{$IFDEF VER160_PLUS}
  {$DEFINE VER150_PLUS}
{$ENDIF}
{$IFDEF VER150_PLUS}
  {$DEFINE VER150_PLUS}
{$ENDIF}
{$IFDEF VER140_PLUS}
  {$DEFINE VER130_PLUS}
{$ENDIF}
{$IFDEF VER130_PLUS}
  {$DEFINE VER125_PLUS}
{$ENDIF}
{$IFDEF VER125_PLUS}
  {$DEFINE VER120_PLUS}
{$ENDIF}
{$IFDEF VER120_PLUS}
  {$DEFINE VER110_PLUS}
{$ENDIF}
{$IFDEF VER110_PLUS}
  {$DEFINE VER100_PLUS}
{$ENDIF}
{$IFDEF VER100_PLUS}
  {$DEFINE VER93_PLUS}
{$ENDIF}
{$IFDEF VER93_PLUS}
  {$DEFINE VER90_PLUS}
{$ENDIF}
{$IFDEF VER90_PLUS}
  {$DEFINE VER80_PLUS}
{$ENDIF}

// Unknown compiler version - assume Delphi XE7 compatible
{$IFNDEF VER80_PLUS}
  {$DEFINE VER280_PLUS}
{$ENDIF}

// All common defines of compiler version for Delphi / C++Builder and also
// Turbo Pascal / Borland Pascal / Turbo Delphi / Kylix / C# Builder

// ----------------- VER40 -----------------------------
// Turbo Pascal 4.0
// -----------------------------------------------------

// ----------------- VER50 -----------------------------
// Turbo Pascal 5.0
// -----------------------------------------------------

// ----------------- VER55 -----------------------------
// Turbo Pascal 5.5
// -----------------------------------------------------

// ----------------- VER60 -----------------------------
// Turbo Pascal 6.0
// -----------------------------------------------------

// ----------------- VER10 -----------------------------
// Turbo Pascal for Windows 1.0
// -----------------------------------------------------

// ----------------- VER15 -----------------------------
// Turbo Pascal for Windows 1.5
// -----------------------------------------------------

// ----------------- VER70 -----------------------------
// Borland Pascal 7.0
// -----------------------------------------------------

// ----------------- VER80 -----------------------------
// Delphi 1
// -----------------------------------------------------

// ----------------- VER90 -----------------------------
// Delphi 2
// -----------------------------------------------------

// ----------------- VER93 -----------------------------
// C++Builder 1
// -----------------------------------------------------

// ----------------- VER100 ----------------------------
// Delphi 3
// -----------------------------------------------------

// ----------------- VER110 ----------------------------
// C++Builder 3
// -----------------------------------------------------

// ----------------- VER120 ----------------------------
// Delphi 4
// -----------------------------------------------------

// ----------------- VER125 ----------------------------
// C++Builder 4
// -----------------------------------------------------

// ----------------- VER130 ----------------------------
// Delphi 5
// C++Builder 5
// -----------------------------------------------------

// ----------------- VER140 ----------------------------
// Delphi 6
// C++Builder 6
// Kylix / 2 / 3
// -----------------------------------------------------

// ----------------- VER150 ----------------------------
// Delphi 7 / 7.1
// -----------------------------------------------------

// ----------------- VER160 ----------------------------
// Delphi 8 for .NET
// IDE Integration Pack for Delphi 8
// IDE Integration Pack for C# Builder 1.0
// -----------------------------------------------------

// ----------------- VER170 ----------------------------
// Delphi 2005 (Win32 / .Net)
// -----------------------------------------------------

// ----------------- VER180 ----------------------------
// Delphi 2006 (Win32 / .NET)
// C++Builder 2006 (Win32 / .NET)
// Turbo Delphi
// Turbo C++
// Delphi 2007 (Win32)
// C++Builder 2007 (Win32)
// -----------------------------------------------------

// ----------------- VER185 ----------------------------
// Delphi 2007 (Win32)
// C++Builder 2007 (Win32)
// -----------------------------------------------------

// ----------------- VER190 ----------------------------
// Delphi 2007 for .Net
// -----------------------------------------------------

// ----------------- VER200 ----------------------------
// Delphi 2009 (Win32)
// C++Builder 2009 (Win32)
// -----------------------------------------------------

// ----------------- VER210 ----------------------------
// Delphi 2010 (Win32)
// C++Builder 2010 (Win32)
// -----------------------------------------------------

// ----------------- VER220 ----------------------------
// Delphi XE (Win32)
// C++Builder XE (Win32)
// -----------------------------------------------------

// ----------------- VER230 ----------------------------
// Delphi XE2 (Win32 / Win64 / OSX)
// C++Builder XE2 (Win32 / OSX)
// -----------------------------------------------------

// ----------------- VER240 ----------------------------
// Delphi XE3 (Win32 / Win64 / OSX)
// C++Builder XE3 (Win32 / Win64 / OSX)
// -----------------------------------------------------

// ----------------- VER250 ----------------------------
// Delphi XE4 (Win32 / Win64 / OSX / iOS)
// C++Builder XE4 (Win32 / Win64 / OSX)
// -----------------------------------------------------

// ----------------- VER260 ----------------------------
// Delphi XE5 (Win32 / Win64 / OSX / iOS / Android)
// C++Builder XE5 (Win32 / Win64 / OSX / iOS)
// -----------------------------------------------------

// ----------------- VER270 ----------------------------
// Delphi XE6 (Win32 / Win64 / OSX / iOS / Android)
// C++Builder XE6 (Win32 / Win64 / OSX / iOS / Android)
// -----------------------------------------------------

// ----------------- VER280 ----------------------------
// Delphi XE7 (Win32 / Win64 / OSX / iOS / Android)
// C++Builder XE7 (Win32 / Win64 / OSX / iOS / Android)
// -----------------------------------------------------


