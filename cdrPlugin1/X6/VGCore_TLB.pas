unit VGCore_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 2016/4/4 12:35:41 from Type Library described below.

// ************************************************************************  //
// Type Lib: d:\Program Files\Corel\CorelDRAW Graphics Suite X6\Programs64\VGCoreAuto.tlb (1)
// LIBID: {95E23C91-BC5A-49F3-8CD1-1FC515597048}
// LCID: 0
// Helpfile: d:\Program Files\Corel\CorelDRAW Graphics Suite X6\\Data\draw_om.chm 
// HelpString: Corel - Vector Graphics Core 16.1 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN64
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Invoke' of 'Automation' changed to 'Invoke_'
//   Hint: Member 'Repeat' of 'IVGDocument' changed to 'Repeat_'
//   Hint: Member 'Unit' of 'IVGDocument' changed to 'Unit_'
//   Hint: Member 'Class' of 'IVGApplication' changed to 'Class_'
//   Hint: Member 'Unit' of 'IVGApplication' changed to 'Unit_'
//   Hint: Parameter 'String' of IVGApplication.ConvertToUnicode changed to 'String_'
//   Hint: Parameter 'String' of IVGApplication.ConvertFromUnicode changed to 'String_'
//   Hint: Parameter 'Type' of IVGPage.Guides changed to 'Type_'
//   Hint: Parameter 'Type' of IVGPage.FindShape changed to 'Type_'
//   Hint: Parameter 'Type' of IVGPage.FindShapes changed to 'Type_'
//   Hint: Parameter 'End' of IVGLayer.CreateConnector changed to 'End_'
//   Hint: Parameter 'Type' of IVGLayer.FindShape changed to 'Type_'
//   Hint: Parameter 'Type' of IVGLayer.FindShapes changed to 'Type_'
//   Hint: Parameter 'Type' of IVGLayer.CreateLinearDimension changed to 'Type_'
//   Hint: Parameter 'Library' of IVGLayer.CreateSymbol changed to 'Library_'
//   Hint: Parameter 'Type' of IVGLayer.CreateConnectorEx changed to 'Type_'
//   Hint: Parameter 'End' of IVGLayer.CreateConnectorEx changed to 'End_'
//   Hint: Parameter 'End' of IVGLayer.CreateRightAngleConnector changed to 'End_'
//   Hint: Parameter 'Type' of IVGShapes.FindShape changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapes.FindShapes changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.CreateDropShadow changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.CreateExtrude changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.CreateLens changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.ClearEffect changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.AlignToShape changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.AlignToShapeRange changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.AlignToPage changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.AlignToPageCenter changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.AlignToGrid changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.AlignToPoint changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShape.Distribute changed to 'Type_'
//   Hint: Parameter 'Type' of IVGNodeRange.SetType changed to 'Type_'
//   Hint: Parameter 'Type' of IVGSegmentRange.SetType changed to 'Type_'
//   Hint: Parameter 'Type' of IVGColor.Type changed to 'Type_'
//   Hint: Parameter 'Type' of IVGPalette.Type changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.ApplyFountainFill changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.ApplyPatternFill changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.ClearEffect changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignToShape changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignToShapeRange changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignToPage changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignToPageCenter changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignToGrid changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignToPoint changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.Distribute changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignRangeToShape changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignRangeToShapeRange changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignRangeToPage changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignRangeToPageCenter changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignRangeToGrid changed to 'Type_'
//   Hint: Parameter 'Type' of IVGShapeRange.AlignRangeToPoint changed to 'Type_'
//   Hint: Parameter 'Type' of IVGFill.Type changed to 'Type_'
//   Hint: Parameter 'Type' of IVGFill.ApplyFountainFill changed to 'Type_'
//   Hint: Parameter 'Type' of IVGFill.ApplyPatternFill changed to 'Type_'
//   Hint: Parameter 'Library' of IVGTextureFill.Select changed to 'Library_'
//   Hint: Member 'Library' of 'IVGHatchFill' changed to 'Library_'
//   Hint: Parameter 'Type' of IVGOutline.Type changed to 'Type_'
//   Hint: Parameter 'End' of IVGText.Range changed to 'End_'
//   Hint: Member 'Object' of 'IVGSnapPoint' changed to 'Object_'
//   Hint: Member 'End' of 'IVGTextRange' changed to 'End_'
//   Hint: Member 'Case' of 'IVGTextRange' changed to 'Case_'
//   Hint: Parameter 'Case' of IVGTextRange.ChangeCase changed to 'Case_'
//   Hint: Parameter 'End' of IVGTextRange.SetRange changed to 'End_'
//   Hint: Parameter 'End' of IVGTextRange.Range changed to 'End_'
//   Hint: Parameter 'Type' of IVGTextRange.SetLineSpacing changed to 'Type_'
//   Hint: Parameter 'Type' of IVGSnapPoints.BBox changed to 'Type_'
//   Hint: Member 'Object' of 'IVGSnapPoints' changed to 'Object_'
//   Hint: Parameter 'Type' of IVGSnapPoints.Object changed to 'Type_'
//   Hint: Member 'End' of 'IVGTransparency' changed to 'End_'
//   Hint: Parameter 'End' of IVGTransparency.ApplyFountainTransparency changed to 'End_'
//   Hint: Parameter 'Type' of IVGTransparency.ApplyFountainTransparency changed to 'Type_'
//   Hint: Parameter 'Type' of IVGTransparency.ApplyPatternTransparency changed to 'Type_'
//   Hint: Parameter 'Type' of IVGSpread.Guides changed to 'Type_'
//   Hint: Parameter 'Type' of ICorelScriptTools.GetFileBox changed to 'Type_'
//   Hint: Parameter 'File' of ICorelScriptTools.GetFileBox changed to 'File_'
//   Hint: Parameter 'Type' of ICorelScriptTools.GetType changed to 'Type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  VGCoreMajorVersion = 16;
  VGCoreMinorVersion = 1;

  LIBID_VGCore: TGUID = '{95E23C91-BC5A-49F3-8CD1-1FC515597048}';

  IID_ICorelImportFilter: TGUID = '{F5200003-8D23-0001-89E7-0000861EBBD6}';
  IID_ICorelExportFilter: TGUID = '{F5200000-8D23-0002-89E7-0000861EBBD6}';
  IID_CommandBars: TGUID = '{A2524E6E-50C1-11D3-8EA3-0090271BECDD}';
  IID_CommandBar: TGUID = '{A2524E6F-50C1-11D3-8EA3-0090271BECDD}';
  IID_CommandBarControls: TGUID = '{A2524E70-50C1-11D3-8EA3-0090271BECDD}';
  IID_CommandBarControl: TGUID = '{A2524E71-50C1-11D3-8EA3-0090271BECDD}';
  IID_CommandBarModes: TGUID = '{A2524E97-50C1-11D3-8EA3-0090271BECDD}';
  IID_CommandBarMode: TGUID = '{A2524E98-50C1-11D3-8EA3-0090271BECDD}';
  IID_Automation: TGUID = '{A2524E99-50C1-11D3-8EA3-0090271BECDD}';
  IID_ControlData: TGUID = '{099CD3E3-FB75-F191-4004-F3C5AAF84E15}';
  IID_FrameWork: TGUID = '{A2524E6D-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintLayout: TGUID = '{A25250A9-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrinter: TGUID = '{A2525098-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrinters: TGUID = '{A2525099-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBASeparationPlate: TGUID = '{A252509A-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBASeparationPlates: TGUID = '{A252509B-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintSeparations: TGUID = '{A252509C-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintPrepress: TGUID = '{A252509D-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintPostScript: TGUID = '{A252509E-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBATrapLayer: TGUID = '{A252509F-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBATrapLayers: TGUID = '{A25250A0-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintTrapping: TGUID = '{A25250A1-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintOptions: TGUID = '{A25250A2-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintSettings: TGUID = '{A25250A3-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintDocument: TGUID = '{A25250A4-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintDocuments: TGUID = '{A25250A5-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintPage: TGUID = '{A25250A6-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintPages: TGUID = '{A25250A7-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPrnVBAPrintJob: TGUID = '{A25250A8-50C1-11D3-8EA3-0090271BECDD}';
  IID_IPDFVBASettings: TGUID = '{A2524FFB-50C1-11D3-8EA3-0090271BECDD}';
  IID_IVGDocument: TGUID = '{B0580024-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGApplication: TGUID = '{B058000B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDocuments: TGUID = '{B0580025-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPage: TGUID = '{B0580048-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPages: TGUID = '{B0580049-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGLayers: TGUID = '{B0580041-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGLayer: TGUID = '{B0580040-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGShapes: TGUID = '{B058005F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGShape: TGUID = '{B058005D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGRectangle: TGUID = '{B0580057-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEllipse: TGUID = '{B0580037-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPolygon: TGUID = '{B0580051-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGCurve: TGUID = '{B0580019-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSubPaths: TGUID = '{B058006B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSubPath: TGUID = '{B058006A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGNodes: TGUID = '{B0580044-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGNode: TGUID = '{B0580042-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSegment: TGUID = '{B0580059-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGCrossPoints: TGUID = '{B0580018-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGCrossPoint: TGUID = '{B0580017-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGRect: TGUID = '{B05800A3-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGNodeRange: TGUID = '{B0580043-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSegmentRange: TGUID = '{B058005A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSegments: TGUID = '{B058005B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGBitmap: TGUID = '{B058000F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructPaletteOptions: TGUID = '{B0580067-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDuotone: TGUID = '{B0580091-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDuotoneOverprint: TGUID = '{B0580092-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColor: TGUID = '{B0580012-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColorContext: TGUID = '{B05800B0-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColorProfile: TGUID = '{B0580098-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColorProfiles: TGUID = '{B0580099-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPalette: TGUID = '{B058004C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColors: TGUID = '{B0580013-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDuotoneInk: TGUID = '{B0580093-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTraceSettings: TGUID = '{B05800A1-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGShapeRange: TGUID = '{B058005E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGOutlineStyle: TGUID = '{B0580046-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGArrowHead: TGUID = '{B058000D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGFill: TGUID = '{B0580038-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGFountainFill: TGUID = '{B058003C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGFountainColors: TGUID = '{B058003B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGFountainColor: TGUID = '{B058003A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPatternFill: TGUID = '{B0580050-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPatternCanvas: TGUID = '{B058004E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextureFill: TGUID = '{B0580079-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextureFillProperties: TGUID = '{B058007A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextureFillProperty: TGUID = '{B058007B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPostScriptFill: TGUID = '{B0580052-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPSScreenOptions: TGUID = '{B0580096-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGHatchFill: TGUID = '{B058009A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGHatchPatterns: TGUID = '{B058009B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGHatchPattern: TGUID = '{B058009C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGOutline: TGUID = '{B0580045-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGArrowHeadOptions: TGUID = '{B05800A7-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGHatchLibrary: TGUID = '{B058009E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGHatchFills: TGUID = '{B058009F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGText: TGUID = '{B0580071-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructFontProperties: TGUID = '{B0580064-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructAlignProperties: TGUID = '{B0580062-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructSpaceProperties: TGUID = '{B0580069-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructHyphenationSettings: TGUID = '{B0580066-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffect: TGUID = '{B0580026-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffects: TGUID = '{B0580036-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectBlend: TGUID = '{B0580027-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSnapPoint: TGUID = '{B0580060-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGUserSnapPoint: TGUID = '{B05800A8-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGObjectSnapPoint: TGUID = '{B05800A9-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGBBoxSnapPoint: TGUID = '{B05800AA-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEdgeSnapPoint: TGUID = '{B05800AC-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectControlPath: TGUID = '{B0580029-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectExtrude: TGUID = '{B058002D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGExtrudeVanishingPoint: TGUID = '{B058002E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectEnvelope: TGUID = '{B058002C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectTextOnPath: TGUID = '{B0580033-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectDropShadow: TGUID = '{B058002B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectContour: TGUID = '{B0580028-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectDistortion: TGUID = '{B058002A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectPushPullDistortion: TGUID = '{B0580032-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectZipperDistortion: TGUID = '{B0580035-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectTwisterDistortion: TGUID = '{B0580034-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectCustomDistortion: TGUID = '{B058001B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectLens: TGUID = '{B0580030-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEffectPerspective: TGUID = '{B0580031-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGCustomEffect: TGUID = '{B058001A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextRange: TGUID = '{B0580078-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextCharacters: TGUID = '{B0580072-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextWords: TGUID = '{B058007C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextLines: TGUID = '{B0580076-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextParagraphs: TGUID = '{B0580077-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextColumns: TGUID = '{B0580073-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextFrames: TGUID = '{B0580075-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextFrame: TGUID = '{B0580074-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextTabPositions: TGUID = '{B0580095-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextTabPosition: TGUID = '{B0580094-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTextRanges: TGUID = '{B05800A4-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyle: TGUID = '{B05800B8-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyleOutline: TGUID = '{B05800BB-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyleFill: TGUID = '{B05800BC-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyleCharacter: TGUID = '{B05800BD-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyleParagraph: TGUID = '{B05800BE-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyleFrame: TGUID = '{B05800BF-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyles: TGUID = '{B05800B9-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSnapPoints: TGUID = '{B0580061-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSnapPointRange: TGUID = '{B05800AB-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGConnector: TGUID = '{B0580016-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGProperties: TGUID = '{B0580054-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGuide: TGUID = '{B058003F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPowerClip: TGUID = '{B0580053-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGURL: TGUID = '{B058007E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDataItems: TGUID = '{B0580020-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDataItem: TGUID = '{B058001F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDataField: TGUID = '{B058001D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDataFields: TGUID = '{B058001E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGCloneLink: TGUID = '{B0580011-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTransparency: TGUID = '{B058007D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGCustomShape: TGUID = '{B058001C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDimension: TGUID = '{B0580021-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDimensionLinear: TGUID = '{B0580023-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGDimensionAngular: TGUID = '{B0580022-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSymbol: TGUID = '{B058006C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSymbolDefinition: TGUID = '{B058006D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSymbolDefinitions: TGUID = '{B058006E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGOLE: TGUID = '{B0580088-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTreeNode: TGUID = '{B058008F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTreeNodes: TGUID = '{B0580090-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGEPS: TGUID = '{B05800A0-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSpread: TGUID = '{B05800A5-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGBSpline: TGUID = '{B05800AD-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGBSplineControlPoints: TGUID = '{B05800AF-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGBSplineControlPoint: TGUID = '{B05800AE-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructImportOptions: TGUID = '{B0580085-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IImportCropHandler: TGUID = '{F5200005-8D23-0001-89E7-0000861EBBD6}';
  IID_IStructImportCropOptions: TGUID = '{B0580087-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IImportResampleHandler: TGUID = '{F5200004-8D23-0001-89E7-0000861EBBD6}';
  IID_IStructImportResampleOptions: TGUID = '{B0580086-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructColorConversionOptions: TGUID = '{B05800B2-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColorManagementPolicy: TGUID = '{B05800B1-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IColorConversionHandler: TGUID = '{7CB12D17-ECA6-0E87-46F7-E4D31C0D0500}';
  IID_IVGSymbolLibrary: TGUID = '{B0580070-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructPasteOptions: TGUID = '{B05800B5-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGWindow: TGUID = '{B0580081-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGWindows: TGUID = '{B0580082-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGActiveView: TGUID = '{B058000A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGProofColorSettings: TGUID = '{B05800B6-9AA4-44FD-9547-4F91EB757AC4}';
  IID_ICorelScriptTools: TGUID = '{B0580000-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGWorkspace: TGUID = '{B0580083-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGWorkspaces: TGUID = '{B0580084-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPalettes: TGUID = '{B058004D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGFontList: TGUID = '{B0580039-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGAppWindow: TGUID = '{B058000C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGRecentFiles: TGUID = '{B0580056-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGRecentFile: TGUID = '{B0580055-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGArrowHeads: TGUID = '{B058000E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGOutlineStyles: TGUID = '{B0580047-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPatternCanvases: TGUID = '{B058004F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGClipboard: TGUID = '{B0580010-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGAddins: TGUID = '{B0580002-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGAddinHook: TGUID = '{B0580001-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGMSManager: TGUID = '{B058003D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGMSProjects: TGUID = '{B058008A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGMSProject: TGUID = '{B058008B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGMSMacros: TGUID = '{B058008C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGMSMacro: TGUID = '{B058008D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructSaveAsOptions: TGUID = '{B0580068-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructExportOptions: TGUID = '{B0580063-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGComponents: TGUID = '{B0580015-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGComponent: TGUID = '{B0580014-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSymbolLibraries: TGUID = '{B058006F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGAppStatus: TGUID = '{B0580089-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPageSizes: TGUID = '{B058004B-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPageSize: TGUID = '{B058004A-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGTreeManager: TGUID = '{B058008E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGColorManager: TGUID = '{B0580097-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructOpenOptions: TGUID = '{B05800B3-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStructCreateOptions: TGUID = '{B05800B4-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGPaletteManager: TGUID = '{B05800B7-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGRulers: TGUID = '{B0580058-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGGrid: TGUID = '{B058003E-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGViews: TGUID = '{B0580080-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGView: TGUID = '{B058007F-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSelectionInformation: TGUID = '{B058005C-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGHatchLibraries: TGUID = '{B058009D-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGMetadata: TGUID = '{B05800A2-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGSpreads: TGUID = '{B05800A6-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGStyleSheet: TGUID = '{B05800BA-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGAddinHookEvents: TGUID = '{B0580004-9AA4-44FD-9547-4F91EB757AC4}';
  DIID_DIVGAddinHookEvents: TGUID = '{B0580003-9AA4-44FD-9547-4F91EB757AC4}';
  IID_IVGAppPlugin: TGUID = '{B0580005-9AA4-44FD-9547-4F91EB757AC4}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum cdrFilter
type
  cdrFilter = TOleEnum;
const
  cdrAutoSense = $00000000;
  cdr3DMF = $00000617;
  cdrAI = $00000519;
  cdrAI9 = $00000535;
  cdrAT1 = $00000517;
  cdrAVI = $00000600;
  cdrBMP = $00000301;
  cdrCAL = $00000320;
  cdrCDR = $00000703;
  cdrCDT = $00000708;
  cdrCDX = $00000704;
  cdrCGM = $00000500;
  cdrCLK = $0000070A;
  cdrCMX5 = $00000702;
  cdrCMX6 = $00000701;
  cdrCPT = $00000710;
  cdrCPT10 = $00000710;
  cdrCPT11 = $00000710;
  cdrCPT8 = $00000707;
  cdrCPT9 = $00000710;
  cdrCPX = $00000705;
  cdrCUR = $00000311;
  cdrDCS = $00000321;
  cdrDOC = $00000814;
  cdrDRW = $0000053B;
  cdrDSF = $0000053B;
  cdrDWG = $00000530;
  cdrDXF = $00000510;
  cdrEMF = $00000514;
  cdrEPS = $00000509;
  cdrEPSPhotoPaint = $00000324;
  cdrEXE = $00000312;
  cdrFH = $00000540;
  cdrFMV = $00000531;
  cdrFPX = $00000326;
  cdrGEM = $00000504;
  cdrGIF = $00000305;
  cdrGIFAnimation = $00000616;
  cdrHPGL = $00000501;
  cdrHTML = $00000615;
  cdrICO = $00000310;
  cdrIMG = $00000313;
  cdrJP2 = $00000334;
  cdrJPC = $00000335;
  cdrJPEG = $00000306;
  cdrJPG2000Import = $00000332;
  cdrMAC = $00000317;
  cdrMacWord5 = $00000804;
  cdrMET = $0000050B;
  cdrMIF = $00000875;
  cdrNAP = $0000050C;
  cdrOS2BMP = $00000318;
  cdrPAT = $00000709;
  cdrPCD = $00000307;
  cdrPCX = $00000302;
  cdrPDF = $00000535;
  cdrPIC = $00000536;
  cdrPICT = $0000050D;
  cdrPLT = $00000501;
  cdrPNG = $00000322;
  cdrPP4 = $00000315;
  cdrPP5 = $00000323;
  cdrPPF = $00000333;
  cdrPPT = $0000060C;
  cdrPSD = $00000314;
  cdrPSEncapsulated = $00000509;
  cdrPSInterpreted = $0000050A;
  cdrQTM = $00000606;
  cdrQTVR = $00000618;
  cdrQuattroPro = $00000813;
  cdrRIFF = $00000327;
  cdrRTF = $00000805;
  cdrSAM = $0000080F;
  cdrSCT = $00000308;
  cdrSHW = $0000070E;
  cdrSVG = $00000541;
  cdrSVGZ = $00000543;
  cdrSWF = $0000053F;
  cdrTGA = $00000303;
  cdrTIFF = $00000304;
  cdrTTF = $00000516;
  cdrTXT = $00000800;
  cdrVSD = $00000523;
  cdrWI = $00000319;
  cdrWKS = $00000812;
  cdrWMF = $0000050E;
  cdrWord2 = $00000802;
  cdrWord55 = $00000803;
  cdrWord95 = $00000801;
  cdrWord2000 = $00000814;
  cdrWP4 = $0000080A;
  cdrWP50 = $00000809;
  cdrWP51 = $00000808;
  cdrWP9 = $00000807;
  cdrWPD = $00000807;
  cdrWPG = $00000507;
  cdrWPM = $00000876;
  cdrWS4 = $00000874;
  cdrWS6 = $00000873;
  cdrWS7 = $0000080C;
  cdrWS2000 = $0000080D;
  cdrWSD = $0000080D;
  cdrWSW = $0000080B;
  cdrWVL = $00000319;
  cdrXCF = $00000330;
  cdrXLS = $00000810;
  cdrXPM = $00000329;
  cdrXY = $0000080E;
  cdrCSL = $00000712;
  cdrDES = $0000070D;
  cdrPSP = $00000336;
  cdrRAW = $00000337;
  cdrCGZ = $0000090B;
  cdrCMX64 = $00000713;
  cdrPUB = $00000545;

// Constants for enum cdrFillType
type
  cdrFillType = TOleEnum;
const
  cdrNoFill = $00000000;
  cdrUniformFill = $00000001;
  cdrFountainFill = $00000002;
  cdrPostscriptFill = $00000003;
  cdrTextureFill = $00000008;
  cdrPatternFill = $00000009;
  cdrHatchFill = $0000000A;

// Constants for enum cdrFountainFillType
type
  cdrFountainFillType = TOleEnum;
const
  cdrLinearFountainFill = $00000001;
  cdrRadialFountainFill = $00000002;
  cdrConicalFountainFill = $00000003;
  cdrSquareFountainFill = $00000004;

// Constants for enum cdrFountainFillBlendType
type
  cdrFountainFillBlendType = TOleEnum;
const
  cdrDirectFountainFillBlend = $00000000;
  cdrRainbowCWFountainFillBlend = $00000001;
  cdrRainbowCCWFountainFillBlend = $00000002;
  cdrCustomFountainFillBlend = $00000003;

// Constants for enum cdrPaletteType
type
  cdrPaletteType = TOleEnum;
const
  cdrFixedPalette = $00000000;
  cdrCustomPalette = $00000001;
  cdrDocumentPalette = $00000002;

// Constants for enum cdrPaletteID
type
  cdrPaletteID = TOleEnum;
const
  cdrCustom = $00000000;
  cdrTRUMATCH = $00000001;
  cdrPANTONEProcess = $00000002;
  cdrPANTONECorel8 = $00000003;
  cdrUniform = $00000007;
  cdrFOCOLTONE = $00000008;
  cdrSpectraMaster = $00000009;
  cdrTOYO = $0000000A;
  cdrDIC = $0000000B;
  cdrLab = $0000000D;
  cdrHKS = $00000017;
  cdrWebSafe = $00000019;
  cdrPANTONEMetallic = $0000001E;
  cdrPANTONEPastelCoated = $0000001F;
  cdrPANTONEPastelUncoated = $00000020;
  cdrPANTONEHexCoated = $00000021;
  cdrPANTONEHexUncoated = $00000022;
  cdrPANTONEMatte = $00000023;
  cdrPANTONECoated = $00000024;
  cdrPANTONEUncoated = $00000025;
  cdrPANTONEProcessCoatedEURO = $00000026;
  cdrPANTONESolid2ProcessEURO = $00000027;
  cdrSVGPalette = $00000028;
  cdrUserInks = $00000010;

// Constants for enum cdrFittedOrientation
type
  cdrFittedOrientation = TOleEnum;
const
  cdrRotateOrientation = $00000000;
  cdrVerticalSkewOrientation = $00000001;
  cdrHorizontalSkewOrientation = $00000002;
  cdrUprightOrientation = $00000003;
  cdrTransformOrientation = $00000004;

// Constants for enum cdrFittedVertPlacement
type
  cdrFittedVertPlacement = TOleEnum;
const
  cdrCustomVertPlacement = $00000000;
  cdrBaselineVertPlacement = $00000001;
  cdrAscenderVertPlacement = $00000002;
  cdrDescenderVertPlacement = $00000003;
  cdrCenterVertPlacement = $00000004;

// Constants for enum cdrFittedPlacement
type
  cdrFittedPlacement = TOleEnum;
const
  cdrLeftPlacement = $00000000;
  cdrRightPlacement = $00000001;
  cdrCenterPlacement = $00000002;

// Constants for enum cdrFittedQuadrant
type
  cdrFittedQuadrant = TOleEnum;
const
  cdrLeftQuadrant = $00000000;
  cdrRightQuadrant = $00000001;
  cdrTopQuadrant = $00000002;
  cdrBottomQuadrant = $00000003;

// Constants for enum cdrFontStyle
type
  cdrFontStyle = TOleEnum;
const
  cdrNormalFontStyle = $00000000;
  cdrBoldFontStyle = $00000001;
  cdrItalicFontStyle = $00000002;
  cdrBoldItalicFontStyle = $00000003;
  cdrThinFontStyle = $00000004;
  cdrThinItalicFontStyle = $00000005;
  cdrExtraLightFontStyle = $00000006;
  cdrExtraLightItalicFontStyle = $00000007;
  cdrMediumFontStyle = $00000008;
  cdrMediumItalicFontStyle = $00000009;
  cdrSemiBoldFontStyle = $0000000A;
  cdrSemiBoldItalicFontStyle = $0000000B;
  cdrExtraBoldFontStyle = $0000000C;
  cdrExtraBoldItalicFontStyle = $0000000D;
  cdrHeavyFontStyle = $0000000E;
  cdrHeavyItalicFontStyle = $0000000F;
  cdrMixedFontStyle = $00000010;
  cdrLightFontStyle = $00000011;
  cdrLightItalicFontStyle = $00000012;

// Constants for enum cdrFontLine
type
  cdrFontLine = TOleEnum;
const
  cdrNoFontLine = $00000000;
  cdrSingleThinFontLine = $00000001;
  cdrSingleThinWordFontLine = $00000002;
  cdrSingleThickFontLine = $00000003;
  cdrSingleThickWordFontLine = $00000004;
  cdrDoubleThinFontLine = $00000005;
  cdrDoubleThinWordFontLine = $00000006;
  cdrMixedFontLine = $00000007;

// Constants for enum cdrFontCase
type
  cdrFontCase = TOleEnum;
const
  cdrNormalFontCase = $00000000;
  cdrSmallCapsFontCase = $00000001;
  cdrAllCapsFontCase = $00000002;
  cdrMixedFontCase = $00000003;

// Constants for enum cdrFontPosition
type
  cdrFontPosition = TOleEnum;
const
  cdrNormalFontPosition = $00000000;
  cdrSubscriptFontPosition = $00000001;
  cdrSuperscriptFontPosition = $00000002;
  cdrMixedFontPosition = $00000003;

// Constants for enum cdrAlignment
type
  cdrAlignment = TOleEnum;
const
  cdrNoAlignment = $00000000;
  cdrLeftAlignment = $00000001;
  cdrRightAlignment = $00000002;
  cdrCenterAlignment = $00000003;
  cdrFullJustifyAlignment = $00000004;
  cdrForceJustifyAlignment = $00000005;
  cdrMixedAlignment = $00000006;

// Constants for enum cdrLineSpacingType
type
  cdrLineSpacingType = TOleEnum;
const
  cdrPercentOfCharacterHeightLineSpacing = $00000000;
  cdrPointLineSpacing = $00000001;
  cdrPercentOfPointSizeLineSpacing = $00000002;
  cdrMixedLineSpacing = $00000003;

// Constants for enum cdrColorType
type
  cdrColorType = TOleEnum;
const
  cdrColorPantone = $00000001;
  cdrColorCMYK = $00000002;
  cdrColorCMY = $00000004;
  cdrColorRGB = $00000005;
  cdrColorHSB = $00000006;
  cdrColorHLS = $00000007;
  cdrColorBlackAndWhite = $00000008;
  cdrColorGray = $00000009;
  cdrColorYIQ = $0000000B;
  cdrColorLab = $0000000C;
  cdrColorPantoneHex = $0000000E;
  cdrColorRegistration = $00000014;
  cdrColorSpot = $00000019;
  cdrColorMixed = $00000063;
  cdrColorUserInk = $00000016;
  cdrColorMultiChannel = $0000001A;

// Constants for enum cdrImageType
type
  cdrImageType = TOleEnum;
const
  cdrBlackAndWhiteImage = $00000000;
  cdr16ColorsImage = $00000001;
  cdrGrayscaleImage = $00000002;
  cdrPalettedImage = $00000003;
  cdrRGBColorImage = $00000004;
  cdrCMYKColorImage = $00000005;
  cdrDuotoneImage = $00000006;
  cdrLABImage = $00000007;
  cdrCMYKMultiChannelImage = $00000008;
  cdrRGBMultiChannelImage = $00000009;
  cdrSpotMultiChannelImage = $0000000A;

// Constants for enum cdrViewType
type
  cdrViewType = TOleEnum;
const
  cdrSimpleWireframeView = $00000000;
  cdrWireframeView = $00000001;
  cdrDraftView = $00000002;
  cdrNormalView = $00000003;
  cdrEnhancedView = $00000004;
  cdrEnhancedViewWithOverprints = $00000005;
  cdrPixelView = $00000006;

// Constants for enum cdrWindowState
type
  cdrWindowState = TOleEnum;
const
  cdrWindowNormal = $00000001;
  cdrWindowMinimized = $00000002;
  cdrWindowMaximized = $00000003;
  cdrWindowRestore = $00000009;

// Constants for enum cdrPatternFillType
type
  cdrPatternFillType = TOleEnum;
const
  cdrTwoColorPattern = $00000000;
  cdrFullColorPattern = $00000001;
  cdrBitmapPattern = $00000002;

// Constants for enum cdrTileOffsetType
type
  cdrTileOffsetType = TOleEnum;
const
  cdrTileOffsetRow = $00000000;
  cdrTileOffsetColumn = $00000001;

// Constants for enum cdrPatternCanvasSize
type
  cdrPatternCanvasSize = TOleEnum;
const
  cdrPatternCanvas16x16 = $00000000;
  cdrPatternCanvas32x32 = $00000001;
  cdrPatternCanvas64x64 = $00000002;
  cdrPatternCanvasCustom = $00000003;

// Constants for enum cdrFlipAxes
type
  cdrFlipAxes = TOleEnum;
const
  cdrFlipHorizontal = $00000001;
  cdrFlipVertical = $00000002;
  cdrFlipBoth = $00000003;

// Constants for enum cdrTexturePropertyType
type
  cdrTexturePropertyType = TOleEnum;
const
  cdrTexturePropertyNumeric = $00000000;
  cdrTexturePropertyColorRGB = $00000001;
  cdrTexturePropertyColorHSB = $00000002;
  cdrTexturePropertyColorCMYK = $00000003;

// Constants for enum cdrWindowArrangeStyle
type
  cdrWindowArrangeStyle = TOleEnum;
const
  cdrTileHorizontally = $00000000;
  cdrTileVertically = $00000001;
  cdrCascade = $00000002;

// Constants for enum cdrTransparencyType
type
  cdrTransparencyType = TOleEnum;
const
  cdrNoTransparency = $00000000;
  cdrUniformTransparency = $00000001;
  cdrFountainTransparency = $00000002;
  cdrPatternTransparency = $00000003;
  cdrTextureTransparency = $00000004;

// Constants for enum cdrTransparencyAppliedTo
type
  cdrTransparencyAppliedTo = TOleEnum;
const
  cdrApplyToFill = $00000000;
  cdrApplyToOutline = $00000001;
  cdrApplyToFillAndOutline = $00000002;

// Constants for enum cdrImageMode
type
  cdrImageMode = TOleEnum;
const
  cdrImageBlackWhite = $00000000;
  cdrImageGrayscale16 = $00000001;
  cdrImageGrayscale = $00000002;
  cdrImagePaletted = $00000003;
  cdrImageRGB = $00000004;
  cdrImageCMYK = $00000005;
  cdrImageDuotone = $00000006;
  cdrImageLAB = $00000007;
  cdrImageRGB48 = $00000008;
  cdrImageMultiChannel = $00000009;

// Constants for enum cdrImagePaletteType
type
  cdrImagePaletteType = TOleEnum;
const
  cdrPaletteUniform = $00000000;
  cdrPaletteStdVGA = $00000001;
  cdrPaletteAdaptive = $00000002;
  cdrPaletteOptimized = $00000003;
  cdrPaletteBlackBody = $00000004;
  cdrPaletteGrayscale = $00000005;
  cdrPaletteSystem = $00000006;
  cdrPaletteIE = $00000007;
  cdrPaletteNetscape = $00000008;
  cdrPaletteCustom = $00000009;

// Constants for enum cdrDitherType
type
  cdrDitherType = TOleEnum;
const
  cdrDitherNone = $00000000;
  cdrDitherOrdered = $00000001;
  cdrDitherJarvis = $00000002;
  cdrDitherStucki = $00000003;
  cdrDitherFloyd = $00000004;

// Constants for enum cdrRenderType
type
  cdrRenderType = TOleEnum;
const
  cdrRenderLineArt = $00000000;
  cdrRenderOrdered = $00000001;
  cdrRenderJarvis = $00000002;
  cdrRenderStucki = $00000003;
  cdrRenderFloyd = $00000004;
  cdrRenderHalftone = $00000005;
  cdrRenderCardinality = $00000006;

// Constants for enum cdrHalftoneType
type
  cdrHalftoneType = TOleEnum;
const
  cdrHalftoneSquare = $00000000;
  cdrHalftoneRound = $00000001;
  cdrHalftoneLine = $00000002;
  cdrHalftoneCross = $00000003;
  cdrHalftoneFixed4x4 = $00000004;
  cdrHalftoneFixed8x8 = $00000005;

// Constants for enum cdrDuotoneType
type
  cdrDuotoneType = TOleEnum;
const
  cdrMonotone = $00000000;
  cdrDuotone = $00000001;
  cdrTritone = $00000002;
  cdrQuadtone = $00000003;

// Constants for enum cdrUnit
type
  cdrUnit = TOleEnum;
const
  cdrTenthMicron = $00000000;
  cdrInch = $00000001;
  cdrFoot = $00000002;
  cdrMillimeter = $00000003;
  cdrCentimeter = $00000004;
  cdrPixel = $00000005;
  cdrMile = $00000006;
  cdrMeter = $00000007;
  cdrKilometer = $00000008;
  cdrDidots = $00000009;
  cdrAgate = $0000000A;
  cdrYard = $0000000B;
  cdrPica = $0000000C;
  cdrCicero = $0000000D;
  cdrPoint = $0000000E;
  cdrUnitQ = $0000000F;
  cdrUnitH = $00000010;

// Constants for enum cdrCompressionType
type
  cdrCompressionType = TOleEnum;
const
  cdrCompressionNone = $00000000;
  cdrCompressionLZW = $00000001;
  cdrCompressionPackBits = $00000002;
  cdrCompressionHuffman = $00000003;
  cdrCompressionCCITT3_1d = $00000004;
  cdrCompressionCCITT3_2d = $00000005;
  cdrCompressionCCITT4 = $00000006;
  cdrCompressionRLE_LW = $00000007;
  cdrCompressionZIP = $00000007;
  cdrCompressionJPEG = $00000008;

// Constants for enum cdrMergeMode
type
  cdrMergeMode = TOleEnum;
const
  cdrMergeNormal = $00000000;
  cdrMergeAdd = $00000007;
  cdrMergeSubtract = $00000008;
  cdrMergeDifference = $00000018;
  cdrMergeMultiply = $00000009;
  cdrMergeDivide = $0000000A;
  cdrMergeIfLighter = $0000000B;
  cdrMergeIfDarker = $0000000C;
  cdrMergeTexturize = $0000000D;
  cdrMergeInvert = $00000006;
  cdrMergeAND = $00000001;
  cdrMergeOR = $00000002;
  cdrMergeXOR = $00000003;
  cdrMergeHue = $0000000F;
  cdrMergeSaturation = $00000010;
  cdrMergeLightness = $00000011;
  cdrMergeRed = $00000012;
  cdrMergeGreen = $00000013;
  cdrMergeBlue = $00000014;

// Constants for enum cdrReferencePoint
type
  cdrReferencePoint = TOleEnum;
const
  cdrTopRight = $00000001;
  cdrTopMiddle = $00000002;
  cdrTopLeft = $00000003;
  cdrMiddleLeft = $00000004;
  cdrBottomLeft = $00000005;
  cdrBottomMiddle = $00000006;
  cdrBottomRight = $00000007;
  cdrMiddleRight = $00000008;
  cdrCenter = $00000009;

// Constants for enum cdrEllipseType
type
  cdrEllipseType = TOleEnum;
const
  cdrEllipse = $00000000;
  cdrArc = $00000001;
  cdrPie = $00000002;

// Constants for enum cdrPolygonType
type
  cdrPolygonType = TOleEnum;
const
  cdrPolygon = $00000000;
  cdrStar = $00000001;
  cdrPolygonAsStar = $00000002;

// Constants for enum cdrSpiralType
type
  cdrSpiralType = TOleEnum;
const
  cdrSymmetric = $00000000;
  cdrLogarithmic = $00000001;

// Constants for enum cdrShapeType
type
  cdrShapeType = TOleEnum;
const
  cdrNoShape = $00000000;
  cdrRectangleShape = $00000001;
  cdrEllipseShape = $00000002;
  cdrCurveShape = $00000003;
  cdrPolygonShape = $00000004;
  cdrBitmapShape = $00000005;
  cdrTextShape = $00000006;
  cdrGroupShape = $00000007;
  cdrSelectionShape = $00000008;
  cdrGuidelineShape = $00000009;
  cdrBlendGroupShape = $0000000A;
  cdrExtrudeGroupShape = $0000000B;
  cdrOLEObjectShape = $0000000C;
  cdrContourGroupShape = $0000000D;
  cdrLinearDimensionShape = $0000000E;
  cdrBevelGroupShape = $0000000F;
  cdrDropShadowGroupShape = $00000010;
  cdr3DObjectShape = $00000011;
  cdrArtisticMediaGroupShape = $00000012;
  cdrConnectorShape = $00000013;
  cdrMeshFillShape = $00000014;
  cdrCustomShape = $00000015;
  cdrCustomEffectGroupShape = $00000016;
  cdrSymbolShape = $00000017;
  cdrHTMLFormObjectShape = $00000018;
  cdrHTMLActiveObjectShape = $00000019;
  cdrPerfectShape = $0000001A;
  cdrEPSShape = $0000001B;

// Constants for enum cdrPageOrientation
type
  cdrPageOrientation = TOleEnum;
const
  cdrPortrait = $00000000;
  cdrLandscape = $00000001;

// Constants for enum cdrAntiAliasingType
type
  cdrAntiAliasingType = TOleEnum;
const
  cdrNoAntiAliasing = $00000000;
  cdrNormalAntiAliasing = $00000001;
  cdrSupersampling = $00000002;

// Constants for enum cdrOutlineType
type
  cdrOutlineType = TOleEnum;
const
  cdrNoOutline = $00000000;
  cdrOutline = $00000001;
  cdrEnhancedOutline = $00000002;

// Constants for enum cdrTextType
type
  cdrTextType = TOleEnum;
const
  cdrArtisticText = $00000000;
  cdrParagraphText = $00000001;
  cdrArtisticFittedText = $00000002;
  cdrParagraphFittedText = $00000003;

// Constants for enum cdrTextIndexingType
type
  cdrTextIndexingType = TOleEnum;
const
  cdrCharacterIndexing = $00000000;
  cdrWordIndexing = $00000001;
  cdrParagraphIndexing = $00000002;

// Constants for enum cdrTextFrames
type
  cdrTextFrames = TOleEnum;
const
  cdrThisFrameOnly = $00000000;
  cdrStartAtThisFrame = $00000001;
  cdrAllFrames = $00000002;

// Constants for enum cdrExportRange
type
  cdrExportRange = TOleEnum;
const
  cdrAllPages = $00000000;
  cdrCurrentPage = $00000001;
  cdrSelection = $00000002;

// Constants for enum cdrThumbnailSize
type
  cdrThumbnailSize = TOleEnum;
const
  cdrNoThumbnail = $00000000;
  cdr1KMonoThumbnail = $00000001;
  cdr5KColorThumbnail = $00000002;
  cdr10KColorThumbnail = $00000003;

// Constants for enum cdrFileVersion
type
  cdrFileVersion = TOleEnum;
const
  cdrCurrentVersion = $00000000;
  cdrVersion5 = $00000005;
  cdrVersion6 = $00000006;
  cdrVersion7 = $00000007;
  cdrVersion8 = $00000008;
  cdrVersion9 = $00000009;
  cdrVersion10 = $0000000A;
  cdrVersion11 = $0000000B;
  cdrVersion12 = $0000000C;
  cdrVersion13 = $0000000D;
  cdrVersion1 = $00000001;
  cdrVersion2 = $00000002;
  cdrVersion3 = $00000003;
  cdrVersion4 = $00000004;
  cdrVersion105 = $00000069;
  cdrVersion14 = $0000000E;
  cdrVersion15 = $0000000F;
  cdrVersion16 = $00000010;

// Constants for enum cdrPointType
type
  cdrPointType = TOleEnum;
const
  cdrSnapPoint = $00000000;
  cdrFreePoint = $00000001;
  cdrSnapPointUser = $00000001;
  cdrSnapPointObject = $00000002;
  cdrSnapPointBBox = $00000004;
  cdrSnapPointEdge = $00000008;
  cdrSnapPointFree = $00000010;
  cdrSnapPointAuto = $00000020;

// Constants for enum cdrPresetPoint
type
  cdrPresetPoint = TOleEnum;
const
  cdrTopLeftPoint = $FFFFFFFF;
  cdrTopPoint = $FFFFFFFE;
  cdrTopRightPoint = $FFFFFFFD;
  cdrRightPoint = $FFFFFFFC;
  cdrBottomRightPoint = $FFFFFFFB;
  cdrBottomPoint = $FFFFFFFA;
  cdrBottomLeftPoint = $FFFFFFF9;
  cdrLeftPoint = $FFFFFFF8;
  cdrCenterPoint = $FFFFFFF7;
  cdrFirstPoint = $FFFFFFF6;
  cdrLastPoint = $FFFFFFF5;

// Constants for enum cdrNodeType
type
  cdrNodeType = TOleEnum;
const
  cdrCuspNode = $00000000;
  cdrSmoothNode = $00000001;
  cdrSymmetricalNode = $00000002;
  cdrMixedNodes = $00000003;

// Constants for enum cdrSegmentType
type
  cdrSegmentType = TOleEnum;
const
  cdrLineSegment = $00000000;
  cdrCurveSegment = $00000001;
  cdrMixedSegments = $00000002;

// Constants for enum cdrSegmentOffsetType
type
  cdrSegmentOffsetType = TOleEnum;
const
  cdrAbsoluteSegmentOffset = $00000000;
  cdrRelativeSegmentOffset = $00000001;
  cdrParamSegmentOffset = $00000002;

// Constants for enum cdrCursorShape
type
  cdrCursorShape = TOleEnum;
const
  cdrCursorWinAppStarting = $00000000;
  cdrCursorWinArrow = $00000001;
  cdrCursorWinCross = $00000002;
  cdrCursorWinHelp = $00000003;
  cdrCursorWinIbeam = $00000004;
  cdrCursorWinNo = $00000005;
  cdrCursorWinSizeAll = $00000006;
  cdrCursorWinSizeNeSw = $00000007;
  cdrCursorWinSizeNs = $00000008;
  cdrCursorWinSizeNwSe = $00000009;
  cdrCursorWinSizeWe = $0000000A;
  cdrCursorWinUpArrow = $0000000B;
  cdrCursorWinWait = $0000000C;
  cdrCursorSmallcrosshair = $0000012D;
  cdrCursorPick = $00000131;
  cdrCursorNodeEdit = $00000132;
  cdrCursorEyeDrop = $00000146;
  cdrCursorExtPick = $0000015F;
  cdrCursorPickNone = $00000131;
  cdrCursorPenJoin = $0000017C;
  cdrCursorPickOvertarget = $0000018C;
  cdrCursorTrimSingle = $000001AC;
  cdrCursorWeldSingle = $000001AE;
  cdrCursorIntersectSingle = $000001B0;

// Constants for enum cdrPositionOfPointOverShape
type
  cdrPositionOfPointOverShape = TOleEnum;
const
  cdrOutsideShape = $00000000;
  cdrOnMarginOfShape = $00000001;
  cdrInsideShape = $00000002;

// Constants for enum cdrOutlineLineCaps
type
  cdrOutlineLineCaps = TOleEnum;
const
  cdrOutlineUndefinedLineCaps = $FFFFFFFF;
  cdrOutlineButtLineCaps = $00000000;
  cdrOutlineRoundLineCaps = $00000001;
  cdrOutlineSquareLineCaps = $00000002;

// Constants for enum cdrOutlineLineJoin
type
  cdrOutlineLineJoin = TOleEnum;
const
  cdrOutlineUndefinedLineJoin = $FFFFFFFF;
  cdrOutlineMiterLineJoin = $00000000;
  cdrOutlineRoundLineJoin = $00000001;
  cdrOutlineBevelLineJoin = $00000002;

// Constants for enum cdrShapeEnumDirection
type
  cdrShapeEnumDirection = TOleEnum;
const
  cdrShapeEnumTopFirst = $00000000;
  cdrShapeEnumBottomFirst = $00000001;

// Constants for enum cdrPageBackground
type
  cdrPageBackground = TOleEnum;
const
  cdrPageBackgroundNone = $00000000;
  cdrPageBackgroundSolid = $00000001;
  cdrPageBackgroundBitmap = $00000002;

// Constants for enum cdrEffectType
type
  cdrEffectType = TOleEnum;
const
  cdrBlend = $00000000;
  cdrExtrude = $00000001;
  cdrEnvelope = $00000002;
  cdrTextOnPath = $00000003;
  cdrControlPath = $00000004;
  cdrDropShadow = $00000005;
  cdrContour = $00000006;
  cdrDistortion = $00000007;
  cdrPerspective = $00000008;
  cdrLens = $00000009;
  cdrCustomEffect = $0000000A;

// Constants for enum cdrBlendMode
type
  cdrBlendMode = TOleEnum;
const
  cdrBlendSteps = $00000000;
  cdrBlendSpacing = $00000001;

// Constants for enum cdrExtrudeType
type
  cdrExtrudeType = TOleEnum;
const
  cdrExtrudeSmallBack = $00000000;
  cdrExtrudeSmallFront = $00000001;
  cdrExtrudeBigBack = $00000002;
  cdrExtrudeBigFront = $00000003;
  cdrExtrudeBackParallel = $00000004;
  cdrExtrudeFrontParallel = $00000005;

// Constants for enum cdrExtrudeShading
type
  cdrExtrudeShading = TOleEnum;
const
  cdrExtrudeObjectFill = $00000000;
  cdrExtrudeSolidFill = $00000001;
  cdrExtrudeColorShading = $00000002;

// Constants for enum cdrFeatherType
type
  cdrFeatherType = TOleEnum;
const
  cdrFeatherInside = $00000000;
  cdrFeatherMiddle = $00000001;
  cdrFeatherOutside = $00000002;
  cdrFeatherAverage = $00000003;

// Constants for enum cdrEdgeType
type
  cdrEdgeType = TOleEnum;
const
  cdrEdgeLinear = $00000000;
  cdrEdgeSquared = $00000001;
  cdrEdgeFlat = $00000002;
  cdrEdgeInverseSquared = $00000003;
  cdrEdgeMesa = $00000004;
  cdrEdgeGaussian = $00000005;

// Constants for enum cdrDropShadowType
type
  cdrDropShadowType = TOleEnum;
const
  cdrDropShadowFlat = $00000000;
  cdrDropShadowBottom = $00000001;
  cdrDropShadowTop = $00000002;
  cdrDropShadowLeft = $00000003;
  cdrDropShadowRight = $00000004;

// Constants for enum cdrExtrudeLightPosition
type
  cdrExtrudeLightPosition = TOleEnum;
const
  cdrLightFrontTopLeft = $00000000;
  cdrLightFrontTop = $00000001;
  cdrLightFrontTopRight = $00000002;
  cdrLightFrontLeft = $00000003;
  cdrLightFrontCenter = $00000004;
  cdrLightFrontRight = $00000005;
  cdrLightFrontBottomLeft = $00000006;
  cdrLightFrontBottom = $00000007;
  cdrLightFrontBottomRight = $00000008;
  cdrLightBackTopLeft = $00000009;
  cdrLightBackTop = $0000000A;
  cdrLightBackTopRight = $0000000B;
  cdrLightBackRight = $0000000E;
  cdrLightBackBottomRight = $00000011;

// Constants for enum cdrExtrudeVPType
type
  cdrExtrudeVPType = TOleEnum;
const
  cdrVPLockedToShape = $00000000;
  cdrVPLockedToPage = $00000001;
  cdrVPShared = $00000002;

// Constants for enum cdrEnvelopeMode
type
  cdrEnvelopeMode = TOleEnum;
const
  cdrEnvelopeHorizontal = $00000000;
  cdrEnvelopeOriginal = $00000001;
  cdrEnvelopePutty = $00000002;
  cdrEnvelopeVertical = $00000003;

// Constants for enum cdrLensType
type
  cdrLensType = TOleEnum;
const
  cdrLensMagnify = $00000000;
  cdrLensFishEye = $00000001;
  cdrLensWireframe = $00000002;
  cdrLensColorLimit = $00000003;
  cdrLensColorAdd = $00000004;
  cdrLensInvert = $00000005;
  cdrLensBrighten = $00000006;
  cdrLensTintedGrayscale = $00000007;
  cdrLensHeatMap = $00000008;
  cdrLensTransparency = $00000009;
  cdrLensCustomColorMap = $0000000A;

// Constants for enum cdrContourDirection
type
  cdrContourDirection = TOleEnum;
const
  cdrContourInside = $00000000;
  cdrContourOutside = $00000001;
  cdrContourToCenter = $00000002;

// Constants for enum cdrDistortionType
type
  cdrDistortionType = TOleEnum;
const
  cdrDistortionPushPull = $00000000;
  cdrDistortionZipper = $00000001;
  cdrDistortionTwister = $00000002;
  cdrDistortionCustom = $00000003;

// Constants for enum cdrTools
type
  cdrTools = TOleEnum;
const
  cdrToolNone = $00000000;
  cdrToolPick = $00000001;
  cdrToolNodeEdit = $00000002;
  cdrToolKnife = $00000040;
  cdrToolBezierKnife = $00000051;
  cdrToolEraser = $00000044;
  cdrToolDrawRectangle = $00000003;
  cdrToolDrawEllipse = $00000004;
  cdrToolDrawText = $00000007;
  cdrToolDrawFreehand = $00000005;
  cdrToolDrawNaturalPen = $00000067;
  cdrToolDrawBezier = $00000006;
  cdrToolHorizontalDimension = $00000036;
  cdrToolVerticalDimension = $00000037;
  cdrToolAutoDimension = $0000006E;
  cdrToolSlantedDimension = $00000038;
  cdrToolLeaderText = $00000039;
  cdrToolAngledDimension = $0000003A;
  cdrToolConnectorLines = $0000003B;
  cdrToolDrawPolygon = $0000003C;
  cdrToolDrawSpiral = $0000003E;
  cdrToolDrawGrid = $0000003F;
  cdrToolZoom = $00000042;
  cdrToolPan = $00000043;
  cdrToolFill = $00000047;
  cdrToolTransparency = $00000048;
  cdrToolInteractiveExtrude = $00000049;
  cdrToolBlend = $0000004A;
  cdrToolRotate = $0000004B;
  cdrToolReflect = $0000004C;
  cdrToolScale = $0000004D;
  cdrToolSkew = $0000004E;
  cdrToolDistortion = $0000004F;
  cdrToolContour = $00000071;
  cdrToolInsertHTMLFormObject = $0000006F;
  cdrToolDropShadow = $00000050;
  cdrToolDrawConnector = $00000073;
  cdrToolEyeDropper = $00000077;

// Constants for enum cdrGridType
type
  cdrGridType = TOleEnum;
const
  cdrGridDot = $00000000;
  cdrGridLine = $00000001;

// Constants for enum cdrGuideType
type
  cdrGuideType = TOleEnum;
const
  cdrAllGuides = $FFFFFFFF;
  cdrHorizontalGuide = $00000000;
  cdrVerticalGuide = $00000001;
  cdrSlantedGuide = $00000002;

// Constants for enum cdrURLRegion
type
  cdrURLRegion = TOleEnum;
const
  cdrURLRegionDefault = $00000000;
  cdrURLRegionRectangle = $00000001;
  cdrURLRegionShape = $00000002;

// Constants for enum cdrPanoseMatchingType
type
  cdrPanoseMatchingType = TOleEnum;
const
  cdrPanosePrompt = $00000000;
  cdrPanoseTemporary = $00000001;
  cdrPanosePermanent = $00000002;

// Constants for enum cdrDataFormatType
type
  cdrDataFormatType = TOleEnum;
const
  cdrFormatGeneral = $00000000;
  cdrFormatDateTime = $00000001;
  cdrFormatLinearAngular = $00000002;
  cdrFormatNumeric = $00000003;

// Constants for enum cdrShapeLevel
type
  cdrShapeLevel = TOleEnum;
const
  cdrLevelGroup = $00000000;
  cdrLevelContainer = $00000001;
  cdrLevelLayer = $00000002;
  cdrLevelPage = $00000003;
  cdrLevelDocument = $00000004;

// Constants for enum cdrTriState
type
  cdrTriState = TOleEnum;
const
  cdrFalse = $00000000;
  cdrTrue = $FFFFFFFF;
  cdrUndefined = $FFFFFFFE;

// Constants for enum cdrTextChangeCase
type
  cdrTextChangeCase = TOleEnum;
const
  cdrTextSentenceCase = $00000000;
  cdrTextLowerCase = $00000001;
  cdrTextUpperCase = $00000002;
  cdrTextTitleCase = $00000003;
  cdrTextToggleCase = $00000004;

// Constants for enum cdrTextLanguage
type
  cdrTextLanguage = TOleEnum;
const
  cdrLanguageMixed = $FFFFFFFF;
  cdrLanguageNone = $00000000;
  cdrAfrikaans = $00000436;
  cdrAlbanian = $0000041C;
  cdrArabicAlgeria = $00001401;
  cdrArabicBahrain = $00003C01;
  cdrArabicEgypt = $00000C01;
  cdrArabicIraq = $00000801;
  cdrArabicJordan = $00002C01;
  cdrArabicKuwait = $00003401;
  cdrArabicLebanon = $00003001;
  cdrArabicLibya = $00001001;
  cdrArabicMorocco = $00001801;
  cdrArabicOman = $00002001;
  cdrArabicQatar = $00004001;
  cdrArabic = $00000401;
  cdrArabicSyria = $00002801;
  cdrArabicTunisia = $00001C01;
  cdrArabicUAE = $00003801;
  cdrArabicYemen = $00002401;
  cdrArmenian = $0000042B;
  cdrAssamese = $0000044D;
  cdrAzeriCyrillic = $0000082C;
  cdrAzeriLatin = $0000042C;
  cdrBasque = $0000042D;
  cdrByelorussian = $00000423;
  cdrBengali = $00000445;
  cdrBulgarian = $00000402;
  cdrBurmese = $00000455;
  cdrCatalan = $00000403;
  cdrChineseHongKong = $00000C04;
  cdrChineseMacao = $00001404;
  cdrSimplifiedChinese = $00000804;
  cdrChineseSingapore = $00001004;
  cdrTraditionalChinese = $00000404;
  cdrCroatian = $0000041A;
  cdrCzech = $00000405;
  cdrDanish = $00000406;
  cdrBelgianDutch = $00000813;
  cdrDutch = $00000413;
  cdrEnglishAUS = $00000C09;
  cdrEnglishBelize = $00002809;
  cdrEnglishCanadian = $00001009;
  cdrEnglishCaribbean = $00002409;
  cdrEnglishIreland = $00001809;
  cdrEnglishJamaica = $00002009;
  cdrEnglishNewZealand = $00001409;
  cdrEnglishPhilippines = $00003409;
  cdrEnglishSouthAfrica = $00001C09;
  cdrEnglishTrinidad = $00002C09;
  cdrEnglishUK = $00000809;
  cdrEnglishUS = $00000409;
  cdrEnglishZimbabwe = $00003009;
  cdrEstonian = $00000425;
  cdrFaeroese = $00000438;
  cdrFarsi = $00000429;
  cdrFinnish = $0000040B;
  cdrBelgianFrench = $0000080C;
  cdrFrenchCameroon = $00002C0C;
  cdrFrenchCanadian = $00000C0C;
  cdrFrenchCotedIvoire = $0000300C;
  cdrFrench = $0000040C;
  cdrFrenchLuxembourg = $0000140C;
  cdrFrenchMali = $0000340C;
  cdrFrenchMonaco = $0000180C;
  cdrFrenchReunion = $0000200C;
  cdrFrenchSenegal = $0000280C;
  cdrSwissFrench = $0000100C;
  cdrFrenchWestIndies = $00001C0C;
  cdrFrenchZaire = $0000240C;
  cdrFrisianNetherlands = $00000462;
  cdrGaelicIreland = $0000083C;
  cdrGaelicScotland = $0000043C;
  cdrGalician = $00000456;
  cdrGeorgian = $00000437;
  cdrGermanAustria = $00000C07;
  cdrGerman = $00000407;
  cdrGermanLiechtenstein = $00001407;
  cdrGermanLuxembourg = $00001007;
  cdrSwissGerman = $00000807;
  cdrGreek = $00000408;
  cdrGujarati = $00000447;
  cdrHebrew = $0000040D;
  cdrHindi = $00000439;
  cdrHungarian = $0000040E;
  cdrIcelandic = $0000040F;
  cdrIndonesian = $00000421;
  cdrItalian = $00000410;
  cdrSwissItalian = $00000810;
  cdrJapanese = $00000411;
  cdrKannada = $0000044B;
  cdrKashmiri = $00000460;
  cdrKazakh = $0000043F;
  cdrKhmer = $00000453;
  cdrKirghiz = $00000440;
  cdrKonkani = $00000457;
  cdrKorean = $00000412;
  cdrLao = $00000454;
  cdrLatvian = $00000426;
  cdrLithuanian = $00000427;
  cdrMacedonian = $0000042F;
  cdrMalaysian = $0000043E;
  cdrMalayBruneiDarussalam = $0000083E;
  cdrMalayalam = $0000044C;
  cdrMaltese = $0000043A;
  cdrManipuri = $00000458;
  cdrMarathi = $0000044E;
  cdrMongolian = $00000450;
  cdrNepali = $00000461;
  cdrNorwegianBokmol = $00000414;
  cdrNorwegianNynorsk = $00000814;
  cdrOriya = $00000448;
  cdrPolish = $00000415;
  cdrBrazilianPortuguese = $00000416;
  cdrPortuguese = $00000816;
  cdrPunjabi = $00000446;
  cdrRhaetoRomanic = $00000417;
  cdrRomanianMoldova = $00000818;
  cdrRomanian = $00000418;
  cdrRussianMoldova = $00000819;
  cdrRussian = $00000419;
  cdrSamiLappish = $0000043B;
  cdrSanskrit = $0000044F;
  cdrSerbianCyrillic = $00000C1A;
  cdrSerbianLatin = $0000081A;
  cdrSindhi = $00000459;
  cdrSlovak = $0000041B;
  cdrSlovenian = $00000424;
  cdrSorbian = $0000042E;
  cdrSpanishArgentina = $00002C0A;
  cdrSpanishBolivia = $0000400A;
  cdrSpanishChile = $0000340A;
  cdrSpanishColombia = $0000240A;
  cdrSpanishCostaRica = $0000140A;
  cdrSpanishDominicanRepublic = $00001C0A;
  cdrSpanishEcuador = $0000300A;
  cdrSpanishElSalvador = $0000440A;
  cdrSpanishGuatemala = $0000100A;
  cdrSpanishHonduras = $0000480A;
  cdrMexicanSpanish = $0000080A;
  cdrSpanishNicaragua = $00004C0A;
  cdrSpanishPanama = $0000180A;
  cdrSpanishParaguay = $00003C0A;
  cdrSpanishPeru = $0000280A;
  cdrSpanishPuertoRico = $0000500A;
  cdrSpanishModernSort = $00000C0A;
  cdrSpanish = $0000040A;
  cdrSpanishUruguay = $0000380A;
  cdrSpanishVenezuela = $0000200A;
  cdrSesotho = $00000430;
  cdrSutu = $00000430;
  cdrSwahili = $00000441;
  cdrSwedishFinland = $0000081D;
  cdrSwedish = $0000041D;
  cdrTajik = $00000428;
  cdrTamil = $00000449;
  cdrTatar = $00000444;
  cdrTelugu = $0000044A;
  cdrThai = $0000041E;
  cdrTibetan = $00000451;
  cdrTsonga = $00000431;
  cdrTswana = $00000432;
  cdrTurkish = $0000041F;
  cdrTurkmen = $00000442;
  cdrUkrainian = $00000422;
  cdrUrdu = $00000420;
  cdrUzbekCyrillic = $00000843;
  cdrUzbekLatin = $00000443;
  cdrVenda = $00000433;
  cdrVietnamese = $0000042A;
  cdrWelsh = $00000452;
  cdrXhosa = $00000434;
  cdrZulu = $00000435;

// Constants for enum cdrTextCharSet
type
  cdrTextCharSet = TOleEnum;
const
  cdrCharSetMixed = $FFFFFFFF;
  cdrCharSetANSI = $00000000;
  cdrCharSetDefault = $00000001;
  cdrCharSetSymbol = $00000002;
  cdrCharSetShiftJIS = $00000080;
  cdrCharSetHangul = $00000081;
  cdrCharSetChineseBig5 = $00000088;
  cdrCharSetOEM = $000000FF;
  cdrCharSetJohab = $00000082;
  cdrCharSetHebrew = $000000B1;
  cdrCharSetArabic = $000000B2;
  cdrCharSetGreek = $000000A1;
  cdrCharSetTurkish = $000000A2;
  cdrCharSetVietnamese = $000000A3;
  cdrCharSetThai = $000000DE;
  cdrCharSetEastEurope = $000000EE;
  cdrCharSetRussian = $000000CC;
  cdrCharSetMac = $0000004D;
  cdrCharSetBaltic = $000000BA;

// Constants for enum cdrVerticalAlignment
type
  cdrVerticalAlignment = TOleEnum;
const
  cdrTopJustify = $00000000;
  cdrCenterJustify = $00000001;
  cdrBottomJustify = $00000002;
  cdrFullJustify = $00000003;

// Constants for enum cdrCloneLinkType
type
  cdrCloneLinkType = TOleEnum;
const
  cdrCloneFill = $00000001;
  cdrCloneOutline = $00000002;
  cdrCloneShape = $00000004;
  cdrCloneTransform = $00000008;
  cdrCloneBmpColorMask = $00000010;
  cdrCloneAll = $0000001F;

// Constants for enum cdrWrapStyle
type
  cdrWrapStyle = TOleEnum;
const
  cdrWrapNone = $FFFFFFFF;
  cdrWrapContourLeft = $00000000;
  cdrWrapContourRight = $00000001;
  cdrWrapContourStraddle = $00000002;
  cdrWrapSquareLeft = $00000003;
  cdrWrapSquareRight = $00000004;
  cdrWrapSquareStraddle = $00000005;
  cdrWrapSquareAboveBelow = $00000006;

// Constants for enum cdrCurveElementType
type
  cdrCurveElementType = TOleEnum;
const
  cdrElementStart = $00000000;
  cdrElementLine = $00000001;
  cdrElementCurve = $00000002;
  cdrElementControl = $00000003;

// Constants for enum cdrAddinFilter
type
  cdrAddinFilter = TOleEnum;
const
  cdrAddinFilterNone = $00000000;
  cdrAddinFilterShapeCreated = $00000001;
  cdrAddinFilterNew = $00000002;
  cdrAddinFilterExecute = $00000004;

// Constants for enum cdrAlignType
type
  cdrAlignType = TOleEnum;
const
  cdrAlignLeft = $00000001;
  cdrAlignRight = $00000002;
  cdrAlignHCenter = $00000003;
  cdrAlignTop = $00000004;
  cdrAlignBottom = $00000008;
  cdrAlignVCenter = $0000000C;

// Constants for enum cdrDistributeType
type
  cdrDistributeType = TOleEnum;
const
  cdrDistributeLeft = $00000001;
  cdrDistributeRight = $00000002;
  cdrDistributeHCenter = $00000003;
  cdrDistributeHSpacing = $00000004;
  cdrDistributeTop = $00000008;
  cdrDistributeBottom = $00000010;
  cdrDistributeVCenter = $00000018;
  cdrDistributeVSpacing = $00000020;

// Constants for enum cdrDimensionType
type
  cdrDimensionType = TOleEnum;
const
  cdrDimensionLinear = $00000000;
  cdrDimensionAngular = $00000001;

// Constants for enum cdrLinearDimensionType
type
  cdrLinearDimensionType = TOleEnum;
const
  cdrDimensionHorizontal = $00000000;
  cdrDimensionVertical = $00000001;
  cdrDimensionSlanted = $00000002;

// Constants for enum cdrDimensionStyle
type
  cdrDimensionStyle = TOleEnum;
const
  cdrDimensionStyleDecimal = $00000000;
  cdrDimensionStyleFractional = $00000001;
  cdrDimensionStyleEngineering = $00000002;
  cdrDimensionStyleArchitectural = $00000003;

// Constants for enum cdrDimensionLinearUnits
type
  cdrDimensionLinearUnits = TOleEnum;
const
  cdrDimensionUnitInX = $00000000;
  cdrDimensionUnitIN = $00000001;
  cdrDimensionUnitInches = $00000002;
  cdrDimensionUnitFtX = $00000003;
  cdrDimensionUnitFT = $00000004;
  cdrDimensionUnitMI = $00000005;
  cdrDimensionUnitMiles = $00000006;
  cdrDimensionUnitYDS = $00000007;
  cdrDimensionUnitYards = $00000008;
  cdrDimensionUnitM = $00000009;
  cdrDimensionUnitMeters = $0000000A;
  cdrDimensionUnitKM = $0000000B;
  cdrDimensionUnitKilometers = $0000000C;
  cdrDimensionUnitCM = $0000000D;
  cdrDimensionUnitCentimeters = $0000000E;
  cdrDimensionUnitMM = $0000000F;
  cdrDimensionUnitMillimeters = $00000010;
  cdrDimensionUnitPicas = $00000011;
  cdrDimensionUnitPoints = $00000012;
  cdrDimensionUnitCiceros = $00000013;
  cdrDimensionUnitDidots = $00000014;

// Constants for enum cdrDimensionPlacement
type
  cdrDimensionPlacement = TOleEnum;
const
  cdrDimensionAboveLine = $00000000;
  cdrDimensionWithinLine = $00000001;
  cdrDimensionBelowLine = $00000002;

// Constants for enum cdrDimensionAngularUnits
type
  cdrDimensionAngularUnits = TOleEnum;
const
  cdrDimensionUnitDegrees = $00000000;
  cdrDimensionUnitRadians = $00000001;
  cdrDimensionUnitGradians = $00000002;
  cdrDimensionUnitDegreesSymbol = $00000003;

// Constants for enum cdrDimensionSymbol
type
  cdrDimensionSymbol = TOleEnum;
const
  cdrDimensionSymbolNone = $00000000;
  cdrDimensionSymbol1After = $00000001;
  cdrDimensionSymbol1Before = $00000002;
  cdrDimensionSymbol3After = $00000003;
  cdrDimensionSymbol3Before = $00000004;
  cdrDimensionSymbolDAfter = $00000005;
  cdrDimensionSymbolDBefore = $00000006;

// Constants for enum cdrSymbolType
type
  cdrSymbolType = TOleEnum;
const
  cdrSymbolTypeSymbol = $00000001;
  cdrSymbolTypeSprite = $00000002;
  cdrSymbolTypeButton = $00000004;

// Constants for enum cdrCurveElementFlags
type
  cdrCurveElementFlags = TOleEnum;
const
  cdrFlagSelected = $00000001;
  cdrFlagUser = $00000004;
  cdrFlagClosed = $00000008;
  cdrFlagValid = $00000080;

// Constants for enum cdrPaletteSortMethod
type
  cdrPaletteSortMethod = TOleEnum;
const
  cdrSortReverse = $00000000;
  cdrSortHue = $00000001;
  cdrSortBrightness = $00000002;
  cdrSortSaturation = $00000003;
  cdrSortRGB = $00000004;
  cdrSortHSB = $00000005;
  cdrSortName = $00000006;

// Constants for enum cdrImportMode
type
  cdrImportMode = TOleEnum;
const
  cdrImportFull = $00000000;
  cdrImportCrop = $00000001;
  cdrImportResample = $00000002;

// Constants for enum cdrImportTextFormatting
type
  cdrImportTextFormatting = TOleEnum;
const
  cdrImportTextFontAndFormatting = $00000000;
  cdrImportNoFormatting = $00000001;
  cdrImportFormattingOnly = $00000002;

// Constants for enum cdrImportTableOutline
type
  cdrImportTableOutline = TOleEnum;
const
  cdrImportNoOutline = $00000000;
  cdrImportTableOnly = $00000001;
  cdrImportCellsOnly = $00000002;
  cdrImportTableAndCells = $00000003;

// Constants for enum cdrDataType
type
  cdrDataType = TOleEnum;
const
  cdrDataTypeString = $00000000;
  cdrDataTypeNumber = $00000001;
  cdrDataTypeEvent = $00000002;
  cdrDataTypeAction = $00000003;

// Constants for enum cdrPaletteVersion
type
  cdrPaletteVersion = TOleEnum;
const
  cdrPaletteVersion9 = $00000000;
  cdrPaletteVersion12 = $00000001;

// Constants for enum cdrOLEType
type
  cdrOLEType = TOleEnum;
const
  cdrOLEUnknown = $00000000;
  cdrOLELinked = $00000001;
  cdrOLEEmbedded = $00000002;
  cdrOLEStatic = $00000003;

// Constants for enum cdrTextAlignOrigin
type
  cdrTextAlignOrigin = TOleEnum;
const
  cdrTextAlignFirstBaseline = $00000000;
  cdrTextAlignLastBaseline = $00000001;
  cdrTextAlignBoundingBox = $00000002;

// Constants for enum cdrCompareType
type
  cdrCompareType = TOleEnum;
const
  cdrCompareShapeType = $00000001;
  cdrCompareFillType = $00000002;
  cdrCompareFill = $00000004;
  cdrCompareOutlineWidth = $00000008;
  cdrCompareOutlineColor = $00000010;
  cdrCompareOutline = $00000020;
  cdrCompareShapeWidth = $00000040;
  cdrCompareShapeHeight = $00000080;

// Constants for enum cdrCompareCondition
type
  cdrCompareCondition = TOleEnum;
const
  cdrCompareEquals = $00000000;
  cdrCompareGreater = $00000001;
  cdrCompareLess = $00000002;
  cdrCompareAtLeast = $00000003;
  cdrCompareAtMost = $00000004;

// Constants for enum cdrApplicationID
type
  cdrApplicationID = TOleEnum;
const
  cdrCorelDRAW = $00000000;
  cdrCorelDESIGNER = $00000001;

// Constants for enum cdrApplicationClass
type
  cdrApplicationClass = TOleEnum;
const
  cdrCreativeGraphics = $00000000;
  cdrTechnicalGraphics = $00000001;

// Constants for enum cdrShapeChangeScope
type
  cdrShapeChangeScope = TOleEnum;
const
  cdrShapeChangeFill = $00000001;
  cdrShapeChangeOutline = $00000002;
  cdrShapeChangeTransparency = $00000004;
  cdrShapeChangeContent = $00000008;
  cdrShapeChangeProperties = $00000010;
  cdrShapeChangeLocking = $00000020;
  cdrShapeChangeStyle = $00000040;
  cdrShapeChangeTextAttr = $00000080;

// Constants for enum cdrTreeNodeType
type
  cdrTreeNodeType = TOleEnum;
const
  cdrShapeNode = $00000001;
  cdrGroupNode = $00000002;
  cdrLinkGroupNode = $00000003;
  cdrSymbolNode = $00000004;
  cdrRootNode = $00000011;
  cdrPageNode = $00000012;
  cdrLayerNode = $00000013;

// Constants for enum cdrTextTabAlignment
type
  cdrTextTabAlignment = TOleEnum;
const
  cdrTextTabLeft = $00000000;
  cdrTextTabRight = $00000001;
  cdrTextTabCenter = $00000002;
  cdrTextTabDecimal = $00000003;

// Constants for enum cdrTextEffect
type
  cdrTextEffect = TOleEnum;
const
  cdrTextEffectMixed = $FFFFFFFF;
  cdrTextEffectNone = $00000000;
  cdrTextEffectBullet = $00000001;
  cdrTextEffectDropCap = $00000002;

// Constants for enum clrMonitorCalibration
type
  clrMonitorCalibration = TOleEnum;
const
  clrMonitorCalibrationOff = $00000000;
  clrMonitorCalibrationOn = $00000001;
  clrMonitorSimulateComposite = $00000002;
  clrMonitorSimulateSeparation = $00000003;

// Constants for enum clrRenderingIntent
type
  clrRenderingIntent = TOleEnum;
const
  clrRenderAutomatic = $00000000;
  clrRenderSaturation = $00000001;
  clrRenderPerceptual = $00000002;
  clrRenderRelative = $00000003;
  clrRenderAbsolute = $00000004;

// Constants for enum clrColorEngine
type
  clrColorEngine = TOleEnum;
const
  clrEngineKodak = $00000000;
  clrEngineICM2 = $00000001;
  clrEngineICM = $00000001;
  clrEngineWCS = $00000002;
  clrEngineAdobe = $00000003;
  clrEngineNone = $00000004;
  clrEngineLcms = $00000005;

// Constants for enum clrDeviceType
type
  clrDeviceType = TOleEnum;
const
  clrMonitor = $00000000;
  clrCompositePrinter = $00000001;
  clrSeparationPrinter = $00000002;
  clrScanner = $00000003;
  clrInternalRGB = $00000004;
  clrDeviceAll = $FFFFFFFF;
  clrDeviceDisplay = $00000000;
  clrDeviceOutput = $00000001;
  clrDeviceInput = $00000003;
  clrDeviceColorSpace = $00000004;

// Constants for enum clrCompPrnCalibration
type
  clrCompPrnCalibration = TOleEnum;
const
  clrCompPrnCalibrationOff = $00000000;
  clrCompPrnCalibrationOn = $00000001;
  clrCompPrnSimulateSeparation = $00000002;

// Constants for enum clrImportColorCorrection
type
  clrImportColorCorrection = TOleEnum;
const
  clrNoImportCorrection = $00000000;
  clrApplyEmbeddedOrDefaultProfile = $00000001;
  clrApplyCustomImportProfile = $00000002;

// Constants for enum clrExportColorCorrection
type
  clrExportColorCorrection = TOleEnum;
const
  clrNoExportCorrection = $00000000;
  clrEmbedInternalRGBProfile = $00000001;
  clrEmbedCustomExportProfile = $00000002;

// Constants for enum cdrFillMode
type
  cdrFillMode = TOleEnum;
const
  cdrFillAlternate = $00000000;
  cdrFillWinding = $00000001;

// Constants for enum cdrCommandCheckState
type
  cdrCommandCheckState = TOleEnum;
const
  cdrCommandUnchecked = $00000000;
  cdrCommandChecked = $00000001;

// Constants for enum cdrAppStartupMode
type
  cdrAppStartupMode = TOleEnum;
const
  cdrStartupWelcomeScreen = $00000000;
  cdrStartupNewDocument = $00000001;
  cdrStartupOpenDocument = $00000002;
  cdrStartupLastEditedDocument = $00000003;
  cdrStartupNewFromTemplate = $00000004;
  cdrStartupTutorial = $00000005;
  cdrStartupDoNothing = $00000006;

// Constants for enum cdrDistanceMode
type
  cdrDistanceMode = TOleEnum;
const
  cdrModeNoOffset = $00000000;
  cdrModeOffset = $00000001;
  cdrModeSpacing = $00000002;

// Constants for enum cdrDirection
type
  cdrDirection = TOleEnum;
const
  cdrLeft = $00000000;
  cdrRight = $00000001;
  cdrUp = $00000002;
  cdrDown = $00000003;

// Constants for enum cdrShapeLinkType
type
  cdrShapeLinkType = TOleEnum;
const
  cdrLinkDirectDependents = $00000000;
  cdrLinkDirectDependentsButClones = $00000001;
  cdrLinkDirectDependentClones = $00000002;
  cdrLinkAllDependents = $00000003;
  cdrLinkAllDependentsButClones = $00000004;
  cdrLinkAllDependentClones = $00000005;
  cdrLinkDirectControls = $00000006;
  cdrLinkDirectControlsButClones = $00000007;
  cdrLinkAllConnections = $00000008;

// Constants for enum cdrEnvelopeCopyMode
type
  cdrEnvelopeCopyMode = TOleEnum;
const
  cdrEnvelopeUseOriginal = $00000000;
  cdrEnvelopeCenter = $00000001;
  cdrEnvelopeStretch = $00000002;
  cdrEnvelopeFit = $00000003;

// Constants for enum cdrContourEndCapType
type
  cdrContourEndCapType = TOleEnum;
const
  cdrContourButtCap = $00000000;
  cdrContourRoundCap = $00000001;
  cdrContourSquareCap = $00000002;

// Constants for enum cdrContourCornerType
type
  cdrContourCornerType = TOleEnum;
const
  cdrContourCornerBevel = $00000000;
  cdrContourCornerOffsetBevel = $00000001;
  cdrContourCornerRound = $00000002;
  cdrContourCornerMiteredBevel = $00000003;
  cdrContourCornerMiteredOffsetBevel = $00000004;
  cdrContourCornerMiteredRound = $00000005;

// Constants for enum cdrTraceType
type
  cdrTraceType = TOleEnum;
const
  cdrTraceLineArt = $00000001;
  cdrTraceLogo = $00000002;
  cdrTraceDetailedLogo = $00000003;
  cdrTraceClipart = $00000004;
  cdrTraceLowQualityImage = $00000005;
  cdrTraceHighQualityImage = $00000006;
  cdrTraceTechnical = $00000007;
  cdrTraceLineDrawing = $00000008;

// Constants for enum cdrTraceBackgroundMode
type
  cdrTraceBackgroundMode = TOleEnum;
const
  cdrTraceBackgroundAutomatic = $00000001;
  cdrTraceBackgroundManual = $00000002;

// Constants for enum cdrTextPropertySet
type
  cdrTextPropertySet = TOleEnum;
const
  cdrTextPropertyAll = $FFFFFFFF;
  cdrTextPropertyFill = $00000001;
  cdrTextPropertyOutline = $00000002;
  cdrTextPropertyFont = $00000004;
  cdrTextPropertySize = $00000008;
  cdrTextPropertyStyle = $00000010;

// Constants for enum cdrDocLayout
type
  cdrDocLayout = TOleEnum;
const
  cdrDocFullPage = $00000000;
  cdrDocBook = $00000001;
  cdrDocBooklet = $00000002;
  cdrDocTentCard = $00000003;
  cdrDocSideFoldCard = $00000004;
  cdrDocTopFoldCard = $00000005;
  cdrDocTriFoldBrochure = $00000006;

// Constants for enum cdrCopyProperties
type
  cdrCopyProperties = TOleEnum;
const
  cdrCopyOutlineColor = $00000001;
  cdrCopyOutlinePen = $00000002;
  cdrCopyFill = $00000004;
  cdrCopyTextAttrs = $00000008;

// Constants for enum cdrOverprintState
type
  cdrOverprintState = TOleEnum;
const
  cdrOverprintInvalid = $00000001;
  cdrOverprintOn = $00000002;
  cdrOverprintOff = $00000004;

// Constants for enum cdrObjectSnapPointType
type
  cdrObjectSnapPointType = TOleEnum;
const
  cdrObjectPointTop = $00000001;
  cdrObjectPointBottom = $00000002;
  cdrObjectPointLeft = $00000003;
  cdrObjectPointRight = $00000004;

// Constants for enum cdrConnectorType
type
  cdrConnectorType = TOleEnum;
const
  cdrConnectorStraight = $00000000;
  cdrConnectorRightAngle = $00000001;
  cdrConnectorBSpline = $00000002;
  cdrConnectorBezier = $00000003;
  cdrConnectorObject = $00000004;

// Constants for enum cdrCornerType
type
  cdrCornerType = TOleEnum;
const
  cdrCornerTypeRound = $00000000;
  cdrCornerTypeScallop = $00000001;
  cdrCornerTypeChamfer = $00000002;

// Constants for enum clrColorModel
type
  clrColorModel = TOleEnum;
const
  clrColorModelRGB = $00000000;
  clrColorModelCMYK = $00000001;
  clrColorModelGrayscale = $00000002;
  clrColorModelLab = $00000003;
  clrColorModelHexachrome = $00000004;

// Constants for enum clrColorPolicyAction
type
  clrColorPolicyAction = TOleEnum;
const
  clrAssignBaselineProfile = $00000000;
  clrConvertToBaselineProfile = $00000001;
  clrConvertToEmbeddedProfile = $00000002;
  clrAssignEmbeddedProfile = $00000003;

// Constants for enum cdrAlignDistributeH
type
  cdrAlignDistributeH = TOleEnum;
const
  cdrAlignDistributeHNone = $00000000;
  cdrAlignDistributeHAlignRight = $00000001;
  cdrAlignDistributeHAlignLeft = $00000002;
  cdrAlignDistributeHAlignCenter = $00000003;
  cdrAlignDistributeHDistributeRight = $00000004;
  cdrAlignDistributeHDistributeLeft = $00000005;
  cdrAlignDistributeHDistributeCenter = $00000006;
  cdrAlignDistributeHDistributeSpacing = $00000007;

// Constants for enum cdrAlignDistributeV
type
  cdrAlignDistributeV = TOleEnum;
const
  cdrAlignDistributeVNone = $00000000;
  cdrAlignDistributeVAlignTop = $00000001;
  cdrAlignDistributeVAlignBottom = $00000002;
  cdrAlignDistributeVAlignCenter = $00000003;
  cdrAlignDistributeVDistributeTop = $00000004;
  cdrAlignDistributeVDistributeBottom = $00000005;
  cdrAlignDistributeVDistributeCenter = $00000006;
  cdrAlignDistributeVDistributeSpacing = $00000007;

// Constants for enum cdrDistributeArea
type
  cdrDistributeArea = TOleEnum;
const
  cdrDistributeToSelection = $00000000;
  cdrDistributeToPage = $00000001;
  cdrDistributeToRect = $00000002;

// Constants for enum cdrAlignShapesTo
type
  cdrAlignShapesTo = TOleEnum;
const
  cdrAlignShapesToLastSelected = $00000000;
  cdrAlignShapesToEdgeOfPage = $00000001;
  cdrAlignShapesToCenterOfPage = $00000002;
  cdrAlignShapesToGrid = $00000003;
  cdrAlignShapesToPoint = $00000004;

// Constants for enum cdrOutlineJustification
type
  cdrOutlineJustification = TOleEnum;
const
  cdrOutlineJustificationMiddle = $00000000;
  cdrOutlineJustificationInside = $00000001;
  cdrOutlineJustificationOutside = $00000002;

// Constants for enum cdrFillStyleType
type
  cdrFillStyleType = TOleEnum;
const
  cdrNoFillStyle = $00000000;
  cdrUniformFillStyle = $00000001;
  cdrFountainFillStyle = $00000002;
  cdrPostscriptFillStyle = $00000003;
  cdrTwoColorPatternFillStyle = $00000004;
  cdrBitmapPatternFillStyle = $00000006;
  cdrTextureFillStyle = $00000008;
  cdrFullColorPatternFillStyle = $00000009;
  cdrHatchFillStyle = $0000000A;

// Constants for enum PrnFileMode
type
  PrnFileMode = TOleEnum;
const
  prnSingleFile = $00000000;
  prnSeparatePages = $00000001;
  prnSeparatePlates = $00000002;

// Constants for enum PrnPrintRange
type
  PrnPrintRange = TOleEnum;
const
  prnWholeDocument = $00000000;
  prnCurrentPage = $00000001;
  prnSelection = $00000002;
  prnPageRange = $00000003;

// Constants for enum PrnPlateType
type
  PrnPlateType = TOleEnum;
const
  prnCyan = $00000000;
  prnMagenta = $00000001;
  prnYellow = $00000002;
  prnBlack = $00000003;
  prnOrange = $00000004;
  prnGreen = $00000005;
  prnSpot = $00000006;

// Constants for enum PrnRegistrationStyle
type
  PrnRegistrationStyle = TOleEnum;
const
  prnStandard = $00000000;
  prnLong = $00000001;
  prnSquare = $00000002;
  prnHalfInverted = $00000003;
  prnCorel = $00000004;

// Constants for enum PrnPostScriptLevel
type
  PrnPostScriptLevel = TOleEnum;
const
  prnPSLevel1 = $00000001;
  prnPSLevel2 = $00000002;
  prnPSLevel3 = $00000003;

// Constants for enum PrnPDFStartup
type
  PrnPDFStartup = TOleEnum;
const
  prnPDFFullScreen = $00000000;
  prnPDFPageOnly = $00000001;
  prnPDFThumbnails = $00000002;
  prnPDFOutlines = $00000003;

// Constants for enum PrnImageTrap
type
  PrnImageTrap = TOleEnum;
const
  prnTrapNormal = $00000000;
  prnTrapSpread = $00000001;
  prnTrapChoke = $00000002;
  prnTrapCenter = $00000003;

// Constants for enum PrnTrapType
type
  PrnTrapType = TOleEnum;
const
  prnLayerNormal = $00000000;
  prnLayerTransparent = $00000001;
  prnLayerOpaque = $00000002;
  prnLayerOpaqueIgnore = $00000003;

// Constants for enum PrnColorMode
type
  PrnColorMode = TOleEnum;
const
  prnModeFullColor = $00000000;
  prnModeGrayscale = $00000001;
  prnModeBlack = $00000002;

// Constants for enum PrnBitmapColorMode
type
  PrnBitmapColorMode = TOleEnum;
const
  prnBitmapCMYK = $00000000;
  prnBitmapRGB = $00000001;
  prnBitmapGrayscale = $00000002;
  prnBitmapNative = $00000003;

// Constants for enum PrnPageSet
type
  PrnPageSet = TOleEnum;
const
  prnPageSetAll = $00000000;
  prnPageSetOdd = $00000001;
  prnPageSetEven = $00000002;
  prnPageSetLeft = $00000003;
  prnPageSetRight = $00000004;

// Constants for enum PrnPaperSize
type
  PrnPaperSize = TOleEnum;
const
  prnPaperSizeLetter = $00000001;
  prnPaperSizeLetterSmall = $00000002;
  prnPaperSizeTabloid = $00000003;
  prnPaperSizeLedger = $00000004;
  prnPaperSizeLegal = $00000005;
  prnPaperSizeStatement = $00000006;
  prnPaperSizeExecutive = $00000007;
  prnPaperSizeA3 = $00000008;
  prnPaperSizeA4 = $00000009;
  prnPaperSizeA4Small = $0000000A;
  prnPaperSizeA5 = $0000000B;
  prnPaperSizeB4 = $0000000C;
  prnPaperSizeB5 = $0000000D;
  prnPaperSizeFolio = $0000000E;
  prnPaperSizeQuarto = $0000000F;
  prnPaperSize10x14 = $00000010;
  prnPaperSize11x17 = $00000011;
  prnPaperSizeNote = $00000012;
  prnPaperSizeEnv9 = $00000013;
  prnPaperSizeEnv10 = $00000014;
  prnPaperSizeEnv11 = $00000015;
  prnPaperSizeEnv12 = $00000016;
  prnPaperSizeEnv14 = $00000017;
  prnPaperSizeCSheet = $00000018;
  prnPaperSizeDSheet = $00000019;
  prnPaperSizeESheet = $0000001A;
  prnPaperSizeEnvDL = $0000001B;
  prnPaperSizeEnvC5 = $0000001C;
  prnPaperSizeEnvC3 = $0000001D;
  prnPaperSizeEnvC4 = $0000001E;
  prnPaperSizeEnvC6 = $0000001F;
  prnPaperSizeEnvC65 = $00000020;
  prnPaperSizeISOB4 = $00000021;
  prnPaperSizeISOB5 = $00000022;
  prnPaperSizeISOB6 = $00000023;
  prnPaperSizeEnvItaly = $00000024;
  prnPaperSizeEnvMonarch = $00000025;
  prnPaperSizeEnvPersonal = $00000026;
  prnPaperSizeFanfoldUS = $00000027;
  prnPaperSizeFanfoldGerman = $00000028;
  prnPaperSizeFanfoldLglGerman = $00000029;
  prnPaperSizeJapanesePostcard = $0000002B;
  prnPaperSize9x11 = $0000002C;
  prnPaperSize10x11 = $0000002D;
  prnPaperSize15x11 = $0000002E;
  prnPaperSizeEnvInvite = $0000002F;
  prnPaperSizeLetterExtra = $00000032;
  prnPaperSizeLegalExtra = $00000033;
  prnPaperSizeTabloidExtra = $00000034;
  prnPaperSizeA4Extra = $00000035;
  prnPaperSizeLetterTransverse = $00000036;
  prnPaperSizeA4Transverse = $00000037;
  prnPaperSizeLetterExtraTransverse = $00000038;
  prnPaperSizeAPlus = $00000039;
  prnPaperSizeBPlus = $0000003A;
  prnPaperSizeLetterPlus = $0000003B;
  prnPaperSizeA4Plus = $0000003C;
  prnPaperSizeA5Transverse = $0000003D;
  prnPaperSizeB5Transverse = $0000003E;
  prnPaperSizeA3Extra = $0000003F;
  prnPaperSizeA5Extra = $00000040;
  prnPaperSizeB5Extra = $00000041;
  prnPaperSizeA2 = $00000042;
  prnPaperSizeA3Transverse = $00000043;
  prnPaperSizeA3ExtraTransverse = $00000044;
  prnPaperSizeJapaneseDblPostcard = $00000045;
  prnPaperSizeA6 = $00000046;
  prnPaperSizeLetterRotated = $0000004B;
  prnPaperSizeA3Rotated = $0000004C;
  prnPaperSizeA4Rotated = $0000004D;
  prnPaperSizeA5Rotated = $0000004E;
  prnPaperSizeB4JISRotated = $0000004F;
  prnPaperSizeB5JISRotated = $00000050;
  prnPaperSizeJapanesePostcardRotated = $00000051;
  prnPaperSizeJapaneseDlbPostcardRotated = $00000052;
  prnPaperSizeA6Rotated = $00000053;
  prnPaperSizeB6JIS = $00000058;
  prnPaperSizeB6JISRotated = $00000059;
  prnPaperSize12x11 = $0000005A;
  prnPaperSizeP16K = $0000005D;
  prnPaperSizeP32K = $0000005E;
  prnPaperSizeP32KBig = $0000005F;
  prnPaperSizePEnv1 = $00000060;
  prnPaperSizePEnv2 = $00000061;
  prnPaperSizePEnv3 = $00000062;
  prnPaperSizePEnv4 = $00000063;
  prnPaperSizePEnv5 = $00000064;
  prnPaperSizePEnv6 = $00000065;
  prnPaperSizePEnv7 = $00000066;
  prnPaperSizePEnv8 = $00000067;
  prnPaperSizePEnv9 = $00000068;
  prnPaperSizePEnv10 = $00000069;
  prnPaperSizeP16KRotated = $0000006A;
  prnPaperSizeP32KRotated = $0000006B;
  prnPaperSizeP32KBigRotated = $0000006C;
  prnPaperSizePEnv1Rotated = $0000006D;
  prnPaperSizePEnv2Rotated = $0000006E;
  prnPaperSizePEnv3Rotated = $0000006F;
  prnPaperSizePEnv4Rotated = $00000070;
  prnPaperSizePEnv5Rotated = $00000071;
  prnPaperSizePEnv6Rotated = $00000072;
  prnPaperSizePEnv7Rotated = $00000073;
  prnPaperSizePEnv8Rotated = $00000074;
  prnPaperSizePEnv9Rotated = $00000075;
  prnPaperSizePEnv10Rotated = $00000076;

// Constants for enum PrnPaperOrientation
type
  PrnPaperOrientation = TOleEnum;
const
  prnPaperPortrait = $00000001;
  prnPaperLandscape = $00000002;
  prnPaperRotatedLandscape = $00000003;

// Constants for enum PrnPlaceType
type
  PrnPlaceType = TOleEnum;
const
  prnPlaceAsInDocument = $00000000;
  prnPlaceFitToPage = $00000001;
  prnPlaceCenterPage = $00000002;
  prnPlaceCenterTop = $00000003;
  prnPlaceCenterLeft = $00000004;
  prnPlaceCenterRight = $00000005;
  prnPlaceCenterBottom = $00000006;
  prnPlaceLeftTop = $00000007;
  prnPlaceRightTop = $00000008;
  prnPlaceLeftBottom = $00000009;
  prnPlaceRightBottom = $0000000A;
  prnPlaceCustom = $0000000B;

// Constants for enum PrnObjectsColorMode
type
  PrnObjectsColorMode = TOleEnum;
const
  prnObjectsCMYK = $00000000;
  prnObjectsRGB = $00000001;
  prnObjectsGrayscale = $00000002;
  prnObjectsNative = $00000003;

// Constants for enum PrnPageMatchingMode
type
  PrnPageMatchingMode = TOleEnum;
const
  prnPageMatchPrinterDefault = $00000000;
  prnPageMatchOrientation = $00000001;
  prnPageMatchSizeAndOrientation = $00000002;

// Constants for enum pdfExportRange
type
  pdfExportRange = TOleEnum;
const
  pdfWholeDocument = $00000000;
  pdfCurrentPage = $00000001;
  pdfSelection = $00000002;
  pdfPageRange = $00000003;

// Constants for enum pdfBitmapCompressionType
type
  pdfBitmapCompressionType = TOleEnum;
const
  pdfNone = $00000000;
  pdfLZW = $00000001;
  pdfJPEG = $00000002;
  pdfZIP = $00000003;
  pdfJP2 = $00000004;

// Constants for enum pdfEncodingType
type
  pdfEncodingType = TOleEnum;
const
  pdfASCII85 = $00000000;
  pdfBinary = $00000001;

// Constants for enum pdfColorMode
type
  pdfColorMode = TOleEnum;
const
  pdfRGB = $00000000;
  pdfCMYK = $00000001;
  pdfGrayscale = $00000002;
  pdfNative = $00000003;

// Constants for enum pdfColorProfile
type
  pdfColorProfile = TOleEnum;
const
  pdfCompositeProfile = $00000000;
  pdfSeparationProfile = $00000001;

// Constants for enum pdfEPSAs
type
  pdfEPSAs = TOleEnum;
const
  pdfPostscript = $00000000;
  pdfPreview = $00000001;

// Constants for enum pdfDisplayOnStart
type
  pdfDisplayOnStart = TOleEnum;
const
  pdfPageOnly = $00000000;
  pdfFullScreen = $00000001;
  pdfBookmarks = $00000002;
  pdfThumbnails = $00000003;

// Constants for enum pdfVersion
type
  pdfVersion = TOleEnum;
const
  pdfVersion12 = $00000000;
  pdfVersion13 = $00000001;
  pdfVersionPDFX1 = $00000002;
  pdfVersion14 = $00000003;
  pdfVersionPDFX1a = $00000004;
  pdfVersionPDFX3 = $00000005;
  pdfVersion15 = $00000006;
  pdfVersionPDFA1b = $00000007;
  pdfVersion17 = $00000008;
  pdfVersion17_Acrobat9 = $00000009;

// Constants for enum pdfTextExportMode
type
  pdfTextExportMode = TOleEnum;
const
  pdfTextAsUnicode = $00000000;
  pdfTextAsAscii = $00000001;

// Constants for enum pdfPrintPermissions
type
  pdfPrintPermissions = TOleEnum;
const
  pdfPrintPermissionNone = $00000000;
  pdfPrintPermissionLowResolution = $00000001;
  pdfPrintPermissionHighResolution = $00000002;

// Constants for enum pdfEditPermissions
type
  pdfEditPermissions = TOleEnum;
const
  pdfEditPermissionNone = $00000000;
  pdfEditPermissionInsertDeleteRotatePage = $00000001;
  pdfEditPermissionAny = $00000002;

// Constants for enum pdfEncryptionType
type
  pdfEncryptionType = TOleEnum;
const
  pdfEncryptTypeNone = $00000000;
  pdfEncryptTypeStandard = $00000001;
  pdfEncryptTypeAES = $00000002;
  pdfEncryptTypeAES256 = $00000003;

// Constants for enum pdfSpotType
type
  pdfSpotType = TOleEnum;
const
  pdfSpotAsSpot = $00000000;
  pdfSpotAsRGB = $00000001;
  pdfSpotAsCMYK = $00000002;
  pdfSpotAsGray = $00000003;

// Constants for enum cuiBarType
type
  cuiBarType = TOleEnum;
const
  cuiBarTypeNormal = $00000000;
  cuiBarTypeMenuBar = $00000001;
  cuiBarTypePopup = $00000002;
  cuiBarTypeStatusBar = $00000003;
  cuiBarTypePropertyBar = $00000004;

// Constants for enum cuiBarPosition
type
  cuiBarPosition = TOleEnum;
const
  cuiBarLeft = $00000000;
  cuiBarTop = $00000001;
  cuiBarRight = $00000002;
  cuiBarBottom = $00000003;
  cuiBarFloating = $00000004;

// Constants for enum cuiBarProtection
type
  cuiBarProtection = TOleEnum;
const
  cuiBarNoProtection = $00000000;
  cuiBarNoCustomize = $00000001;
  cuiBarNoMove = $00000004;
  cuiBarNoChangeVisible = $00000008;
  cuiBarNoChangeDock = $00000010;
  cuiBarNoVerticalDock = $00000020;
  cuiBarNoHorizontalDock = $00000040;

// Constants for enum cuiButtonState
type
  cuiButtonState = TOleEnum;
const
  cuiButtonUp = $00000000;
  cuiButtonDown = $00000001;
  cuiButtonMixed = $00000002;

// Constants for enum cuiButtonStyle
type
  cuiButtonStyle = TOleEnum;
const
  cuiButtonStyleDefault = $00000000;
  cuiButtonStyleImage = $00000001;
  cuiButtonStyleText = $00000002;
  cuiButtonStyleImageAndText = $00000003;
  cuiButtonStyleTextBelowImage = $00000004;

// Constants for enum cuiControlType
type
  cuiControlType = TOleEnum;
const
  cuiControlTypeButton = $00000000;

// Constants for enum cuiLabelType
type
  cuiLabelType = TOleEnum;
const
  cuiLabelText = $00000000;
  cuiLabelImage = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICorelImportFilter = interface;
  ICorelImportFilterDisp = dispinterface;
  ICorelExportFilter = interface;
  ICorelExportFilterDisp = dispinterface;
  CommandBars = interface;
  CommandBarsDisp = dispinterface;
  CommandBar = interface;
  CommandBarDisp = dispinterface;
  CommandBarControls = interface;
  CommandBarControlsDisp = dispinterface;
  CommandBarControl = interface;
  CommandBarControlDisp = dispinterface;
  CommandBarModes = interface;
  CommandBarModesDisp = dispinterface;
  CommandBarMode = interface;
  CommandBarModeDisp = dispinterface;
  Automation = interface;
  AutomationDisp = dispinterface;
  ControlData = interface;
  ControlDataDisp = dispinterface;
  FrameWork = interface;
  FrameWorkDisp = dispinterface;
  IPrnVBAPrintLayout = interface;
  IPrnVBAPrintLayoutDisp = dispinterface;
  IPrnVBAPrinter = interface;
  IPrnVBAPrinterDisp = dispinterface;
  IPrnVBAPrinters = interface;
  IPrnVBAPrintersDisp = dispinterface;
  IPrnVBASeparationPlate = interface;
  IPrnVBASeparationPlateDisp = dispinterface;
  IPrnVBASeparationPlates = interface;
  IPrnVBASeparationPlatesDisp = dispinterface;
  IPrnVBAPrintSeparations = interface;
  IPrnVBAPrintSeparationsDisp = dispinterface;
  IPrnVBAPrintPrepress = interface;
  IPrnVBAPrintPrepressDisp = dispinterface;
  IPrnVBAPrintPostScript = interface;
  IPrnVBAPrintPostScriptDisp = dispinterface;
  IPrnVBATrapLayer = interface;
  IPrnVBATrapLayerDisp = dispinterface;
  IPrnVBATrapLayers = interface;
  IPrnVBATrapLayersDisp = dispinterface;
  IPrnVBAPrintTrapping = interface;
  IPrnVBAPrintTrappingDisp = dispinterface;
  IPrnVBAPrintOptions = interface;
  IPrnVBAPrintOptionsDisp = dispinterface;
  IPrnVBAPrintSettings = interface;
  IPrnVBAPrintSettingsDisp = dispinterface;
  IPrnVBAPrintDocument = interface;
  IPrnVBAPrintDocumentDisp = dispinterface;
  IPrnVBAPrintDocuments = interface;
  IPrnVBAPrintDocumentsDisp = dispinterface;
  IPrnVBAPrintPage = interface;
  IPrnVBAPrintPageDisp = dispinterface;
  IPrnVBAPrintPages = interface;
  IPrnVBAPrintPagesDisp = dispinterface;
  IPrnVBAPrintJob = interface;
  IPrnVBAPrintJobDisp = dispinterface;
  IPDFVBASettings = interface;
  IPDFVBASettingsDisp = dispinterface;
  IVGDocument = interface;
  IVGDocumentDisp = dispinterface;
  IVGApplication = interface;
  IVGApplicationDisp = dispinterface;
  IVGDocuments = interface;
  IVGDocumentsDisp = dispinterface;
  IVGPage = interface;
  IVGPageDisp = dispinterface;
  IVGPages = interface;
  IVGPagesDisp = dispinterface;
  IVGLayers = interface;
  IVGLayersDisp = dispinterface;
  IVGLayer = interface;
  IVGLayerDisp = dispinterface;
  IVGShapes = interface;
  IVGShapesDisp = dispinterface;
  IVGShape = interface;
  IVGShapeDisp = dispinterface;
  IVGRectangle = interface;
  IVGRectangleDisp = dispinterface;
  IVGEllipse = interface;
  IVGEllipseDisp = dispinterface;
  IVGPolygon = interface;
  IVGPolygonDisp = dispinterface;
  IVGCurve = interface;
  IVGCurveDisp = dispinterface;
  IVGSubPaths = interface;
  IVGSubPathsDisp = dispinterface;
  IVGSubPath = interface;
  IVGSubPathDisp = dispinterface;
  IVGNodes = interface;
  IVGNodesDisp = dispinterface;
  IVGNode = interface;
  IVGNodeDisp = dispinterface;
  IVGSegment = interface;
  IVGSegmentDisp = dispinterface;
  IVGCrossPoints = interface;
  IVGCrossPointsDisp = dispinterface;
  IVGCrossPoint = interface;
  IVGCrossPointDisp = dispinterface;
  IVGRect = interface;
  IVGRectDisp = dispinterface;
  IVGNodeRange = interface;
  IVGNodeRangeDisp = dispinterface;
  IVGSegmentRange = interface;
  IVGSegmentRangeDisp = dispinterface;
  IVGSegments = interface;
  IVGSegmentsDisp = dispinterface;
  IVGBitmap = interface;
  IVGBitmapDisp = dispinterface;
  IVGStructPaletteOptions = interface;
  IVGStructPaletteOptionsDisp = dispinterface;
  IVGDuotone = interface;
  IVGDuotoneDisp = dispinterface;
  IVGDuotoneOverprint = interface;
  IVGDuotoneOverprintDisp = dispinterface;
  IVGColor = interface;
  IVGColorDisp = dispinterface;
  IVGColorContext = interface;
  IVGColorContextDisp = dispinterface;
  IVGColorProfile = interface;
  IVGColorProfileDisp = dispinterface;
  IVGColorProfiles = interface;
  IVGColorProfilesDisp = dispinterface;
  IVGPalette = interface;
  IVGPaletteDisp = dispinterface;
  IVGColors = interface;
  IVGColorsDisp = dispinterface;
  IVGDuotoneInk = interface;
  IVGDuotoneInkDisp = dispinterface;
  IVGTraceSettings = interface;
  IVGTraceSettingsDisp = dispinterface;
  IVGShapeRange = interface;
  IVGShapeRangeDisp = dispinterface;
  IVGOutlineStyle = interface;
  IVGOutlineStyleDisp = dispinterface;
  IVGArrowHead = interface;
  IVGArrowHeadDisp = dispinterface;
  IVGFill = interface;
  IVGFillDisp = dispinterface;
  IVGFountainFill = interface;
  IVGFountainFillDisp = dispinterface;
  IVGFountainColors = interface;
  IVGFountainColorsDisp = dispinterface;
  IVGFountainColor = interface;
  IVGFountainColorDisp = dispinterface;
  IVGPatternFill = interface;
  IVGPatternFillDisp = dispinterface;
  IVGPatternCanvas = interface;
  IVGPatternCanvasDisp = dispinterface;
  IVGTextureFill = interface;
  IVGTextureFillDisp = dispinterface;
  IVGTextureFillProperties = interface;
  IVGTextureFillPropertiesDisp = dispinterface;
  IVGTextureFillProperty = interface;
  IVGTextureFillPropertyDisp = dispinterface;
  IVGPostScriptFill = interface;
  IVGPostScriptFillDisp = dispinterface;
  IVGPSScreenOptions = interface;
  IVGPSScreenOptionsDisp = dispinterface;
  IVGHatchFill = interface;
  IVGHatchFillDisp = dispinterface;
  IVGHatchPatterns = interface;
  IVGHatchPatternsDisp = dispinterface;
  IVGHatchPattern = interface;
  IVGHatchPatternDisp = dispinterface;
  IVGOutline = interface;
  IVGOutlineDisp = dispinterface;
  IVGArrowHeadOptions = interface;
  IVGArrowHeadOptionsDisp = dispinterface;
  IVGHatchLibrary = interface;
  IVGHatchLibraryDisp = dispinterface;
  IVGHatchFills = interface;
  IVGHatchFillsDisp = dispinterface;
  IVGText = interface;
  IVGTextDisp = dispinterface;
  IVGStructFontProperties = interface;
  IVGStructFontPropertiesDisp = dispinterface;
  IVGStructAlignProperties = interface;
  IVGStructAlignPropertiesDisp = dispinterface;
  IVGStructSpaceProperties = interface;
  IVGStructSpacePropertiesDisp = dispinterface;
  IVGStructHyphenationSettings = interface;
  IVGStructHyphenationSettingsDisp = dispinterface;
  IVGEffect = interface;
  IVGEffectDisp = dispinterface;
  IVGEffects = interface;
  IVGEffectsDisp = dispinterface;
  IVGEffectBlend = interface;
  IVGEffectBlendDisp = dispinterface;
  IVGSnapPoint = interface;
  IVGSnapPointDisp = dispinterface;
  IVGUserSnapPoint = interface;
  IVGUserSnapPointDisp = dispinterface;
  IVGObjectSnapPoint = interface;
  IVGObjectSnapPointDisp = dispinterface;
  IVGBBoxSnapPoint = interface;
  IVGBBoxSnapPointDisp = dispinterface;
  IVGEdgeSnapPoint = interface;
  IVGEdgeSnapPointDisp = dispinterface;
  IVGEffectControlPath = interface;
  IVGEffectControlPathDisp = dispinterface;
  IVGEffectExtrude = interface;
  IVGEffectExtrudeDisp = dispinterface;
  IVGExtrudeVanishingPoint = interface;
  IVGExtrudeVanishingPointDisp = dispinterface;
  IVGEffectEnvelope = interface;
  IVGEffectEnvelopeDisp = dispinterface;
  IVGEffectTextOnPath = interface;
  IVGEffectTextOnPathDisp = dispinterface;
  IVGEffectDropShadow = interface;
  IVGEffectDropShadowDisp = dispinterface;
  IVGEffectContour = interface;
  IVGEffectContourDisp = dispinterface;
  IVGEffectDistortion = interface;
  IVGEffectDistortionDisp = dispinterface;
  IVGEffectPushPullDistortion = interface;
  IVGEffectPushPullDistortionDisp = dispinterface;
  IVGEffectZipperDistortion = interface;
  IVGEffectZipperDistortionDisp = dispinterface;
  IVGEffectTwisterDistortion = interface;
  IVGEffectTwisterDistortionDisp = dispinterface;
  IVGEffectCustomDistortion = interface;
  IVGEffectCustomDistortionDisp = dispinterface;
  IVGEffectLens = interface;
  IVGEffectLensDisp = dispinterface;
  IVGEffectPerspective = interface;
  IVGEffectPerspectiveDisp = dispinterface;
  IVGCustomEffect = interface;
  IVGCustomEffectDisp = dispinterface;
  IVGTextRange = interface;
  IVGTextRangeDisp = dispinterface;
  IVGTextCharacters = interface;
  IVGTextCharactersDisp = dispinterface;
  IVGTextWords = interface;
  IVGTextWordsDisp = dispinterface;
  IVGTextLines = interface;
  IVGTextLinesDisp = dispinterface;
  IVGTextParagraphs = interface;
  IVGTextParagraphsDisp = dispinterface;
  IVGTextColumns = interface;
  IVGTextColumnsDisp = dispinterface;
  IVGTextFrames = interface;
  IVGTextFramesDisp = dispinterface;
  IVGTextFrame = interface;
  IVGTextFrameDisp = dispinterface;
  IVGTextTabPositions = interface;
  IVGTextTabPositionsDisp = dispinterface;
  IVGTextTabPosition = interface;
  IVGTextTabPositionDisp = dispinterface;
  IVGTextRanges = interface;
  IVGTextRangesDisp = dispinterface;
  IVGStyle = interface;
  IVGStyleDisp = dispinterface;
  IVGStyleOutline = interface;
  IVGStyleOutlineDisp = dispinterface;
  IVGStyleFill = interface;
  IVGStyleFillDisp = dispinterface;
  IVGStyleCharacter = interface;
  IVGStyleCharacterDisp = dispinterface;
  IVGStyleParagraph = interface;
  IVGStyleParagraphDisp = dispinterface;
  IVGStyleFrame = interface;
  IVGStyleFrameDisp = dispinterface;
  IVGStyles = interface;
  IVGStylesDisp = dispinterface;
  IVGSnapPoints = interface;
  IVGSnapPointsDisp = dispinterface;
  IVGSnapPointRange = interface;
  IVGSnapPointRangeDisp = dispinterface;
  IVGConnector = interface;
  IVGConnectorDisp = dispinterface;
  IVGProperties = interface;
  IVGPropertiesDisp = dispinterface;
  IVGGuide = interface;
  IVGGuideDisp = dispinterface;
  IVGPowerClip = interface;
  IVGPowerClipDisp = dispinterface;
  IVGURL = interface;
  IVGURLDisp = dispinterface;
  IVGDataItems = interface;
  IVGDataItemsDisp = dispinterface;
  IVGDataItem = interface;
  IVGDataItemDisp = dispinterface;
  IVGDataField = interface;
  IVGDataFieldDisp = dispinterface;
  IVGDataFields = interface;
  IVGDataFieldsDisp = dispinterface;
  IVGCloneLink = interface;
  IVGCloneLinkDisp = dispinterface;
  IVGTransparency = interface;
  IVGTransparencyDisp = dispinterface;
  IVGCustomShape = interface;
  IVGCustomShapeDisp = dispinterface;
  IVGDimension = interface;
  IVGDimensionDisp = dispinterface;
  IVGDimensionLinear = interface;
  IVGDimensionLinearDisp = dispinterface;
  IVGDimensionAngular = interface;
  IVGDimensionAngularDisp = dispinterface;
  IVGSymbol = interface;
  IVGSymbolDisp = dispinterface;
  IVGSymbolDefinition = interface;
  IVGSymbolDefinitionDisp = dispinterface;
  IVGSymbolDefinitions = interface;
  IVGSymbolDefinitionsDisp = dispinterface;
  IVGOLE = interface;
  IVGOLEDisp = dispinterface;
  IVGTreeNode = interface;
  IVGTreeNodeDisp = dispinterface;
  IVGTreeNodes = interface;
  IVGTreeNodesDisp = dispinterface;
  IVGEPS = interface;
  IVGEPSDisp = dispinterface;
  IVGSpread = interface;
  IVGSpreadDisp = dispinterface;
  IVGBSpline = interface;
  IVGBSplineDisp = dispinterface;
  IVGBSplineControlPoints = interface;
  IVGBSplineControlPointsDisp = dispinterface;
  IVGBSplineControlPoint = interface;
  IVGBSplineControlPointDisp = dispinterface;
  IVGStructImportOptions = interface;
  IVGStructImportOptionsDisp = dispinterface;
  IImportCropHandler = interface;
  IImportCropHandlerDisp = dispinterface;
  IStructImportCropOptions = interface;
  IStructImportCropOptionsDisp = dispinterface;
  IImportResampleHandler = interface;
  IImportResampleHandlerDisp = dispinterface;
  IStructImportResampleOptions = interface;
  IStructImportResampleOptionsDisp = dispinterface;
  IVGStructColorConversionOptions = interface;
  IVGStructColorConversionOptionsDisp = dispinterface;
  IVGColorManagementPolicy = interface;
  IVGColorManagementPolicyDisp = dispinterface;
  IColorConversionHandler = interface;
  IColorConversionHandlerDisp = dispinterface;
  IVGSymbolLibrary = interface;
  IVGSymbolLibraryDisp = dispinterface;
  IVGStructPasteOptions = interface;
  IVGStructPasteOptionsDisp = dispinterface;
  IVGWindow = interface;
  IVGWindowDisp = dispinterface;
  IVGWindows = interface;
  IVGWindowsDisp = dispinterface;
  IVGActiveView = interface;
  IVGActiveViewDisp = dispinterface;
  IVGProofColorSettings = interface;
  IVGProofColorSettingsDisp = dispinterface;
  ICorelScriptTools = interface;
  ICorelScriptToolsDisp = dispinterface;
  IVGWorkspace = interface;
  IVGWorkspaceDisp = dispinterface;
  IVGWorkspaces = interface;
  IVGWorkspacesDisp = dispinterface;
  IVGPalettes = interface;
  IVGPalettesDisp = dispinterface;
  IVGFontList = interface;
  IVGFontListDisp = dispinterface;
  IVGAppWindow = interface;
  IVGAppWindowDisp = dispinterface;
  IVGRecentFiles = interface;
  IVGRecentFilesDisp = dispinterface;
  IVGRecentFile = interface;
  IVGRecentFileDisp = dispinterface;
  IVGArrowHeads = interface;
  IVGArrowHeadsDisp = dispinterface;
  IVGOutlineStyles = interface;
  IVGOutlineStylesDisp = dispinterface;
  IVGPatternCanvases = interface;
  IVGPatternCanvasesDisp = dispinterface;
  IVGClipboard = interface;
  IVGClipboardDisp = dispinterface;
  IVGAddins = interface;
  IVGAddinsDisp = dispinterface;
  IVGAddinHook = interface;
  IVGAddinHookDisp = dispinterface;
  IVGGMSManager = interface;
  IVGGMSManagerDisp = dispinterface;
  IVGGMSProjects = interface;
  IVGGMSProjectsDisp = dispinterface;
  IVGGMSProject = interface;
  IVGGMSProjectDisp = dispinterface;
  IVGGMSMacros = interface;
  IVGGMSMacrosDisp = dispinterface;
  IVGGMSMacro = interface;
  IVGGMSMacroDisp = dispinterface;
  IVGStructSaveAsOptions = interface;
  IVGStructSaveAsOptionsDisp = dispinterface;
  IVGStructExportOptions = interface;
  IVGStructExportOptionsDisp = dispinterface;
  IVGComponents = interface;
  IVGComponentsDisp = dispinterface;
  IVGComponent = interface;
  IVGComponentDisp = dispinterface;
  IVGSymbolLibraries = interface;
  IVGSymbolLibrariesDisp = dispinterface;
  IVGAppStatus = interface;
  IVGAppStatusDisp = dispinterface;
  IVGPageSizes = interface;
  IVGPageSizesDisp = dispinterface;
  IVGPageSize = interface;
  IVGPageSizeDisp = dispinterface;
  IVGTreeManager = interface;
  IVGTreeManagerDisp = dispinterface;
  IVGColorManager = interface;
  IVGColorManagerDisp = dispinterface;
  IVGStructOpenOptions = interface;
  IVGStructOpenOptionsDisp = dispinterface;
  IVGStructCreateOptions = interface;
  IVGStructCreateOptionsDisp = dispinterface;
  IVGPaletteManager = interface;
  IVGPaletteManagerDisp = dispinterface;
  IVGRulers = interface;
  IVGRulersDisp = dispinterface;
  IVGGrid = interface;
  IVGGridDisp = dispinterface;
  IVGViews = interface;
  IVGViewsDisp = dispinterface;
  IVGView = interface;
  IVGViewDisp = dispinterface;
  IVGSelectionInformation = interface;
  IVGSelectionInformationDisp = dispinterface;
  IVGHatchLibraries = interface;
  IVGHatchLibrariesDisp = dispinterface;
  IVGMetadata = interface;
  IVGMetadataDisp = dispinterface;
  IVGSpreads = interface;
  IVGSpreadsDisp = dispinterface;
  IVGStyleSheet = interface;
  IVGStyleSheetDisp = dispinterface;
  IVGAddinHookEvents = interface;
  IVGAddinHookEventsDisp = dispinterface;
  DIVGAddinHookEvents = dispinterface;
  IVGAppPlugin = interface;
  IVGAppPluginDisp = dispinterface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PPSafeArray1 = ^PSafeArray; {*}
  PPSafeArray2 = ^PSafeArray; {*}
  POleVariant1 = ^OleVariant; {*}
  PPUserType1 = ^IImportCropHandler; {*}
  PPUserType2 = ^IImportResampleHandler; {*}
  PPUserType3 = ^IColorConversionHandler; {*}
  PPUserType4 = ^IVGRect; {*}
  PPUserType5 = ^IVGColorProfile; {*}
  PUserType1 = ^TGUID; {*}
  PShortint1 = ^Shortint; {*}
  PPShortint1 = ^PShortint1; {*}
  PUserType2 = ^DISPPARAMS; {*}

{$ALIGN 8}
  CurveElement = record
    PositionX: Double;
    PositionY: Double;
    ElementType: cdrCurveElementType;
    NodeType: cdrNodeType;
    Flags: Byte;
  end;

  INT_PTR = Int64; 

// *********************************************************************//
// Interface: ICorelImportFilter
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5200003-8D23-0001-89E7-0000861EBBD6}
// *********************************************************************//
  ICorelImportFilter = interface(IDispatch)
    ['{F5200003-8D23-0001-89E7-0000861EBBD6}']
    procedure Reset; safecall;
    procedure Finish; safecall;
    function Get_HasDialog: WordBool; safecall;
    function ShowDialog(hWnd: Integer): WordBool; safecall;
    property HasDialog: WordBool read Get_HasDialog;
  end;

// *********************************************************************//
// DispIntf:  ICorelImportFilterDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5200003-8D23-0001-89E7-0000861EBBD6}
// *********************************************************************//
  ICorelImportFilterDisp = dispinterface
    ['{F5200003-8D23-0001-89E7-0000861EBBD6}']
    procedure Reset; dispid 1;
    procedure Finish; dispid 2;
    property HasDialog: WordBool readonly dispid 3;
    function ShowDialog(hWnd: Integer): WordBool; dispid 4;
  end;

// *********************************************************************//
// Interface: ICorelExportFilter
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5200000-8D23-0002-89E7-0000861EBBD6}
// *********************************************************************//
  ICorelExportFilter = interface(IDispatch)
    ['{F5200000-8D23-0002-89E7-0000861EBBD6}']
    procedure Reset; safecall;
    procedure Finish; safecall;
    function Get_HasDialog: WordBool; safecall;
    function ShowDialog(hWnd: Integer): WordBool; safecall;
    property HasDialog: WordBool read Get_HasDialog;
  end;

// *********************************************************************//
// DispIntf:  ICorelExportFilterDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5200000-8D23-0002-89E7-0000861EBBD6}
// *********************************************************************//
  ICorelExportFilterDisp = dispinterface
    ['{F5200000-8D23-0002-89E7-0000861EBBD6}']
    procedure Reset; dispid 1;
    procedure Finish; dispid 2;
    property HasDialog: WordBool readonly dispid 3;
    function ShowDialog(hWnd: Integer): WordBool; dispid 4;
  end;

// *********************************************************************//
// Interface: CommandBars
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E6E-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBars = interface(IDispatch)
    ['{A2524E6E-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Item(IndexOrName: OleVariant): CommandBar; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const Name: WideString; Position: cuiBarPosition; Temporary: WordBool): CommandBar; safecall;
    property Item[IndexOrName: OleVariant]: CommandBar read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  CommandBarsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E6E-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarsDisp = dispinterface
    ['{A2524E6E-50C1-11D3-8EA3-0090271BECDD}']
    property Item[IndexOrName: OleVariant]: CommandBar readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const Name: WideString; Position: cuiBarPosition; Temporary: WordBool): CommandBar; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: CommandBar
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A2524E6F-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBar = interface(IDispatch)
    ['{A2524E6F-50C1-11D3-8EA3-0090271BECDD}']
    function Get_type_: cuiBarType; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function Get_Controls: CommandBarControls; safecall;
    function Get_Modes: CommandBarModes; safecall;
    function Get_BuiltIn: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pVal: WordBool); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pVal: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(pVal: Integer); safecall;
    function Get_Height: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Index: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_NameLocal: WideString; safecall;
    procedure Set_NameLocal(const pVal: WideString); safecall;
    function Get_Position: cuiBarPosition; safecall;
    procedure Set_Position(pVal: cuiBarPosition); safecall;
    function Get_Protection: cuiBarProtection; safecall;
    procedure Set_Protection(pVal: cuiBarProtection); safecall;
    procedure Delete; safecall;
    procedure Reset; safecall;
    procedure ShowPopup(x: OleVariant; y: OleVariant); safecall;
    procedure SetWidth(Width: Integer); safecall;
    property type_: cuiBarType read Get_type_;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Controls: CommandBarControls read Get_Controls;
    property Modes: CommandBarModes read Get_Modes;
    property BuiltIn: WordBool read Get_BuiltIn;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Height: Integer read Get_Height;
    property Width: Integer read Get_Width;
    property Index: Integer read Get_Index;
    property Name: WideString read Get_Name write Set_Name;
    property NameLocal: WideString read Get_NameLocal write Set_NameLocal;
    property Position: cuiBarPosition read Get_Position write Set_Position;
    property Protection: cuiBarProtection read Get_Protection write Set_Protection;
  end;

// *********************************************************************//
// DispIntf:  CommandBarDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A2524E6F-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarDisp = dispinterface
    ['{A2524E6F-50C1-11D3-8EA3-0090271BECDD}']
    property type_: cuiBarType readonly dispid 1610743808;
    property Visible: WordBool dispid 1610743809;
    property Controls: CommandBarControls readonly dispid 1610743811;
    property Modes: CommandBarModes readonly dispid 1610743812;
    property BuiltIn: WordBool readonly dispid 1610743813;
    property Enabled: WordBool dispid 1610743814;
    property Left: Integer dispid 1610743816;
    property Top: Integer dispid 1610743818;
    property Height: Integer readonly dispid 1610743820;
    property Width: Integer readonly dispid 1610743821;
    property Index: Integer readonly dispid 1610743822;
    property Name: WideString dispid 0;
    property NameLocal: WideString dispid 1610743825;
    property Position: cuiBarPosition dispid 1610743827;
    property Protection: cuiBarProtection dispid 1610743829;
    procedure Delete; dispid 1610743831;
    procedure Reset; dispid 1610743832;
    procedure ShowPopup(x: OleVariant; y: OleVariant); dispid 1610743833;
    procedure SetWidth(Width: Integer); dispid 1610743834;
  end;

// *********************************************************************//
// Interface: CommandBarControls
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E70-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarControls = interface(IDispatch)
    ['{A2524E70-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): CommandBarControl; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const ControlID: WideString; Index: Integer; Temporary: WordBool): CommandBarControl; safecall;
    function AddCustomButton(const CategoryID: WideString; const Command: WideString; 
                             Index: Integer; Temporary: WordBool): CommandBarControl; safecall;
    function AddCustomControl(const ClassName: WideString; const AssemblyPath: WideString; 
                              Index: Integer; Temporary: WordBool): CommandBarControl; safecall;
    function AddToggleButton(const Guid: WideString; Index: Integer; Temporary: WordBool): CommandBarControl; safecall;
    procedure Remove(Index: Integer); safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: CommandBarControl read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  CommandBarControlsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E70-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarControlsDisp = dispinterface
    ['{A2524E70-50C1-11D3-8EA3-0090271BECDD}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: Integer]: CommandBarControl readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const ControlID: WideString; Index: Integer; Temporary: WordBool): CommandBarControl; dispid 1610743811;
    function AddCustomButton(const CategoryID: WideString; const Command: WideString; 
                             Index: Integer; Temporary: WordBool): CommandBarControl; dispid 1610743812;
    function AddCustomControl(const ClassName: WideString; const AssemblyPath: WideString; 
                              Index: Integer; Temporary: WordBool): CommandBarControl; dispid 1610743813;
    function AddToggleButton(const Guid: WideString; Index: Integer; Temporary: WordBool): CommandBarControl; dispid 1610743814;
    procedure Remove(Index: Integer); dispid 1610743815;
  end;

// *********************************************************************//
// Interface: CommandBarControl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E71-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarControl = interface(IDispatch)
    ['{A2524E71-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const pVal: WideString); safecall;
    function Get_DescriptionText: WideString; safecall;
    procedure Set_DescriptionText(const pVal: WideString); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Id: WideString; safecall;
    function Get_Parameter: OleVariant; safecall;
    procedure Set_Parameter(pVal: OleVariant); safecall;
    function Get_Tag: WideString; safecall;
    procedure Set_Tag(const pVal: WideString); safecall;
    function Get_ToolTipText: WideString; safecall;
    procedure Set_ToolTipText(const pVal: WideString); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    procedure SetIcon(RowIndex: Integer; ColumnIndex: Integer); safecall;
    procedure SetCustomIcon(const ImageFile: WideString); safecall;
    procedure SetIcon2(const Icon: WideString); safecall;
    property Caption: WideString read Get_Caption write Set_Caption;
    property DescriptionText: WideString read Get_DescriptionText write Set_DescriptionText;
    property Height: Integer read Get_Height write Set_Height;
    property Width: Integer read Get_Width write Set_Width;
    property Id: WideString read Get_Id;
    property Parameter: OleVariant read Get_Parameter write Set_Parameter;
    property Tag: WideString read Get_Tag write Set_Tag;
    property ToolTipText: WideString read Get_ToolTipText write Set_ToolTipText;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  CommandBarControlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E71-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarControlDisp = dispinterface
    ['{A2524E71-50C1-11D3-8EA3-0090271BECDD}']
    property Caption: WideString dispid 0;
    property DescriptionText: WideString dispid 1610743810;
    property Height: Integer dispid 1610743812;
    property Width: Integer dispid 1610743814;
    property Id: WideString readonly dispid 1610743816;
    property Parameter: OleVariant dispid 1610743817;
    property Tag: WideString dispid 1610743819;
    property ToolTipText: WideString dispid 1610743821;
    property Visible: WordBool dispid 1610743823;
    procedure SetIcon(RowIndex: Integer; ColumnIndex: Integer); dispid 1610743825;
    procedure SetCustomIcon(const ImageFile: WideString); dispid 1610743826;
    procedure SetIcon2(const Icon: WideString); dispid 1610743827;
  end;

// *********************************************************************//
// Interface: CommandBarModes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E97-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarModes = interface(IDispatch)
    ['{A2524E97-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Item(IndexOrName: OleVariant): CommandBarMode; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[IndexOrName: OleVariant]: CommandBarMode read Get_Item;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  CommandBarModesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E97-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarModesDisp = dispinterface
    ['{A2524E97-50C1-11D3-8EA3-0090271BECDD}']
    property Item[IndexOrName: OleVariant]: CommandBarMode readonly dispid 1;
    property Count: Integer readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: CommandBarMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E98-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarMode = interface(IDispatch)
    ['{A2524E98-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Name: WideString; safecall;
    function Get_NameLocal: WideString; safecall;
    function Get_Controls: CommandBarControls; safecall;
    property Name: WideString read Get_Name;
    property NameLocal: WideString read Get_NameLocal;
    property Controls: CommandBarControls read Get_Controls;
  end;

// *********************************************************************//
// DispIntf:  CommandBarModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524E98-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  CommandBarModeDisp = dispinterface
    ['{A2524E98-50C1-11D3-8EA3-0090271BECDD}']
    property Name: WideString readonly dispid 1;
    property NameLocal: WideString readonly dispid 2;
    property Controls: CommandBarControls readonly dispid 3;
  end;

// *********************************************************************//
// Interface: Automation
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2524E99-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  Automation = interface(IDispatch)
    ['{A2524E99-50C1-11D3-8EA3-0090271BECDD}']
    function GetNumItemsOnBar(const guidBar: WideString): Integer; safecall;
    function GetItem(const guidBar: WideString; Index: Integer; out hasSubBar: WordBool): WideString; safecall;
    function GetItemInstanceHwnd(const guidParent: WideString; const guidItem: WideString): Integer; safecall;
    function GetSubBar(const guidBar: WideString; out guidSubBar: WideString): WordBool; safecall;
    function ShowBar(const guidBar: WideString; show: WordBool): WordBool; safecall;
    function GetCaptionText(const guidItem: WideString): WideString; safecall;
    procedure Invoke_(const guidItem: WideString); safecall;
    function IsEnabled(const guidItem: WideString): WordBool; safecall;
    function GetItemScreenRect(const guidParent: WideString; const guidItem: WideString; 
                               out topLeftX: Integer; out topLeftY: Integer; out Width: Integer; 
                               out Height: Integer): WordBool; safecall;
    procedure InvokeItem(const guidItem: WideString); safecall;
    procedure InvokeDialogItem(const guidDialog: WideString; const guidItem: WideString); safecall;
    function GetControlData(const Guid: WideString): ControlData; safecall;
  end;

// *********************************************************************//
// DispIntf:  AutomationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2524E99-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  AutomationDisp = dispinterface
    ['{A2524E99-50C1-11D3-8EA3-0090271BECDD}']
    function GetNumItemsOnBar(const guidBar: WideString): Integer; dispid 1610743808;
    function GetItem(const guidBar: WideString; Index: Integer; out hasSubBar: WordBool): WideString; dispid 1610743809;
    function GetItemInstanceHwnd(const guidParent: WideString; const guidItem: WideString): Integer; dispid 1610743810;
    function GetSubBar(const guidBar: WideString; out guidSubBar: WideString): WordBool; dispid 1610743811;
    function ShowBar(const guidBar: WideString; show: WordBool): WordBool; dispid 1610743812;
    function GetCaptionText(const guidItem: WideString): WideString; dispid 1610743813;
    procedure Invoke_(const guidItem: WideString); dispid 1610743814;
    function IsEnabled(const guidItem: WideString): WordBool; dispid 1610743815;
    function GetItemScreenRect(const guidParent: WideString; const guidItem: WideString; 
                               out topLeftX: Integer; out topLeftY: Integer; out Width: Integer; 
                               out Height: Integer): WordBool; dispid 1610743816;
    procedure InvokeItem(const guidItem: WideString); dispid 1610743817;
    procedure InvokeDialogItem(const guidDialog: WideString; const guidItem: WideString); dispid 1610743818;
    function GetControlData(const Guid: WideString): ControlData; dispid 1610743819;
  end;

// *********************************************************************//
// Interface: ControlData
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {099CD3E3-FB75-F191-4004-F3C5AAF84E15}
// *********************************************************************//
  ControlData = interface(IDispatch)
    ['{099CD3E3-FB75-F191-4004-F3C5AAF84E15}']
    function GetValue(const PropertyName: WideString): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ControlDataDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {099CD3E3-FB75-F191-4004-F3C5AAF84E15}
// *********************************************************************//
  ControlDataDisp = dispinterface
    ['{099CD3E3-FB75-F191-4004-F3C5AAF84E15}']
    function GetValue(const PropertyName: WideString): OleVariant; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: FrameWork
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A2524E6D-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  FrameWork = interface(IDispatch)
    ['{A2524E6D-50C1-11D3-8EA3-0090271BECDD}']
    function Get_CommandBars: CommandBars; safecall;
    function Get_MainMenu: CommandBar; safecall;
    function Get_StatusBar: CommandBar; safecall;
    function Get_Name: WideString; safecall;
    procedure ImportWorkspace(const FileName: WideString); safecall;
    function Get_Automation: Automation; safecall;
    procedure ShowDocker(const Guid: WideString); safecall;
    procedure HideDocker(const Guid: WideString); safecall;
    function IsDockerVisible(const Guid: WideString): WordBool; safecall;
    procedure AddDocker(const Guid: WideString; const ClassName: WideString; 
                        const AssemblyPath: WideString); safecall;
    procedure RemoveDocker(const Guid: WideString); safecall;
    property CommandBars: CommandBars read Get_CommandBars;
    property MainMenu: CommandBar read Get_MainMenu;
    property StatusBar: CommandBar read Get_StatusBar;
    property Name: WideString read Get_Name;
    property Automation: Automation read Get_Automation;
  end;

// *********************************************************************//
// DispIntf:  FrameWorkDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A2524E6D-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  FrameWorkDisp = dispinterface
    ['{A2524E6D-50C1-11D3-8EA3-0090271BECDD}']
    property CommandBars: CommandBars readonly dispid 1610743808;
    property MainMenu: CommandBar readonly dispid 1610743809;
    property StatusBar: CommandBar readonly dispid 1610743810;
    property Name: WideString readonly dispid 0;
    procedure ImportWorkspace(const FileName: WideString); dispid 1610743812;
    property Automation: Automation readonly dispid 1610743813;
    procedure ShowDocker(const Guid: WideString); dispid 1610743814;
    procedure HideDocker(const Guid: WideString); dispid 1610743815;
    function IsDockerVisible(const Guid: WideString): WordBool; dispid 1610743816;
    procedure AddDocker(const Guid: WideString; const ClassName: WideString; 
                        const AssemblyPath: WideString); dispid 1610743817;
    procedure RemoveDocker(const Guid: WideString); dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintLayout
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A9-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintLayout = interface(IDispatch)
    ['{A25250A9-50C1-11D3-8EA3-0090271BECDD}']
    function Get_UseBleedLimit: WordBool; safecall;
    procedure Set_UseBleedLimit(pVal: WordBool); safecall;
    function Get_BleedLimit: Double; safecall;
    procedure Set_BleedLimit(pVal: Double); safecall;
    function Get_PrintTiledPages: WordBool; safecall;
    procedure Set_PrintTiledPages(pVal: WordBool); safecall;
    function Get_PrintTilingMarks: WordBool; safecall;
    procedure Set_PrintTilingMarks(pVal: WordBool); safecall;
    function Get_TileOverlap: Double; safecall;
    procedure Set_TileOverlap(pVal: Double); safecall;
    function Get_Placement: PrnPlaceType; safecall;
    procedure Set_Placement(pVal: PrnPlaceType); safecall;
    property UseBleedLimit: WordBool read Get_UseBleedLimit write Set_UseBleedLimit;
    property BleedLimit: Double read Get_BleedLimit write Set_BleedLimit;
    property PrintTiledPages: WordBool read Get_PrintTiledPages write Set_PrintTiledPages;
    property PrintTilingMarks: WordBool read Get_PrintTilingMarks write Set_PrintTilingMarks;
    property TileOverlap: Double read Get_TileOverlap write Set_TileOverlap;
    property Placement: PrnPlaceType read Get_Placement write Set_Placement;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintLayoutDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A9-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintLayoutDisp = dispinterface
    ['{A25250A9-50C1-11D3-8EA3-0090271BECDD}']
    property UseBleedLimit: WordBool dispid 1610743808;
    property BleedLimit: Double dispid 1610743810;
    property PrintTiledPages: WordBool dispid 1610743812;
    property PrintTilingMarks: WordBool dispid 1610743814;
    property TileOverlap: Double dispid 1610743816;
    property Placement: PrnPlaceType dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrinter
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2525098-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrinter = interface(IDispatch)
    ['{A2525098-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Name: WideString; safecall;
    function Get_type_: WideString; safecall;
    function Get_Default: WordBool; safecall;
    function Get_Ready: WordBool; safecall;
    function Get_Port: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_PostScriptEnabled: WordBool; safecall;
    function Get_ColorEnabled: WordBool; safecall;
    procedure ShowDialog; safecall;
    function Get_PageSizeMatchingSupported: WordBool; safecall;
    procedure Set_PageSizeMatchingSupported(pVal: WordBool); safecall;
    property Name: WideString read Get_Name;
    property type_: WideString read Get_type_;
    property Default: WordBool read Get_Default;
    property Ready: WordBool read Get_Ready;
    property Port: WideString read Get_Port;
    property Description: WideString read Get_Description;
    property PostScriptEnabled: WordBool read Get_PostScriptEnabled;
    property ColorEnabled: WordBool read Get_ColorEnabled;
    property PageSizeMatchingSupported: WordBool read Get_PageSizeMatchingSupported write Set_PageSizeMatchingSupported;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrinterDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2525098-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrinterDisp = dispinterface
    ['{A2525098-50C1-11D3-8EA3-0090271BECDD}']
    property Name: WideString readonly dispid 1;
    property type_: WideString readonly dispid 2;
    property Default: WordBool readonly dispid 3;
    property Ready: WordBool readonly dispid 4;
    property Port: WideString readonly dispid 5;
    property Description: WideString readonly dispid 6;
    property PostScriptEnabled: WordBool readonly dispid 7;
    property ColorEnabled: WordBool readonly dispid 8;
    procedure ShowDialog; dispid 9;
    property PageSizeMatchingSupported: WordBool dispid 10;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrinters
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2525099-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrinters = interface(IDispatch)
    ['{A2525099-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Item(nIndex: Integer): IPrnVBAPrinter; safecall;
    function Get_Count: Integer; safecall;
    function Get_Default: IPrnVBAPrinter; safecall;
    property Item[nIndex: Integer]: IPrnVBAPrinter read Get_Item; default;
    property Count: Integer read Get_Count;
    property Default: IPrnVBAPrinter read Get_Default;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2525099-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintersDisp = dispinterface
    ['{A2525099-50C1-11D3-8EA3-0090271BECDD}']
    property Item[nIndex: Integer]: IPrnVBAPrinter readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    property Default: IPrnVBAPrinter readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IPrnVBASeparationPlate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509A-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBASeparationPlate = interface(IDispatch)
    ['{A252509A-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pVal: WordBool); safecall;
    function Get_type_: PrnPlateType; safecall;
    function Get_Color: WideString; safecall;
    function Get_Frequency: Double; safecall;
    procedure Set_Frequency(pVal: Double); safecall;
    function Get_Angle: Double; safecall;
    procedure Set_Angle(pVal: Double); safecall;
    function Get_OverprintText: WordBool; safecall;
    procedure Set_OverprintText(pVal: WordBool); safecall;
    function Get_OverprintGraphic: WordBool; safecall;
    procedure Set_OverprintGraphic(pVal: WordBool); safecall;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property type_: PrnPlateType read Get_type_;
    property Color: WideString read Get_Color;
    property Frequency: Double read Get_Frequency write Set_Frequency;
    property Angle: Double read Get_Angle write Set_Angle;
    property OverprintText: WordBool read Get_OverprintText write Set_OverprintText;
    property OverprintGraphic: WordBool read Get_OverprintGraphic write Set_OverprintGraphic;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBASeparationPlateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509A-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBASeparationPlateDisp = dispinterface
    ['{A252509A-50C1-11D3-8EA3-0090271BECDD}']
    property Enabled: WordBool dispid 1;
    property type_: PrnPlateType readonly dispid 2;
    property Color: WideString readonly dispid 3;
    property Frequency: Double dispid 4;
    property Angle: Double dispid 5;
    property OverprintText: WordBool dispid 6;
    property OverprintGraphic: WordBool dispid 7;
  end;

// *********************************************************************//
// Interface: IPrnVBASeparationPlates
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509B-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBASeparationPlates = interface(IDispatch)
    ['{A252509B-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Item(Index: Integer): IPrnVBASeparationPlate; safecall;
    function Get_Count: Integer; safecall;
    property Item[Index: Integer]: IPrnVBASeparationPlate read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBASeparationPlatesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509B-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBASeparationPlatesDisp = dispinterface
    ['{A252509B-50C1-11D3-8EA3-0090271BECDD}']
    property Item[Index: Integer]: IPrnVBASeparationPlate readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintSeparations
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509C-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintSeparations = interface(IDispatch)
    ['{A252509C-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pVal: WordBool); safecall;
    function Get_InColor: WordBool; safecall;
    procedure Set_InColor(pVal: WordBool); safecall;
    function Get_Hexachrome: WordBool; safecall;
    procedure Set_Hexachrome(pVal: WordBool); safecall;
    function Get_SpotToCMYK: WordBool; safecall;
    procedure Set_SpotToCMYK(pVal: WordBool); safecall;
    function Get_EmptyPlates: WordBool; safecall;
    procedure Set_EmptyPlates(pVal: WordBool); safecall;
    function Get_PreserveOverprints: WordBool; safecall;
    procedure Set_PreserveOverprints(pVal: WordBool); safecall;
    function Get_AlwaysOverprintBlack: WordBool; safecall;
    procedure Set_AlwaysOverprintBlack(pVal: WordBool); safecall;
    function Get_AutoSpreading: WordBool; safecall;
    procedure Set_AutoSpreading(pVal: WordBool); safecall;
    function Get_AutoSpreadAmount: Double; safecall;
    procedure Set_AutoSpreadAmount(pVal: Double); safecall;
    function Get_AutoSpreadFixed: WordBool; safecall;
    procedure Set_AutoSpreadFixed(pVal: WordBool); safecall;
    function Get_AutoSpreadTextAbove: Double; safecall;
    procedure Set_AutoSpreadTextAbove(pVal: Double); safecall;
    function Get_AdvancedSettings: WordBool; safecall;
    procedure Set_AdvancedSettings(pVal: WordBool); safecall;
    function Get_Plates: IPrnVBASeparationPlates; safecall;
    function Get_Resolution: Integer; safecall;
    procedure Set_Resolution(pVal: Integer); safecall;
    function Get_BasicScreen: WideString; safecall;
    procedure Set_BasicScreen(const pVal: WideString); safecall;
    function Get_HalftoneType: WideString; safecall;
    procedure Set_HalftoneType(const pVal: WideString); safecall;
    function Get_ScreenTechnology: WideString; safecall;
    procedure Set_ScreenTechnology(const pVal: WideString); safecall;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property InColor: WordBool read Get_InColor write Set_InColor;
    property Hexachrome: WordBool read Get_Hexachrome write Set_Hexachrome;
    property SpotToCMYK: WordBool read Get_SpotToCMYK write Set_SpotToCMYK;
    property EmptyPlates: WordBool read Get_EmptyPlates write Set_EmptyPlates;
    property PreserveOverprints: WordBool read Get_PreserveOverprints write Set_PreserveOverprints;
    property AlwaysOverprintBlack: WordBool read Get_AlwaysOverprintBlack write Set_AlwaysOverprintBlack;
    property AutoSpreading: WordBool read Get_AutoSpreading write Set_AutoSpreading;
    property AutoSpreadAmount: Double read Get_AutoSpreadAmount write Set_AutoSpreadAmount;
    property AutoSpreadFixed: WordBool read Get_AutoSpreadFixed write Set_AutoSpreadFixed;
    property AutoSpreadTextAbove: Double read Get_AutoSpreadTextAbove write Set_AutoSpreadTextAbove;
    property AdvancedSettings: WordBool read Get_AdvancedSettings write Set_AdvancedSettings;
    property Plates: IPrnVBASeparationPlates read Get_Plates;
    property Resolution: Integer read Get_Resolution write Set_Resolution;
    property BasicScreen: WideString read Get_BasicScreen write Set_BasicScreen;
    property HalftoneType: WideString read Get_HalftoneType write Set_HalftoneType;
    property ScreenTechnology: WideString read Get_ScreenTechnology write Set_ScreenTechnology;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintSeparationsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509C-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintSeparationsDisp = dispinterface
    ['{A252509C-50C1-11D3-8EA3-0090271BECDD}']
    property Enabled: WordBool dispid 1;
    property InColor: WordBool dispid 2;
    property Hexachrome: WordBool dispid 3;
    property SpotToCMYK: WordBool dispid 4;
    property EmptyPlates: WordBool dispid 5;
    property PreserveOverprints: WordBool dispid 6;
    property AlwaysOverprintBlack: WordBool dispid 7;
    property AutoSpreading: WordBool dispid 8;
    property AutoSpreadAmount: Double dispid 9;
    property AutoSpreadFixed: WordBool dispid 10;
    property AutoSpreadTextAbove: Double dispid 11;
    property AdvancedSettings: WordBool dispid 12;
    property Plates: IPrnVBASeparationPlates readonly dispid 13;
    property Resolution: Integer dispid 14;
    property BasicScreen: WideString dispid 15;
    property HalftoneType: WideString dispid 16;
    property ScreenTechnology: WideString dispid 17;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintPrepress
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509D-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPrepress = interface(IDispatch)
    ['{A252509D-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Invert: WordBool; safecall;
    procedure Set_Invert(pVal: WordBool); safecall;
    function Get_Mirror: WordBool; safecall;
    procedure Set_Mirror(pVal: WordBool); safecall;
    function Get_FileInfo: WordBool; safecall;
    procedure Set_FileInfo(pVal: WordBool); safecall;
    function Get_JobName: WideString; safecall;
    procedure Set_JobName(const pVal: WideString); safecall;
    function Get_PageNumbers: WordBool; safecall;
    procedure Set_PageNumbers(pVal: WordBool); safecall;
    function Get_InfoWithinPage: WordBool; safecall;
    procedure Set_InfoWithinPage(pVal: WordBool); safecall;
    function Get_CropMarks: WordBool; safecall;
    procedure Set_CropMarks(pVal: WordBool); safecall;
    function Get_ExteriorCropMarks: WordBool; safecall;
    procedure Set_ExteriorCropMarks(pVal: WordBool); safecall;
    function Get_RegistrationMarks: WordBool; safecall;
    procedure Set_RegistrationMarks(pVal: WordBool); safecall;
    function Get_RegistrationStyle: PrnRegistrationStyle; safecall;
    procedure Set_RegistrationStyle(pVal: PrnRegistrationStyle); safecall;
    function Get_ColorCalibrationBar: WordBool; safecall;
    procedure Set_ColorCalibrationBar(pVal: WordBool); safecall;
    function Get_DensitometerScale: WordBool; safecall;
    procedure Set_DensitometerScale(pVal: WordBool); safecall;
    function Get_Densities(Index: Integer): Integer; safecall;
    procedure Set_Densities(Index: Integer; pVal: Integer); safecall;
    function Get_MarksToObjects: WordBool; safecall;
    procedure Set_MarksToObjects(pVal: WordBool); safecall;
    property Invert: WordBool read Get_Invert write Set_Invert;
    property Mirror: WordBool read Get_Mirror write Set_Mirror;
    property FileInfo: WordBool read Get_FileInfo write Set_FileInfo;
    property JobName: WideString read Get_JobName write Set_JobName;
    property PageNumbers: WordBool read Get_PageNumbers write Set_PageNumbers;
    property InfoWithinPage: WordBool read Get_InfoWithinPage write Set_InfoWithinPage;
    property CropMarks: WordBool read Get_CropMarks write Set_CropMarks;
    property ExteriorCropMarks: WordBool read Get_ExteriorCropMarks write Set_ExteriorCropMarks;
    property RegistrationMarks: WordBool read Get_RegistrationMarks write Set_RegistrationMarks;
    property RegistrationStyle: PrnRegistrationStyle read Get_RegistrationStyle write Set_RegistrationStyle;
    property ColorCalibrationBar: WordBool read Get_ColorCalibrationBar write Set_ColorCalibrationBar;
    property DensitometerScale: WordBool read Get_DensitometerScale write Set_DensitometerScale;
    property Densities[Index: Integer]: Integer read Get_Densities write Set_Densities;
    property MarksToObjects: WordBool read Get_MarksToObjects write Set_MarksToObjects;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintPrepressDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509D-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPrepressDisp = dispinterface
    ['{A252509D-50C1-11D3-8EA3-0090271BECDD}']
    property Invert: WordBool dispid 1;
    property Mirror: WordBool dispid 2;
    property FileInfo: WordBool dispid 3;
    property JobName: WideString dispid 4;
    property PageNumbers: WordBool dispid 5;
    property InfoWithinPage: WordBool dispid 6;
    property CropMarks: WordBool dispid 7;
    property ExteriorCropMarks: WordBool dispid 8;
    property RegistrationMarks: WordBool dispid 9;
    property RegistrationStyle: PrnRegistrationStyle dispid 10;
    property ColorCalibrationBar: WordBool dispid 11;
    property DensitometerScale: WordBool dispid 12;
    property Densities[Index: Integer]: Integer dispid 13;
    property MarksToObjects: WordBool dispid 14;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintPostScript
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509E-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPostScript = interface(IDispatch)
    ['{A252509E-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Level: PrnPostScriptLevel; safecall;
    procedure Set_Level(pVal: PrnPostScriptLevel); safecall;
    function Get_ConformToDSC: WordBool; safecall;
    procedure Set_ConformToDSC(pVal: WordBool); safecall;
    function Get_JPEGCompression: WordBool; safecall;
    procedure Set_JPEGCompression(pVal: WordBool); safecall;
    function Get_JPEGQuality: Integer; safecall;
    procedure Set_JPEGQuality(pVal: Integer); safecall;
    function Get_MaintainOPILinks: WordBool; safecall;
    procedure Set_MaintainOPILinks(pVal: WordBool); safecall;
    function Get_ResolveDCSLinks: WordBool; safecall;
    procedure Set_ResolveDCSLinks(pVal: WordBool); safecall;
    function Get_DownloadType1: WordBool; safecall;
    procedure Set_DownloadType1(pVal: WordBool); safecall;
    function Get_TrueTypeToType1: WordBool; safecall;
    procedure Set_TrueTypeToType1(pVal: WordBool); safecall;
    function Get_PDFStartup: PrnPDFStartup; safecall;
    procedure Set_PDFStartup(pVal: PrnPDFStartup); safecall;
    function Get_PDFHyperlinks: WordBool; safecall;
    procedure Set_PDFHyperlinks(pVal: WordBool); safecall;
    function Get_pdfBookmarks: WordBool; safecall;
    procedure Set_pdfBookmarks(pVal: WordBool); safecall;
    function Get_MaxPointsPerCurve: Integer; safecall;
    procedure Set_MaxPointsPerCurve(pVal: Integer); safecall;
    function Get_Flatness: Integer; safecall;
    procedure Set_Flatness(pVal: Integer); safecall;
    function Get_AutoIncreaseFlatness: WordBool; safecall;
    procedure Set_AutoIncreaseFlatness(pVal: WordBool); safecall;
    function Get_AutoIncreaseFountainSteps: WordBool; safecall;
    procedure Set_AutoIncreaseFountainSteps(pVal: WordBool); safecall;
    function Get_OptimizeFountainFills: WordBool; safecall;
    procedure Set_OptimizeFountainFills(pVal: WordBool); safecall;
    function Get_ScreenFrequency: Integer; safecall;
    procedure Set_ScreenFrequency(pVal: Integer); safecall;
    property Level: PrnPostScriptLevel read Get_Level write Set_Level;
    property ConformToDSC: WordBool read Get_ConformToDSC write Set_ConformToDSC;
    property JPEGCompression: WordBool read Get_JPEGCompression write Set_JPEGCompression;
    property JPEGQuality: Integer read Get_JPEGQuality write Set_JPEGQuality;
    property MaintainOPILinks: WordBool read Get_MaintainOPILinks write Set_MaintainOPILinks;
    property ResolveDCSLinks: WordBool read Get_ResolveDCSLinks write Set_ResolveDCSLinks;
    property DownloadType1: WordBool read Get_DownloadType1 write Set_DownloadType1;
    property TrueTypeToType1: WordBool read Get_TrueTypeToType1 write Set_TrueTypeToType1;
    property PDFStartup: PrnPDFStartup read Get_PDFStartup write Set_PDFStartup;
    property PDFHyperlinks: WordBool read Get_PDFHyperlinks write Set_PDFHyperlinks;
    property pdfBookmarks: WordBool read Get_pdfBookmarks write Set_pdfBookmarks;
    property MaxPointsPerCurve: Integer read Get_MaxPointsPerCurve write Set_MaxPointsPerCurve;
    property Flatness: Integer read Get_Flatness write Set_Flatness;
    property AutoIncreaseFlatness: WordBool read Get_AutoIncreaseFlatness write Set_AutoIncreaseFlatness;
    property AutoIncreaseFountainSteps: WordBool read Get_AutoIncreaseFountainSteps write Set_AutoIncreaseFountainSteps;
    property OptimizeFountainFills: WordBool read Get_OptimizeFountainFills write Set_OptimizeFountainFills;
    property ScreenFrequency: Integer read Get_ScreenFrequency write Set_ScreenFrequency;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintPostScriptDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509E-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPostScriptDisp = dispinterface
    ['{A252509E-50C1-11D3-8EA3-0090271BECDD}']
    property Level: PrnPostScriptLevel dispid 1;
    property ConformToDSC: WordBool dispid 2;
    property JPEGCompression: WordBool dispid 3;
    property JPEGQuality: Integer dispid 4;
    property MaintainOPILinks: WordBool dispid 5;
    property ResolveDCSLinks: WordBool dispid 6;
    property DownloadType1: WordBool dispid 7;
    property TrueTypeToType1: WordBool dispid 8;
    property PDFStartup: PrnPDFStartup dispid 9;
    property PDFHyperlinks: WordBool dispid 10;
    property pdfBookmarks: WordBool dispid 11;
    property MaxPointsPerCurve: Integer dispid 12;
    property Flatness: Integer dispid 13;
    property AutoIncreaseFlatness: WordBool dispid 14;
    property AutoIncreaseFountainSteps: WordBool dispid 15;
    property OptimizeFountainFills: WordBool dispid 16;
    property ScreenFrequency: Integer dispid 17;
  end;

// *********************************************************************//
// Interface: IPrnVBATrapLayer
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509F-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBATrapLayer = interface(IDispatch)
    ['{A252509F-50C1-11D3-8EA3-0090271BECDD}']
    function Get_type_: PrnPlateType; safecall;
    function Get_Color: WideString; safecall;
    function Get_Density: Double; safecall;
    procedure Set_Density(pVal: Double); safecall;
    function Get_TrapType: PrnTrapType; safecall;
    procedure Set_TrapType(pVal: PrnTrapType); safecall;
    function Get_Order: Integer; safecall;
    procedure Set_Order(pVal: Integer); safecall;
    property type_: PrnPlateType read Get_type_;
    property Color: WideString read Get_Color;
    property Density: Double read Get_Density write Set_Density;
    property TrapType: PrnTrapType read Get_TrapType write Set_TrapType;
    property Order: Integer read Get_Order write Set_Order;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBATrapLayerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A252509F-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBATrapLayerDisp = dispinterface
    ['{A252509F-50C1-11D3-8EA3-0090271BECDD}']
    property type_: PrnPlateType readonly dispid 1;
    property Color: WideString readonly dispid 2;
    property Density: Double dispid 3;
    property TrapType: PrnTrapType dispid 4;
    property Order: Integer dispid 5;
  end;

// *********************************************************************//
// Interface: IPrnVBATrapLayers
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A0-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBATrapLayers = interface(IDispatch)
    ['{A25250A0-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IPrnVBATrapLayer; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IPrnVBATrapLayer read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBATrapLayersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A0-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBATrapLayersDisp = dispinterface
    ['{A25250A0-50C1-11D3-8EA3-0090271BECDD}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: IPrnVBATrapLayer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintTrapping
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A1-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintTrapping = interface(IDispatch)
    ['{A25250A1-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pVal: WordBool); safecall;
    function Get_Layers: IPrnVBATrapLayers; safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(pVal: Double); safecall;
    function Get_BlackWidth: Double; safecall;
    procedure Set_BlackWidth(pVal: Double); safecall;
    function Get_ColorScaling: Integer; safecall;
    procedure Set_ColorScaling(pVal: Integer); safecall;
    function Get_StepLimit: Integer; safecall;
    procedure Set_StepLimit(pVal: Integer); safecall;
    function Get_BlackColorLimit: Integer; safecall;
    procedure Set_BlackColorLimit(pVal: Integer); safecall;
    function Get_BlackDensityLimit: Double; safecall;
    procedure Set_BlackDensityLimit(pVal: Double); safecall;
    function Get_SlidingTrapLimit: Integer; safecall;
    procedure Set_SlidingTrapLimit(pVal: Integer); safecall;
    function Get_ImageTrap: PrnImageTrap; safecall;
    procedure Set_ImageTrap(pVal: PrnImageTrap); safecall;
    function Get_ObjectsToImage: WordBool; safecall;
    procedure Set_ObjectsToImage(pVal: WordBool); safecall;
    function Get_InternalImageTrapping: WordBool; safecall;
    procedure Set_InternalImageTrapping(pVal: WordBool); safecall;
    function Get_TrapMonoBitmaps: WordBool; safecall;
    procedure Set_TrapMonoBitmaps(pVal: WordBool); safecall;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Layers: IPrnVBATrapLayers read Get_Layers;
    property Width: Double read Get_Width write Set_Width;
    property BlackWidth: Double read Get_BlackWidth write Set_BlackWidth;
    property ColorScaling: Integer read Get_ColorScaling write Set_ColorScaling;
    property StepLimit: Integer read Get_StepLimit write Set_StepLimit;
    property BlackColorLimit: Integer read Get_BlackColorLimit write Set_BlackColorLimit;
    property BlackDensityLimit: Double read Get_BlackDensityLimit write Set_BlackDensityLimit;
    property SlidingTrapLimit: Integer read Get_SlidingTrapLimit write Set_SlidingTrapLimit;
    property ImageTrap: PrnImageTrap read Get_ImageTrap write Set_ImageTrap;
    property ObjectsToImage: WordBool read Get_ObjectsToImage write Set_ObjectsToImage;
    property InternalImageTrapping: WordBool read Get_InternalImageTrapping write Set_InternalImageTrapping;
    property TrapMonoBitmaps: WordBool read Get_TrapMonoBitmaps write Set_TrapMonoBitmaps;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintTrappingDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A1-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintTrappingDisp = dispinterface
    ['{A25250A1-50C1-11D3-8EA3-0090271BECDD}']
    property Enabled: WordBool dispid 1;
    property Layers: IPrnVBATrapLayers readonly dispid 2;
    property Width: Double dispid 3;
    property BlackWidth: Double dispid 4;
    property ColorScaling: Integer dispid 5;
    property StepLimit: Integer dispid 6;
    property BlackColorLimit: Integer dispid 7;
    property BlackDensityLimit: Double dispid 8;
    property SlidingTrapLimit: Integer dispid 9;
    property ImageTrap: PrnImageTrap dispid 10;
    property ObjectsToImage: WordBool dispid 11;
    property InternalImageTrapping: WordBool dispid 12;
    property TrapMonoBitmaps: WordBool dispid 13;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintOptions
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A2-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintOptions = interface(IDispatch)
    ['{A25250A2-50C1-11D3-8EA3-0090271BECDD}']
    function Get_UseColorProfile: WordBool; safecall;
    procedure Set_UseColorProfile(pVal: WordBool); safecall;
    function Get_PrintVectors: WordBool; safecall;
    procedure Set_PrintVectors(pVal: WordBool); safecall;
    function Get_PrintBitmaps: WordBool; safecall;
    procedure Set_PrintBitmaps(pVal: WordBool); safecall;
    function Get_PrintText: WordBool; safecall;
    procedure Set_PrintText(pVal: WordBool); safecall;
    function Get_TextInBlack: WordBool; safecall;
    procedure Set_TextInBlack(pVal: WordBool); safecall;
    function Get_ColorMode: PrnColorMode; safecall;
    procedure Set_ColorMode(pVal: PrnColorMode); safecall;
    function Get_MarksToPage: WordBool; safecall;
    procedure Set_MarksToPage(pVal: WordBool); safecall;
    function Get_BitmapColorMode: PrnBitmapColorMode; safecall;
    procedure Set_BitmapColorMode(pVal: PrnBitmapColorMode); safecall;
    function Get_FountainSteps: Integer; safecall;
    procedure Set_FountainSteps(pVal: Integer); safecall;
    function Get_RasterizePage: WordBool; safecall;
    procedure Set_RasterizePage(pVal: WordBool); safecall;
    function Get_RasterizeResolution: Integer; safecall;
    procedure Set_RasterizeResolution(pVal: Integer); safecall;
    function Get_DownsampleColor: WordBool; safecall;
    procedure Set_DownsampleColor(pVal: WordBool); safecall;
    function Get_DownsampleGray: WordBool; safecall;
    procedure Set_DownsampleGray(pVal: WordBool); safecall;
    function Get_DownsampleMono: WordBool; safecall;
    procedure Set_DownsampleMono(pVal: WordBool); safecall;
    function Get_ColorResolution: Integer; safecall;
    procedure Set_ColorResolution(pVal: Integer); safecall;
    function Get_GrayResolution: Integer; safecall;
    procedure Set_GrayResolution(pVal: Integer); safecall;
    function Get_MonoResolution: Integer; safecall;
    procedure Set_MonoResolution(pVal: Integer); safecall;
    function Get_JobInformation: WordBool; safecall;
    procedure Set_JobInformation(pVal: WordBool); safecall;
    function Get_AppInfo: WordBool; safecall;
    procedure Set_AppInfo(pVal: WordBool); safecall;
    function Get_DriverInfo: WordBool; safecall;
    procedure Set_DriverInfo(pVal: WordBool); safecall;
    function Get_PrintJobInfo: WordBool; safecall;
    procedure Set_PrintJobInfo(pVal: WordBool); safecall;
    function Get_SepsInfo: WordBool; safecall;
    procedure Set_SepsInfo(pVal: WordBool); safecall;
    function Get_FontInfo: WordBool; safecall;
    procedure Set_FontInfo(pVal: WordBool); safecall;
    function Get_LinkInfo: WordBool; safecall;
    procedure Set_LinkInfo(pVal: WordBool); safecall;
    function Get_InRIPTrapInfo: WordBool; safecall;
    procedure Set_InRIPTrapInfo(pVal: WordBool); safecall;
    function Get_ObjectsColorMode: PrnObjectsColorMode; safecall;
    procedure Set_ObjectsColorMode(pVal: PrnObjectsColorMode); safecall;
    property UseColorProfile: WordBool read Get_UseColorProfile write Set_UseColorProfile;
    property PrintVectors: WordBool read Get_PrintVectors write Set_PrintVectors;
    property PrintBitmaps: WordBool read Get_PrintBitmaps write Set_PrintBitmaps;
    property PrintText: WordBool read Get_PrintText write Set_PrintText;
    property TextInBlack: WordBool read Get_TextInBlack write Set_TextInBlack;
    property ColorMode: PrnColorMode read Get_ColorMode write Set_ColorMode;
    property MarksToPage: WordBool read Get_MarksToPage write Set_MarksToPage;
    property BitmapColorMode: PrnBitmapColorMode read Get_BitmapColorMode write Set_BitmapColorMode;
    property FountainSteps: Integer read Get_FountainSteps write Set_FountainSteps;
    property RasterizePage: WordBool read Get_RasterizePage write Set_RasterizePage;
    property RasterizeResolution: Integer read Get_RasterizeResolution write Set_RasterizeResolution;
    property DownsampleColor: WordBool read Get_DownsampleColor write Set_DownsampleColor;
    property DownsampleGray: WordBool read Get_DownsampleGray write Set_DownsampleGray;
    property DownsampleMono: WordBool read Get_DownsampleMono write Set_DownsampleMono;
    property ColorResolution: Integer read Get_ColorResolution write Set_ColorResolution;
    property GrayResolution: Integer read Get_GrayResolution write Set_GrayResolution;
    property MonoResolution: Integer read Get_MonoResolution write Set_MonoResolution;
    property JobInformation: WordBool read Get_JobInformation write Set_JobInformation;
    property AppInfo: WordBool read Get_AppInfo write Set_AppInfo;
    property DriverInfo: WordBool read Get_DriverInfo write Set_DriverInfo;
    property PrintJobInfo: WordBool read Get_PrintJobInfo write Set_PrintJobInfo;
    property SepsInfo: WordBool read Get_SepsInfo write Set_SepsInfo;
    property FontInfo: WordBool read Get_FontInfo write Set_FontInfo;
    property LinkInfo: WordBool read Get_LinkInfo write Set_LinkInfo;
    property InRIPTrapInfo: WordBool read Get_InRIPTrapInfo write Set_InRIPTrapInfo;
    property ObjectsColorMode: PrnObjectsColorMode read Get_ObjectsColorMode write Set_ObjectsColorMode;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintOptionsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A2-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintOptionsDisp = dispinterface
    ['{A25250A2-50C1-11D3-8EA3-0090271BECDD}']
    property UseColorProfile: WordBool dispid 1;
    property PrintVectors: WordBool dispid 2;
    property PrintBitmaps: WordBool dispid 3;
    property PrintText: WordBool dispid 4;
    property TextInBlack: WordBool dispid 5;
    property ColorMode: PrnColorMode dispid 6;
    property MarksToPage: WordBool dispid 7;
    property BitmapColorMode: PrnBitmapColorMode dispid 8;
    property FountainSteps: Integer dispid 9;
    property RasterizePage: WordBool dispid 10;
    property RasterizeResolution: Integer dispid 11;
    property DownsampleColor: WordBool dispid 12;
    property DownsampleGray: WordBool dispid 13;
    property DownsampleMono: WordBool dispid 14;
    property ColorResolution: Integer dispid 15;
    property GrayResolution: Integer dispid 16;
    property MonoResolution: Integer dispid 17;
    property JobInformation: WordBool dispid 18;
    property AppInfo: WordBool dispid 19;
    property DriverInfo: WordBool dispid 20;
    property PrintJobInfo: WordBool dispid 21;
    property SepsInfo: WordBool dispid 22;
    property FontInfo: WordBool dispid 23;
    property LinkInfo: WordBool dispid 24;
    property InRIPTrapInfo: WordBool dispid 25;
    property ObjectsColorMode: PrnObjectsColorMode dispid 26;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintSettings
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A3-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintSettings = interface(IDispatch)
    ['{A25250A3-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Printer: IPrnVBAPrinter; safecall;
    procedure _Set_Printer(const pVal: IPrnVBAPrinter); safecall;
    function Get_UsePPD: WordBool; safecall;
    procedure Set_UsePPD(pVal: WordBool); safecall;
    function Get_PPDFile: WideString; safecall;
    procedure Set_PPDFile(const pVal: WideString); safecall;
    function Get_PrintToFile: WordBool; safecall;
    procedure Set_PrintToFile(pVal: WordBool); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pVal: WideString); safecall;
    function Get_ForMac: WordBool; safecall;
    procedure Set_ForMac(pVal: WordBool); safecall;
    function Get_FileMode: PrnFileMode; safecall;
    procedure Set_FileMode(pVal: PrnFileMode); safecall;
    function Get_PrintRange: PrnPrintRange; safecall;
    procedure Set_PrintRange(pVal: PrnPrintRange); safecall;
    function Get_PageRange: WideString; safecall;
    procedure Set_PageRange(const pVal: WideString); safecall;
    function Get_Copies: Integer; safecall;
    procedure Set_Copies(pVal: Integer); safecall;
    function Get_Collate: WordBool; safecall;
    procedure Set_Collate(pVal: WordBool); safecall;
    function Get_Separations: IPrnVBAPrintSeparations; safecall;
    function Get_Prepress: IPrnVBAPrintPrepress; safecall;
    function Get_PostScript: IPrnVBAPrintPostScript; safecall;
    function Get_Trapping: IPrnVBAPrintTrapping; safecall;
    function Get_Options: IPrnVBAPrintOptions; safecall;
    procedure Reset; safecall;
    function Load(const FileName: WideString): WordBool; safecall;
    function Save(const FileName: WideString): WordBool; safecall;
    function ShowDialog: WordBool; safecall;
    procedure SelectPrinter(const Name: WideString); safecall;
    function Get_PageSet: PrnPageSet; safecall;
    procedure Set_PageSet(pVal: PrnPageSet); safecall;
    function Get_PaperOrientation: PrnPaperOrientation; safecall;
    procedure Set_PaperOrientation(pVal: PrnPaperOrientation); safecall;
    function Get_PaperSize: PrnPaperSize; safecall;
    procedure Set_PaperSize(pVal: PrnPaperSize); safecall;
    procedure SetPaperSize(PaperSize: PrnPaperSize; Orientation: PrnPaperOrientation); safecall;
    function Get_PaperWidth: Double; safecall;
    function Get_PaperHeight: Double; safecall;
    procedure SetCustomPaperSize(Width: Double; Height: Double; Orientation: PrnPaperOrientation); safecall;
    function Get_Layout: IPrnVBAPrintLayout; safecall;
    procedure PrintOut; safecall;
    procedure PrintColorProof(const ProofSettings: IDispatch); safecall;
    function Get_PageMatchingMode: PrnPageMatchingMode; safecall;
    procedure Set_PageMatchingMode(pVal: PrnPageMatchingMode); safecall;
    property Printer: IPrnVBAPrinter read Get_Printer write _Set_Printer;
    property UsePPD: WordBool read Get_UsePPD write Set_UsePPD;
    property PPDFile: WideString read Get_PPDFile write Set_PPDFile;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property FileName: WideString read Get_FileName write Set_FileName;
    property ForMac: WordBool read Get_ForMac write Set_ForMac;
    property FileMode: PrnFileMode read Get_FileMode write Set_FileMode;
    property PrintRange: PrnPrintRange read Get_PrintRange write Set_PrintRange;
    property PageRange: WideString read Get_PageRange write Set_PageRange;
    property Copies: Integer read Get_Copies write Set_Copies;
    property Collate: WordBool read Get_Collate write Set_Collate;
    property Separations: IPrnVBAPrintSeparations read Get_Separations;
    property Prepress: IPrnVBAPrintPrepress read Get_Prepress;
    property PostScript: IPrnVBAPrintPostScript read Get_PostScript;
    property Trapping: IPrnVBAPrintTrapping read Get_Trapping;
    property Options: IPrnVBAPrintOptions read Get_Options;
    property PageSet: PrnPageSet read Get_PageSet write Set_PageSet;
    property PaperOrientation: PrnPaperOrientation read Get_PaperOrientation write Set_PaperOrientation;
    property PaperSize: PrnPaperSize read Get_PaperSize write Set_PaperSize;
    property PaperWidth: Double read Get_PaperWidth;
    property PaperHeight: Double read Get_PaperHeight;
    property Layout: IPrnVBAPrintLayout read Get_Layout;
    property PageMatchingMode: PrnPageMatchingMode read Get_PageMatchingMode write Set_PageMatchingMode;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintSettingsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A3-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintSettingsDisp = dispinterface
    ['{A25250A3-50C1-11D3-8EA3-0090271BECDD}']
    property Printer: IPrnVBAPrinter dispid 1;
    property UsePPD: WordBool dispid 2;
    property PPDFile: WideString dispid 3;
    property PrintToFile: WordBool dispid 4;
    property FileName: WideString dispid 5;
    property ForMac: WordBool dispid 6;
    property FileMode: PrnFileMode dispid 7;
    property PrintRange: PrnPrintRange dispid 8;
    property PageRange: WideString dispid 9;
    property Copies: Integer dispid 10;
    property Collate: WordBool dispid 11;
    property Separations: IPrnVBAPrintSeparations readonly dispid 13;
    property Prepress: IPrnVBAPrintPrepress readonly dispid 14;
    property PostScript: IPrnVBAPrintPostScript readonly dispid 15;
    property Trapping: IPrnVBAPrintTrapping readonly dispid 16;
    property Options: IPrnVBAPrintOptions readonly dispid 17;
    procedure Reset; dispid 18;
    function Load(const FileName: WideString): WordBool; dispid 19;
    function Save(const FileName: WideString): WordBool; dispid 20;
    function ShowDialog: WordBool; dispid 21;
    procedure SelectPrinter(const Name: WideString); dispid 22;
    property PageSet: PrnPageSet dispid 23;
    property PaperOrientation: PrnPaperOrientation dispid 24;
    property PaperSize: PrnPaperSize dispid 25;
    procedure SetPaperSize(PaperSize: PrnPaperSize; Orientation: PrnPaperOrientation); dispid 26;
    property PaperWidth: Double readonly dispid 27;
    property PaperHeight: Double readonly dispid 28;
    procedure SetCustomPaperSize(Width: Double; Height: Double; Orientation: PrnPaperOrientation); dispid 29;
    property Layout: IPrnVBAPrintLayout readonly dispid 30;
    procedure PrintOut; dispid 31;
    procedure PrintColorProof(const ProofSettings: IDispatch); dispid 32;
    property PageMatchingMode: PrnPageMatchingMode dispid 33;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintDocument
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A4-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintDocument = interface(IDispatch)
    ['{A25250A4-50C1-11D3-8EA3-0090271BECDD}']
    procedure _GetPrintDocument(out pDoc: INT_PTR); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintDocumentDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A4-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintDocumentDisp = dispinterface
    ['{A25250A4-50C1-11D3-8EA3-0090271BECDD}']
    procedure _GetPrintDocument(out pDoc: INT_PTR); dispid 1;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintDocuments
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A5-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintDocuments = interface(IDispatch)
    ['{A25250A5-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Item(Index: Integer): IPrnVBAPrintDocument; safecall;
    function Get_Count: Integer; safecall;
    property Item[Index: Integer]: IPrnVBAPrintDocument read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintDocumentsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A5-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintDocumentsDisp = dispinterface
    ['{A25250A5-50C1-11D3-8EA3-0090271BECDD}']
    property Item[Index: Integer]: IPrnVBAPrintDocument readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintPage
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A6-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPage = interface(IDispatch)
    ['{A25250A6-50C1-11D3-8EA3-0090271BECDD}']
    procedure _GetPrintDocument(out pDoc: INT_PTR); safecall;
    procedure _GetPrintPage(out pPage: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintPageDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A6-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPageDisp = dispinterface
    ['{A25250A6-50C1-11D3-8EA3-0090271BECDD}']
    procedure _GetPrintDocument(out pDoc: INT_PTR); dispid 1;
    procedure _GetPrintPage(out pPage: Integer); dispid 2;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintPages
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A7-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPages = interface(IDispatch)
    ['{A25250A7-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Item(Index: Integer): IPrnVBAPrintPage; safecall;
    function Get_Count: Integer; safecall;
    property Item[Index: Integer]: IPrnVBAPrintPage read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintPagesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A7-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintPagesDisp = dispinterface
    ['{A25250A7-50C1-11D3-8EA3-0090271BECDD}']
    property Item[Index: Integer]: IPrnVBAPrintPage readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IPrnVBAPrintJob
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A8-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintJob = interface(IDispatch)
    ['{A25250A8-50C1-11D3-8EA3-0090271BECDD}']
    function Get_Settings: IPrnVBAPrintSettings; safecall;
    function Get_Documents: IPrnVBAPrintDocuments; safecall;
    function Get_Pages: IPrnVBAPrintPages; safecall;
    procedure Clear; safecall;
    procedure PrintOut; safecall;
    procedure AddDocument(const Document: IPrnVBAPrintDocument; const PageRange: WideString); safecall;
    procedure AddPage(const Page: IPrnVBAPrintPage); safecall;
    property Settings: IPrnVBAPrintSettings read Get_Settings;
    property Documents: IPrnVBAPrintDocuments read Get_Documents;
    property Pages: IPrnVBAPrintPages read Get_Pages;
  end;

// *********************************************************************//
// DispIntf:  IPrnVBAPrintJobDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A25250A8-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPrnVBAPrintJobDisp = dispinterface
    ['{A25250A8-50C1-11D3-8EA3-0090271BECDD}']
    property Settings: IPrnVBAPrintSettings readonly dispid 1;
    property Documents: IPrnVBAPrintDocuments readonly dispid 2;
    property Pages: IPrnVBAPrintPages readonly dispid 3;
    procedure Clear; dispid 4;
    procedure PrintOut; dispid 5;
    procedure AddDocument(const Document: IPrnVBAPrintDocument; const PageRange: WideString); dispid 6;
    procedure AddPage(const Page: IPrnVBAPrintPage); dispid 7;
  end;

// *********************************************************************//
// Interface: IPDFVBASettings
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524FFB-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPDFVBASettings = interface(IDispatch)
    ['{A2524FFB-50C1-11D3-8EA3-0090271BECDD}']
    procedure Reset; safecall;
    function Load(const SettingName: WideString): WordBool; safecall;
    function Save(const SettingName: WideString): WordBool; safecall;
    function ShowDialog: WordBool; safecall;
    procedure PublishToPDF(const FileName: WideString); safecall;
    procedure Set_PublishRange(pExportRange: pdfExportRange); safecall;
    function Get_PublishRange: pdfExportRange; safecall;
    procedure Set_PageRange(const pszExportPagesRange: WideString); safecall;
    function Get_PageRange: WideString; safecall;
    procedure Set_Author(const pszAuthor: WideString); safecall;
    function Get_Author: WideString; safecall;
    procedure Set_Subject(const pszSubject: WideString); safecall;
    function Get_Subject: WideString; safecall;
    procedure Set_Keywords(const pszKeywords: WideString); safecall;
    function Get_Keywords: WideString; safecall;
    procedure Set_BitmapCompression(pBitmapCompressionType: pdfBitmapCompressionType); safecall;
    function Get_BitmapCompression: pdfBitmapCompressionType; safecall;
    procedure Set_JPEGQualityFactor(pnQuality: SYSINT); safecall;
    function Get_JPEGQualityFactor: SYSINT; safecall;
    procedure Set_TextAsCurves(pbTextAsCurves: WordBool); safecall;
    function Get_TextAsCurves: WordBool; safecall;
    procedure Set_EmbedFonts(pbEmbedFonts: WordBool); safecall;
    function Get_EmbedFonts: WordBool; safecall;
    procedure Set_EmbedBaseFonts(pbEmbedBaseFonts: WordBool); safecall;
    function Get_EmbedBaseFonts: WordBool; safecall;
    procedure Set_TrueTypeToType1(pbTrueTypeToType1: WordBool); safecall;
    function Get_TrueTypeToType1: WordBool; safecall;
    procedure Set_SubsetFonts(pbSubsetType1Fonts: WordBool); safecall;
    function Get_SubsetFonts: WordBool; safecall;
    procedure Set_SubsetPct(pnLevel: Integer); safecall;
    function Get_SubsetPct: Integer; safecall;
    procedure Set_CompressText(pbCompressText: WordBool); safecall;
    function Get_CompressText: WordBool; safecall;
    procedure Set_Encoding(pEncoding: pdfEncodingType); safecall;
    function Get_Encoding: pdfEncodingType; safecall;
    procedure Set_DownsampleColor(pbDownsample: WordBool); safecall;
    function Get_DownsampleColor: WordBool; safecall;
    procedure Set_DownsampleGray(pbDownsample: WordBool); safecall;
    function Get_DownsampleGray: WordBool; safecall;
    procedure Set_DownsampleMono(pbDownsample: WordBool); safecall;
    function Get_DownsampleMono: WordBool; safecall;
    procedure Set_ColorResolution(pnDownsampleResolution: Integer); safecall;
    function Get_ColorResolution: Integer; safecall;
    procedure Set_MonoResolution(pnDownsampleResolution: Integer); safecall;
    function Get_MonoResolution: Integer; safecall;
    procedure Set_GrayResolution(pnDownsampleResolution: Integer); safecall;
    function Get_GrayResolution: Integer; safecall;
    procedure Set_Hyperlinks(pbIncludeHyperlinks: WordBool); safecall;
    function Get_Hyperlinks: WordBool; safecall;
    procedure Set_Bookmarks(pbGenerateBookmarks: WordBool); safecall;
    function Get_Bookmarks: WordBool; safecall;
    procedure Set_Thumbnails(pbGenerateThumbnails: WordBool); safecall;
    function Get_Thumbnails: WordBool; safecall;
    procedure Set_Startup(pDisplayOnStart: pdfDisplayOnStart); safecall;
    function Get_Startup: pdfDisplayOnStart; safecall;
    procedure Set_ComplexFillsAsBitmaps(pbComplexFillsAsBitmaps: WordBool); safecall;
    function Get_ComplexFillsAsBitmaps: WordBool; safecall;
    procedure Set_Overprints(pbPreserveOverprints: WordBool); safecall;
    function Get_Overprints: WordBool; safecall;
    procedure Set_Halftones(pbPreserveHalftones: WordBool); safecall;
    function Get_Halftones: WordBool; safecall;
    procedure Set_SpotColors(pbPreserveSpotColors: WordBool); safecall;
    function Get_SpotColors: WordBool; safecall;
    procedure Set_MaintainOPILinks(pbMaintainOPILinks: WordBool); safecall;
    function Get_MaintainOPILinks: WordBool; safecall;
    procedure Set_FountainSteps(pnFountainSteps: Integer); safecall;
    function Get_FountainSteps: Integer; safecall;
    procedure Set_EPSAs(peEPSAs: pdfEPSAs); safecall;
    function Get_EPSAs: pdfEPSAs; safecall;
    procedure Set_pdfVersion(pePDFVersion: pdfVersion); safecall;
    function Get_pdfVersion: pdfVersion; safecall;
    procedure Set_IncludeBleed(pbIncludeBleed: WordBool); safecall;
    function Get_IncludeBleed: WordBool; safecall;
    procedure Set_Bleed(pnBleed: SYSINT); safecall;
    function Get_Bleed: SYSINT; safecall;
    procedure Set_Linearize(pbLinearize: WordBool); safecall;
    function Get_Linearize: WordBool; safecall;
    procedure Set_CropMarks(pbCropMarks: WordBool); safecall;
    function Get_CropMarks: WordBool; safecall;
    procedure Set_RegistrationMarks(pbRegistrationMarks: WordBool); safecall;
    function Get_RegistrationMarks: WordBool; safecall;
    procedure Set_DensitometerScales(pbDensitometerScales: WordBool); safecall;
    function Get_DensitometerScales: WordBool; safecall;
    procedure Set_FileInformation(pbFileInformation: WordBool); safecall;
    function Get_FileInformation: WordBool; safecall;
    procedure Set_ColorMode(peColorSet: pdfColorMode); safecall;
    function Get_ColorMode: pdfColorMode; safecall;
    procedure Set_UseColorProfile(pbUseColorProfile: WordBool); safecall;
    function Get_UseColorProfile: WordBool; safecall;
    procedure Set_ColorProfile(peColorProfile: pdfColorProfile); safecall;
    function Get_ColorProfile: pdfColorProfile; safecall;
    procedure Set_EmbedFilename(const pszEmbedFilename: WideString); safecall;
    function Get_EmbedFilename: WideString; safecall;
    procedure Set_EmbedFile(pbEmbedFile: WordBool); safecall;
    function Get_EmbedFile: WordBool; safecall;
    procedure Set_JP2QualityFactor(pnQuality: SYSINT); safecall;
    function Get_JP2QualityFactor: SYSINT; safecall;
    procedure Set_TextExportMode(pExportMode: pdfTextExportMode); safecall;
    function Get_TextExportMode: pdfTextExportMode; safecall;
    procedure Set_PrintPermissions(pPrintPermission: pdfPrintPermissions); safecall;
    function Get_PrintPermissions: pdfPrintPermissions; safecall;
    procedure Set_EditPermissions(pEditPermission: pdfEditPermissions); safecall;
    function Get_EditPermissions: pdfEditPermissions; safecall;
    procedure Set_ContentCopyingAllowed(pbEnable: WordBool); safecall;
    function Get_ContentCopyingAllowed: WordBool; safecall;
    procedure Set_OpenPassword(const pszOpenPassword: WideString); safecall;
    function Get_OpenPassword: WideString; safecall;
    procedure Set_PermissionPassword(const pszPermissionPassword: WideString); safecall;
    function Get_PermissionPassword: WideString; safecall;
    procedure Set_ConvertSpotColors(pbConvertSpotColors: WordBool); safecall;
    function Get_ConvertSpotColors: WordBool; safecall;
    procedure Set_EncryptType(peEncryptType: pdfEncryptionType); safecall;
    function Get_EncryptType: pdfEncryptionType; safecall;
    procedure Set_OutputSpotColorsAs(pnConvertSpotColorsTo: pdfSpotType); safecall;
    function Get_OutputSpotColorsAs: pdfSpotType; safecall;
    procedure Set_OverprintBlackLimit(pnOverprintBlackLimit: SYSINT); safecall;
    function Get_OverprintBlackLimit: SYSINT; safecall;
    property PublishRange: pdfExportRange read Get_PublishRange write Set_PublishRange;
    property PageRange: WideString read Get_PageRange write Set_PageRange;
    property Author: WideString read Get_Author write Set_Author;
    property Subject: WideString read Get_Subject write Set_Subject;
    property Keywords: WideString read Get_Keywords write Set_Keywords;
    property BitmapCompression: pdfBitmapCompressionType read Get_BitmapCompression write Set_BitmapCompression;
    property JPEGQualityFactor: SYSINT read Get_JPEGQualityFactor write Set_JPEGQualityFactor;
    property TextAsCurves: WordBool read Get_TextAsCurves write Set_TextAsCurves;
    property EmbedFonts: WordBool read Get_EmbedFonts write Set_EmbedFonts;
    property EmbedBaseFonts: WordBool read Get_EmbedBaseFonts write Set_EmbedBaseFonts;
    property TrueTypeToType1: WordBool read Get_TrueTypeToType1 write Set_TrueTypeToType1;
    property SubsetFonts: WordBool read Get_SubsetFonts write Set_SubsetFonts;
    property SubsetPct: Integer read Get_SubsetPct write Set_SubsetPct;
    property CompressText: WordBool read Get_CompressText write Set_CompressText;
    property Encoding: pdfEncodingType read Get_Encoding write Set_Encoding;
    property DownsampleColor: WordBool read Get_DownsampleColor write Set_DownsampleColor;
    property DownsampleGray: WordBool read Get_DownsampleGray write Set_DownsampleGray;
    property DownsampleMono: WordBool read Get_DownsampleMono write Set_DownsampleMono;
    property ColorResolution: Integer read Get_ColorResolution write Set_ColorResolution;
    property MonoResolution: Integer read Get_MonoResolution write Set_MonoResolution;
    property GrayResolution: Integer read Get_GrayResolution write Set_GrayResolution;
    property Hyperlinks: WordBool read Get_Hyperlinks write Set_Hyperlinks;
    property Bookmarks: WordBool read Get_Bookmarks write Set_Bookmarks;
    property Thumbnails: WordBool read Get_Thumbnails write Set_Thumbnails;
    property Startup: pdfDisplayOnStart read Get_Startup write Set_Startup;
    property ComplexFillsAsBitmaps: WordBool read Get_ComplexFillsAsBitmaps write Set_ComplexFillsAsBitmaps;
    property Overprints: WordBool read Get_Overprints write Set_Overprints;
    property Halftones: WordBool read Get_Halftones write Set_Halftones;
    property SpotColors: WordBool read Get_SpotColors write Set_SpotColors;
    property MaintainOPILinks: WordBool read Get_MaintainOPILinks write Set_MaintainOPILinks;
    property FountainSteps: Integer read Get_FountainSteps write Set_FountainSteps;
    property EPSAs: pdfEPSAs read Get_EPSAs write Set_EPSAs;
    property pdfVersion: pdfVersion read Get_pdfVersion write Set_pdfVersion;
    property IncludeBleed: WordBool read Get_IncludeBleed write Set_IncludeBleed;
    property Bleed: SYSINT read Get_Bleed write Set_Bleed;
    property Linearize: WordBool read Get_Linearize write Set_Linearize;
    property CropMarks: WordBool read Get_CropMarks write Set_CropMarks;
    property RegistrationMarks: WordBool read Get_RegistrationMarks write Set_RegistrationMarks;
    property DensitometerScales: WordBool read Get_DensitometerScales write Set_DensitometerScales;
    property FileInformation: WordBool read Get_FileInformation write Set_FileInformation;
    property ColorMode: pdfColorMode read Get_ColorMode write Set_ColorMode;
    property UseColorProfile: WordBool read Get_UseColorProfile write Set_UseColorProfile;
    property ColorProfile: pdfColorProfile read Get_ColorProfile write Set_ColorProfile;
    property EmbedFilename: WideString read Get_EmbedFilename write Set_EmbedFilename;
    property EmbedFile: WordBool read Get_EmbedFile write Set_EmbedFile;
    property JP2QualityFactor: SYSINT read Get_JP2QualityFactor write Set_JP2QualityFactor;
    property TextExportMode: pdfTextExportMode read Get_TextExportMode write Set_TextExportMode;
    property PrintPermissions: pdfPrintPermissions read Get_PrintPermissions write Set_PrintPermissions;
    property EditPermissions: pdfEditPermissions read Get_EditPermissions write Set_EditPermissions;
    property ContentCopyingAllowed: WordBool read Get_ContentCopyingAllowed write Set_ContentCopyingAllowed;
    property OpenPassword: WideString read Get_OpenPassword write Set_OpenPassword;
    property PermissionPassword: WideString read Get_PermissionPassword write Set_PermissionPassword;
    property ConvertSpotColors: WordBool read Get_ConvertSpotColors write Set_ConvertSpotColors;
    property EncryptType: pdfEncryptionType read Get_EncryptType write Set_EncryptType;
    property OutputSpotColorsAs: pdfSpotType read Get_OutputSpotColorsAs write Set_OutputSpotColorsAs;
    property OverprintBlackLimit: SYSINT read Get_OverprintBlackLimit write Set_OverprintBlackLimit;
  end;

// *********************************************************************//
// DispIntf:  IPDFVBASettingsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2524FFB-50C1-11D3-8EA3-0090271BECDD}
// *********************************************************************//
  IPDFVBASettingsDisp = dispinterface
    ['{A2524FFB-50C1-11D3-8EA3-0090271BECDD}']
    procedure Reset; dispid 1610743808;
    function Load(const SettingName: WideString): WordBool; dispid 1610743809;
    function Save(const SettingName: WideString): WordBool; dispid 1610743810;
    function ShowDialog: WordBool; dispid 1610743811;
    procedure PublishToPDF(const FileName: WideString); dispid 1610743812;
    property PublishRange: pdfExportRange dispid 1610743813;
    property PageRange: WideString dispid 1610743815;
    property Author: WideString dispid 1610743817;
    property Subject: WideString dispid 1610743819;
    property Keywords: WideString dispid 1610743821;
    property BitmapCompression: pdfBitmapCompressionType dispid 1610743823;
    property JPEGQualityFactor: SYSINT dispid 1610743825;
    property TextAsCurves: WordBool dispid 1610743827;
    property EmbedFonts: WordBool dispid 1610743829;
    property EmbedBaseFonts: WordBool dispid 1610743831;
    property TrueTypeToType1: WordBool dispid 1610743833;
    property SubsetFonts: WordBool dispid 1610743835;
    property SubsetPct: Integer dispid 1610743837;
    property CompressText: WordBool dispid 1610743839;
    property Encoding: pdfEncodingType dispid 1610743841;
    property DownsampleColor: WordBool dispid 1610743843;
    property DownsampleGray: WordBool dispid 1610743845;
    property DownsampleMono: WordBool dispid 1610743847;
    property ColorResolution: Integer dispid 1610743849;
    property MonoResolution: Integer dispid 1610743851;
    property GrayResolution: Integer dispid 1610743853;
    property Hyperlinks: WordBool dispid 1610743855;
    property Bookmarks: WordBool dispid 1610743857;
    property Thumbnails: WordBool dispid 1610743859;
    property Startup: pdfDisplayOnStart dispid 1610743861;
    property ComplexFillsAsBitmaps: WordBool dispid 1610743863;
    property Overprints: WordBool dispid 1610743865;
    property Halftones: WordBool dispid 1610743867;
    property SpotColors: WordBool dispid 1610743869;
    property MaintainOPILinks: WordBool dispid 1610743871;
    property FountainSteps: Integer dispid 1610743873;
    property EPSAs: pdfEPSAs dispid 1610743875;
    property pdfVersion: pdfVersion dispid 1610743877;
    property IncludeBleed: WordBool dispid 1610743879;
    property Bleed: SYSINT dispid 1610743881;
    property Linearize: WordBool dispid 1610743883;
    property CropMarks: WordBool dispid 1610743885;
    property RegistrationMarks: WordBool dispid 1610743887;
    property DensitometerScales: WordBool dispid 1610743889;
    property FileInformation: WordBool dispid 1610743891;
    property ColorMode: pdfColorMode dispid 1610743893;
    property UseColorProfile: WordBool dispid 1610743895;
    property ColorProfile: pdfColorProfile dispid 1610743897;
    property EmbedFilename: WideString dispid 1610743899;
    property EmbedFile: WordBool dispid 1610743901;
    property JP2QualityFactor: SYSINT dispid 1610743903;
    property TextExportMode: pdfTextExportMode dispid 1610743905;
    property PrintPermissions: pdfPrintPermissions dispid 1610743907;
    property EditPermissions: pdfEditPermissions dispid 1610743909;
    property ContentCopyingAllowed: WordBool dispid 1610743911;
    property OpenPassword: WideString dispid 1610743913;
    property PermissionPassword: WideString dispid 1610743915;
    property ConvertSpotColors: WordBool dispid 1610743917;
    property EncryptType: pdfEncryptionType dispid 1610743919;
    property OutputSpotColorsAs: pdfSpotType dispid 1610743921;
    property OverprintBlackLimit: SYSINT dispid 1610743923;
  end;

// *********************************************************************//
// Interface: IVGDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580024-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDocument = interface(IDispatch)
    ['{B0580024-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocuments; safecall;
    function Get_Name: WideString; safecall;
    procedure SaveAs(const FileName: WideString; const Options: IVGStructSaveAsOptions); safecall;
    procedure Save; safecall;
    function Get_Pages: IVGPages; safecall;
    function Get_ReferencePoint: cdrReferencePoint; safecall;
    procedure Set_ReferencePoint(pRefPoint: cdrReferencePoint); safecall;
    function Get_ApplyToDuplicate: WordBool; safecall;
    procedure Set_ApplyToDuplicate(ApplyToDuplicate: WordBool); safecall;
    function Get_ActivePage: IVGPage; safecall;
    function Get_ActiveLayer: IVGLayer; safecall;
    function Get_Windows: IVGWindows; safecall;
    function Get_ActiveWindow: IVGWindow; safecall;
    procedure Close; safecall;
    procedure Undo(Levels: Integer); safecall;
    procedure Redo(Levels: Integer); safecall;
    procedure Repeat_; safecall;
    procedure Activate; safecall;
    function Get_Unit_: cdrUnit; safecall;
    procedure Set_Unit_(pnUnit: cdrUnit); safecall;
    function Get_DrawingOriginX: Double; safecall;
    procedure Set_DrawingOriginX(plX: Double); safecall;
    function Get_DrawingOriginY: Double; safecall;
    procedure Set_DrawingOriginY(plY: Double); safecall;
    function AddPages(NumberOfPages: Integer): IVGPage; safecall;
    function InsertPages(NumberOfPages: Integer; BeforePage: WordBool; Page: Integer): IVGPage; safecall;
    function Selection: IVGShape; safecall;
    procedure ClearSelection; safecall;
    procedure Export(const FileName: WideString; Filter: cdrFilter; Range: cdrExportRange; 
                     const Options: IVGStructExportOptions; 
                     const PaletteOptions: IVGStructPaletteOptions); safecall;
    procedure ResolveAllBitmapsLinks; safecall;
    function Get_Dirty: WordBool; safecall;
    procedure Set_Dirty(Dirty: WordBool); safecall;
    function GetUserClick(out x: Double; out y: Double; out ShiftState: Integer; TimeOut: Integer; 
                          Snap: WordBool; CursorShape: cdrCursorShape): Integer; safecall;
    function GetUserArea(out x1: Double; out y1: Double; out x2: Double; out y2: Double; 
                         out ShiftState: Integer; TimeOut: Integer; Snap: WordBool; 
                         CursorShape: cdrCursorShape): Integer; safecall;
    procedure BeginCommandGroup(const CommandName: WideString); safecall;
    procedure EndCommandGroup; safecall;
    function Get_FilePath: WideString; safecall;
    function Get_FileName: WideString; safecall;
    function Get_FullFileName: WideString; safecall;
    function Get_Resolution: Integer; safecall;
    procedure Set_Resolution(pResolution: Integer); safecall;
    function Get_ShapeEnumDirection: cdrShapeEnumDirection; safecall;
    procedure Set_ShapeEnumDirection(peDirection: cdrShapeEnumDirection); safecall;
    function Get_SelectionRange: IVGShapeRange; safecall;
    function Get_Rulers: IVGRulers; safecall;
    function Get_Grid: IVGGrid; safecall;
    function Get_Views: IVGViews; safecall;
    function CreateView(const Name: WideString; OriginX: Double; OriginY: Double; Zoom: Integer; 
                        const Page: IVGPage): IVGView; safecall;
    function Get_ActivePowerClip: IVGPowerClip; safecall;
    function AdviseEvents(const EventSink: IDispatch): Integer; safecall;
    procedure UnadviseEvents(Cookie: Integer); safecall;
    function Get_WorldScale: Double; safecall;
    procedure Set_WorldScale(Scale: Double); safecall;
    procedure PrintOut; safecall;
    function Get_ActiveShape: IVGShape; safecall;
    function Get_CurvePrecision: Integer; safecall;
    function AddPagesEx(NumberOfPages: Integer; Width: Double; Height: Double): IVGPage; safecall;
    function InsertPagesEx(NumberOfPages: Integer; BeforePage: WordBool; Page: Integer; 
                           Width: Double; Height: Double): IVGPage; safecall;
    function Get_Title: WideString; safecall;
    procedure SaveSettings(const Tag: WideString); safecall;
    procedure RestoreSettings(const Tag: WideString); safecall;
    function Get_Active: WordBool; safecall;
    function Get_Index: Integer; safecall;
    function ExportEx(const FileName: WideString; Filter: cdrFilter; Range: cdrExportRange; 
                      const Options: IVGStructExportOptions; 
                      const PaletteOptions: IVGStructPaletteOptions): ICorelExportFilter; safecall;
    function ExportBitmap(const FileName: WideString; Filter: cdrFilter; Range: cdrExportRange; 
                          ImageType: cdrImageType; Width: Integer; Height: Integer; 
                          ResolutionX: Integer; ResolutionY: Integer; 
                          AntiAliasingType: cdrAntiAliasingType; Dithered: WordBool; 
                          Transparent: WordBool; UseColorProfile: WordBool; 
                          MaintainLayers: WordBool; Compression: cdrCompressionType; 
                          const PaletteOptions: IVGStructPaletteOptions; const ExportArea: IVGRect): ICorelExportFilter; safecall;
    function Get_EditAcrossLayers: WordBool; safecall;
    procedure Set_EditAcrossLayers(pVal: WordBool); safecall;
    function Get_Properties: IVGProperties; safecall;
    procedure Set_CurvePrecision(lpPrec: Integer); safecall;
    function Get_PrintSettings: IPrnVBAPrintSettings; safecall;
    function Get_Keywords: WideString; safecall;
    procedure Set_Keywords(const pVal: WideString); safecall;
    function Get_Notes: WideString; safecall;
    procedure Set_Notes(const pVal: WideString); safecall;
    function Get_PreserveSelection: WordBool; safecall;
    procedure Set_PreserveSelection(pVal: WordBool); safecall;
    procedure ResetSettings; safecall;
    function Get_DataFields: IVGDataFields; safecall;
    function Get_PDFSettings: IPDFVBASettings; safecall;
    procedure PublishToPDF(const FileName: WideString); safecall;
    function Get_SelectionInfo: IVGSelectionInformation; safecall;
    function Get_PageSizes: IVGPageSizes; safecall;
    function Get_Components: IVGComponents; safecall;
    function Get_SymbolLibrary: IVGSymbolLibrary; safecall;
    function CreateCurve: IVGCurve; safecall;
    function CreateCurveFromArray(var Source: PSafeArray; NumElements: Integer): IVGCurve; safecall;
    procedure LoadStyleSheet(const FileName: WideString); safecall;
    procedure SaveStyleSheet(const FileName: WideString); safecall;
    procedure SaveStyleSheetAsDefault; safecall;
    procedure CreateSelection(var ShapeArray: PSafeArray); safecall;
    procedure AddToSelection(var ShapeArray: PSafeArray); safecall;
    procedure RemoveFromSelection(var ShapeArray: PSafeArray); safecall;
    function Get_SelectableShapes: IVGShapes; safecall;
    function ToUnits(Value: Double; FromUnit: cdrUnit): Double; safecall;
    function FromUnits(Value: Double; ToUnit: cdrUnit): Double; safecall;
    function Get_ResolutionX: Integer; safecall;
    procedure Set_ResolutionX(pResolution: Integer); safecall;
    function Get_ResolutionY: Integer; safecall;
    procedure Set_ResolutionY(pResolution: Integer); safecall;
    function Get_MasterPage: IVGPage; safecall;
    function Revert: WordBool; safecall;
    function Get_CodeName: WideString; safecall;
    function Get__CodeName: WideString; safecall;
    procedure Set__CodeName(const pVal: WideString); safecall;
    procedure Set_Name(const pbstrName: WideString); safecall;
    procedure Set_FullFileName(const pFullFileName: WideString); safecall;
    function Get_TreeRoot: IVGTreeNode; safecall;
    function Get_TreeManager: IVGTreeManager; safecall;
    function LogCreateShape(const VirtualShape: IVGShape): IVGShape; safecall;
    function LogCreateShapeRange(const VirtualShapeRange: IVGShapeRange): IVGShapeRange; safecall;
    function CreateFill(const FillString: WideString): IVGFill; safecall;
    function CreateOutline(const OutlineString: WideString): IVGOutline; safecall;
    function Get_HatchLibraries: IVGHatchLibraries; safecall;
    function CreateShapeRangeFromArray(var ShapeArray: PSafeArray): IVGShapeRange; safecall;
    procedure ClearUndoList; safecall;
    function Get_SourcePlatformVersion: Double; safecall;
    procedure Set_SourcePlatformVersion(pVal: Double); safecall;
    function Get_SourceFormat: cdrFilter; safecall;
    function Get_IsCurrentVersion: WordBool; safecall;
    function Get_SourceFileVersion: cdrFileVersion; safecall;
    procedure Set_SourceFileVersion(pVal: cdrFileVersion); safecall;
    function CreateUniformFill(const Color: IVGColor): IVGFill; safecall;
    function Get_Metadata: IVGMetadata; safecall;
    function Get_Layout: cdrDocLayout; safecall;
    procedure Set_Layout(pVal: cdrDocLayout); safecall;
    function Get_FacingPages: WordBool; safecall;
    procedure Set_FacingPages(pVal: WordBool); safecall;
    function Get_FirstPageOnRightSide: WordBool; safecall;
    procedure Set_FirstPageOnRightSide(pVal: WordBool); safecall;
    procedure SetLayout(Layout: cdrDocLayout; FacingPages: WordBool; StartOnRightSide: WordBool); safecall;
    function Get_Spreads: IVGSpreads; safecall;
    function Get_ActiveSpread: IVGSpread; safecall;
    function CreateArrowHead(const Curve: IVGCurve): IVGArrowHead; safecall;
    function CreateArrowHeadEx(const Curve: IVGCurve; CenterX: Double; CenterY: Double; 
                               OutlineWidthScale: Double; LineOffset: Double): IVGArrowHead; safecall;
    function DeletePages(StartPage: Integer; NumPages: Integer): WordBool; safecall;
    function CreateArrowHead2(const Curve: IVGCurve; const Name: WideString): IVGArrowHead; safecall;
    function CreateArrowHeadEx2(const Curve: IVGCurve; const Name: WideString; CenterX: Double; 
                                CenterY: Double; OutlineWidthScale: Double; LineOffset: Double): IVGArrowHead; safecall;
    function CreateArrowHeadOptions(Length: Double; Width: Double; OffsetX: Double; 
                                    OffsetY: Double; RotationAngle: Double; 
                                    FlipHorizontal: WordBool; FlipVertical: WordBool): IVGArrowHeadOptions; safecall;
    procedure SaveAsCopy(const FileName: WideString; const Options: IVGStructSaveAsOptions); safecall;
    function CreateFreeSnapPoint(PositionX: Double; PositionY: Double): IVGSnapPoint; safecall;
    function CreateBSpline(NumControlPoints: Integer; Closed: WordBool): IVGBSpline; safecall;
    function Duplicate: IVGDocument; safecall;
    function Clone: IVGDocument; safecall;
    function Get_IsTemporary: WordBool; safecall;
    function Get_ColorContext: IVGColorContext; safecall;
    procedure AssignColorContext(const ColorContext: IVGColorContext); safecall;
    procedure ConvertToColorContext(const ColorContext: IVGColorContext); safecall;
    procedure PrintColorProof(const ProofSettings: IVGProofColorSettings); safecall;
    function Get_Palette: IVGPalette; safecall;
    function Get_TextFormatter: Integer; safecall;
    procedure Set_TextFormatter(pVal: Integer); safecall;
    function Get_StyleSheet: IVGStyleSheet; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocuments read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property Pages: IVGPages read Get_Pages;
    property ReferencePoint: cdrReferencePoint read Get_ReferencePoint write Set_ReferencePoint;
    property ApplyToDuplicate: WordBool read Get_ApplyToDuplicate write Set_ApplyToDuplicate;
    property ActivePage: IVGPage read Get_ActivePage;
    property ActiveLayer: IVGLayer read Get_ActiveLayer;
    property Windows: IVGWindows read Get_Windows;
    property ActiveWindow: IVGWindow read Get_ActiveWindow;
    property Unit_: cdrUnit read Get_Unit_ write Set_Unit_;
    property DrawingOriginX: Double read Get_DrawingOriginX write Set_DrawingOriginX;
    property DrawingOriginY: Double read Get_DrawingOriginY write Set_DrawingOriginY;
    property Dirty: WordBool read Get_Dirty write Set_Dirty;
    property FilePath: WideString read Get_FilePath;
    property FileName: WideString read Get_FileName;
    property FullFileName: WideString read Get_FullFileName write Set_FullFileName;
    property Resolution: Integer read Get_Resolution write Set_Resolution;
    property ShapeEnumDirection: cdrShapeEnumDirection read Get_ShapeEnumDirection write Set_ShapeEnumDirection;
    property SelectionRange: IVGShapeRange read Get_SelectionRange;
    property Rulers: IVGRulers read Get_Rulers;
    property Grid: IVGGrid read Get_Grid;
    property Views: IVGViews read Get_Views;
    property ActivePowerClip: IVGPowerClip read Get_ActivePowerClip;
    property WorldScale: Double read Get_WorldScale write Set_WorldScale;
    property ActiveShape: IVGShape read Get_ActiveShape;
    property CurvePrecision: Integer read Get_CurvePrecision write Set_CurvePrecision;
    property Title: WideString read Get_Title;
    property Active: WordBool read Get_Active;
    property Index: Integer read Get_Index;
    property EditAcrossLayers: WordBool read Get_EditAcrossLayers write Set_EditAcrossLayers;
    property Properties: IVGProperties read Get_Properties;
    property PrintSettings: IPrnVBAPrintSettings read Get_PrintSettings;
    property Keywords: WideString read Get_Keywords write Set_Keywords;
    property Notes: WideString read Get_Notes write Set_Notes;
    property PreserveSelection: WordBool read Get_PreserveSelection write Set_PreserveSelection;
    property DataFields: IVGDataFields read Get_DataFields;
    property PDFSettings: IPDFVBASettings read Get_PDFSettings;
    property SelectionInfo: IVGSelectionInformation read Get_SelectionInfo;
    property PageSizes: IVGPageSizes read Get_PageSizes;
    property Components: IVGComponents read Get_Components;
    property SymbolLibrary: IVGSymbolLibrary read Get_SymbolLibrary;
    property SelectableShapes: IVGShapes read Get_SelectableShapes;
    property ResolutionX: Integer read Get_ResolutionX write Set_ResolutionX;
    property ResolutionY: Integer read Get_ResolutionY write Set_ResolutionY;
    property MasterPage: IVGPage read Get_MasterPage;
    property CodeName: WideString read Get_CodeName;
    property _CodeName: WideString read Get__CodeName write Set__CodeName;
    property TreeRoot: IVGTreeNode read Get_TreeRoot;
    property TreeManager: IVGTreeManager read Get_TreeManager;
    property HatchLibraries: IVGHatchLibraries read Get_HatchLibraries;
    property SourcePlatformVersion: Double read Get_SourcePlatformVersion write Set_SourcePlatformVersion;
    property SourceFormat: cdrFilter read Get_SourceFormat;
    property IsCurrentVersion: WordBool read Get_IsCurrentVersion;
    property SourceFileVersion: cdrFileVersion read Get_SourceFileVersion write Set_SourceFileVersion;
    property Metadata: IVGMetadata read Get_Metadata;
    property Layout: cdrDocLayout read Get_Layout write Set_Layout;
    property FacingPages: WordBool read Get_FacingPages write Set_FacingPages;
    property FirstPageOnRightSide: WordBool read Get_FirstPageOnRightSide write Set_FirstPageOnRightSide;
    property Spreads: IVGSpreads read Get_Spreads;
    property ActiveSpread: IVGSpread read Get_ActiveSpread;
    property IsTemporary: WordBool read Get_IsTemporary;
    property ColorContext: IVGColorContext read Get_ColorContext;
    property Palette: IVGPalette read Get_Palette;
    property TextFormatter: Integer read Get_TextFormatter write Set_TextFormatter;
    property StyleSheet: IVGStyleSheet read Get_StyleSheet;
  end;

// *********************************************************************//
// DispIntf:  IVGDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580024-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDocumentDisp = dispinterface
    ['{B0580024-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocuments readonly dispid 1610743809;
    property Name: WideString dispid 0;
    procedure SaveAs(const FileName: WideString; const Options: IVGStructSaveAsOptions); dispid 1610743811;
    procedure Save; dispid 1610743812;
    property Pages: IVGPages readonly dispid 1610743813;
    property ReferencePoint: cdrReferencePoint dispid 1610743814;
    property ApplyToDuplicate: WordBool dispid 1610743816;
    property ActivePage: IVGPage readonly dispid 1610743818;
    property ActiveLayer: IVGLayer readonly dispid 1610743819;
    property Windows: IVGWindows readonly dispid 1610743820;
    property ActiveWindow: IVGWindow readonly dispid 1610743821;
    procedure Close; dispid 1610743822;
    procedure Undo(Levels: Integer); dispid 1610743823;
    procedure Redo(Levels: Integer); dispid 1610743824;
    procedure Repeat_; dispid 1610743825;
    procedure Activate; dispid 1610743826;
    property Unit_: cdrUnit dispid 1610743827;
    property DrawingOriginX: Double dispid 1610743829;
    property DrawingOriginY: Double dispid 1610743831;
    function AddPages(NumberOfPages: Integer): IVGPage; dispid 1610743833;
    function InsertPages(NumberOfPages: Integer; BeforePage: WordBool; Page: Integer): IVGPage; dispid 1610743834;
    function Selection: IVGShape; dispid 1610743835;
    procedure ClearSelection; dispid 1610743836;
    procedure Export(const FileName: WideString; Filter: cdrFilter; Range: cdrExportRange; 
                     const Options: IVGStructExportOptions; 
                     const PaletteOptions: IVGStructPaletteOptions); dispid 1610743837;
    procedure ResolveAllBitmapsLinks; dispid 1610743838;
    property Dirty: WordBool dispid 1610743839;
    function GetUserClick(out x: Double; out y: Double; out ShiftState: Integer; TimeOut: Integer; 
                          Snap: WordBool; CursorShape: cdrCursorShape): Integer; dispid 1610743841;
    function GetUserArea(out x1: Double; out y1: Double; out x2: Double; out y2: Double; 
                         out ShiftState: Integer; TimeOut: Integer; Snap: WordBool; 
                         CursorShape: cdrCursorShape): Integer; dispid 1610743842;
    procedure BeginCommandGroup(const CommandName: WideString); dispid 1610743843;
    procedure EndCommandGroup; dispid 1610743844;
    property FilePath: WideString readonly dispid 1610743845;
    property FileName: WideString readonly dispid 1610743846;
    property FullFileName: WideString dispid 1610743847;
    property Resolution: Integer dispid 1610743848;
    property ShapeEnumDirection: cdrShapeEnumDirection dispid 1610743850;
    property SelectionRange: IVGShapeRange readonly dispid 1610743852;
    property Rulers: IVGRulers readonly dispid 1610743853;
    property Grid: IVGGrid readonly dispid 1610743854;
    property Views: IVGViews readonly dispid 1610743855;
    function CreateView(const Name: WideString; OriginX: Double; OriginY: Double; Zoom: Integer; 
                        const Page: IVGPage): IVGView; dispid 1610743856;
    property ActivePowerClip: IVGPowerClip readonly dispid 1610743857;
    function AdviseEvents(const EventSink: IDispatch): Integer; dispid 1610743858;
    procedure UnadviseEvents(Cookie: Integer); dispid 1610743859;
    property WorldScale: Double dispid 1610743860;
    procedure PrintOut; dispid 1610743862;
    property ActiveShape: IVGShape readonly dispid 1610743863;
    property CurvePrecision: Integer dispid 1610743864;
    function AddPagesEx(NumberOfPages: Integer; Width: Double; Height: Double): IVGPage; dispid 1610743865;
    function InsertPagesEx(NumberOfPages: Integer; BeforePage: WordBool; Page: Integer; 
                           Width: Double; Height: Double): IVGPage; dispid 1610743866;
    property Title: WideString readonly dispid 1610743867;
    procedure SaveSettings(const Tag: WideString); dispid 1610743868;
    procedure RestoreSettings(const Tag: WideString); dispid 1610743869;
    property Active: WordBool readonly dispid 1610743870;
    property Index: Integer readonly dispid 1610743871;
    function ExportEx(const FileName: WideString; Filter: cdrFilter; Range: cdrExportRange; 
                      const Options: IVGStructExportOptions; 
                      const PaletteOptions: IVGStructPaletteOptions): ICorelExportFilter; dispid 1610743872;
    function ExportBitmap(const FileName: WideString; Filter: cdrFilter; Range: cdrExportRange; 
                          ImageType: cdrImageType; Width: Integer; Height: Integer; 
                          ResolutionX: Integer; ResolutionY: Integer; 
                          AntiAliasingType: cdrAntiAliasingType; Dithered: WordBool; 
                          Transparent: WordBool; UseColorProfile: WordBool; 
                          MaintainLayers: WordBool; Compression: cdrCompressionType; 
                          const PaletteOptions: IVGStructPaletteOptions; const ExportArea: IVGRect): ICorelExportFilter; dispid 1610743873;
    property EditAcrossLayers: WordBool dispid 1610743874;
    property Properties: IVGProperties readonly dispid 1610743876;
    property PrintSettings: IPrnVBAPrintSettings readonly dispid 1610743878;
    property Keywords: WideString dispid 1610743879;
    property Notes: WideString dispid 1610743881;
    property PreserveSelection: WordBool dispid 1610743883;
    procedure ResetSettings; dispid 1610743885;
    property DataFields: IVGDataFields readonly dispid 1610743886;
    property PDFSettings: IPDFVBASettings readonly dispid 1610743887;
    procedure PublishToPDF(const FileName: WideString); dispid 1610743888;
    property SelectionInfo: IVGSelectionInformation readonly dispid 1610743889;
    property PageSizes: IVGPageSizes readonly dispid 1610743890;
    property Components: IVGComponents readonly dispid 1610743891;
    property SymbolLibrary: IVGSymbolLibrary readonly dispid 1610743892;
    function CreateCurve: IVGCurve; dispid 1610743893;
    function CreateCurveFromArray(var Source: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                  NumElements: Integer): IVGCurve; dispid 1610743894;
    procedure LoadStyleSheet(const FileName: WideString); dispid 1610743895;
    procedure SaveStyleSheet(const FileName: WideString); dispid 1610743896;
    procedure SaveStyleSheetAsDefault; dispid 1610743897;
    procedure CreateSelection(var ShapeArray: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743898;
    procedure AddToSelection(var ShapeArray: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743899;
    procedure RemoveFromSelection(var ShapeArray: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743900;
    property SelectableShapes: IVGShapes readonly dispid 1610743901;
    function ToUnits(Value: Double; FromUnit: cdrUnit): Double; dispid 1610743902;
    function FromUnits(Value: Double; ToUnit: cdrUnit): Double; dispid 1610743903;
    property ResolutionX: Integer dispid 1610743904;
    property ResolutionY: Integer dispid 1610743906;
    property MasterPage: IVGPage readonly dispid 1610743908;
    function Revert: WordBool; dispid 1610743909;
    property CodeName: WideString readonly dispid 1610743910;
    property _CodeName: WideString dispid -2147418112;
    property TreeRoot: IVGTreeNode readonly dispid 1610743915;
    property TreeManager: IVGTreeManager readonly dispid 1610743916;
    function LogCreateShape(const VirtualShape: IVGShape): IVGShape; dispid 1610743917;
    function LogCreateShapeRange(const VirtualShapeRange: IVGShapeRange): IVGShapeRange; dispid 1610743918;
    function CreateFill(const FillString: WideString): IVGFill; dispid 1610743919;
    function CreateOutline(const OutlineString: WideString): IVGOutline; dispid 1610743920;
    property HatchLibraries: IVGHatchLibraries readonly dispid 1610743921;
    function CreateShapeRangeFromArray(var ShapeArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShapeRange; dispid 1610743922;
    procedure ClearUndoList; dispid 1610743923;
    property SourcePlatformVersion: Double dispid 1610743924;
    property SourceFormat: cdrFilter readonly dispid 1610743926;
    property IsCurrentVersion: WordBool readonly dispid 1610743927;
    property SourceFileVersion: cdrFileVersion dispid 1610743928;
    function CreateUniformFill(const Color: IVGColor): IVGFill; dispid 1610743930;
    property Metadata: IVGMetadata readonly dispid 1610743931;
    property Layout: cdrDocLayout dispid 1610743932;
    property FacingPages: WordBool dispid 1610743934;
    property FirstPageOnRightSide: WordBool dispid 1610743936;
    procedure SetLayout(Layout: cdrDocLayout; FacingPages: WordBool; StartOnRightSide: WordBool); dispid 1610743938;
    property Spreads: IVGSpreads readonly dispid 1610743939;
    property ActiveSpread: IVGSpread readonly dispid 1610743940;
    function CreateArrowHead(const Curve: IVGCurve): IVGArrowHead; dispid 1610743941;
    function CreateArrowHeadEx(const Curve: IVGCurve; CenterX: Double; CenterY: Double; 
                               OutlineWidthScale: Double; LineOffset: Double): IVGArrowHead; dispid 1610743942;
    function DeletePages(StartPage: Integer; NumPages: Integer): WordBool; dispid 1610743943;
    function CreateArrowHead2(const Curve: IVGCurve; const Name: WideString): IVGArrowHead; dispid 1610743944;
    function CreateArrowHeadEx2(const Curve: IVGCurve; const Name: WideString; CenterX: Double; 
                                CenterY: Double; OutlineWidthScale: Double; LineOffset: Double): IVGArrowHead; dispid 1610743945;
    function CreateArrowHeadOptions(Length: Double; Width: Double; OffsetX: Double; 
                                    OffsetY: Double; RotationAngle: Double; 
                                    FlipHorizontal: WordBool; FlipVertical: WordBool): IVGArrowHeadOptions; dispid 1610743946;
    procedure SaveAsCopy(const FileName: WideString; const Options: IVGStructSaveAsOptions); dispid 1610743947;
    function CreateFreeSnapPoint(PositionX: Double; PositionY: Double): IVGSnapPoint; dispid 1610743948;
    function CreateBSpline(NumControlPoints: Integer; Closed: WordBool): IVGBSpline; dispid 1610743949;
    function Duplicate: IVGDocument; dispid 1610743950;
    function Clone: IVGDocument; dispid 1610743951;
    property IsTemporary: WordBool readonly dispid 1610743952;
    property ColorContext: IVGColorContext readonly dispid 1610743953;
    procedure AssignColorContext(const ColorContext: IVGColorContext); dispid 1610743954;
    procedure ConvertToColorContext(const ColorContext: IVGColorContext); dispid 1610743955;
    procedure PrintColorProof(const ProofSettings: IVGProofColorSettings); dispid 1610743956;
    property Palette: IVGPalette readonly dispid 1610743957;
    property TextFormatter: Integer dispid 1610743958;
    property StyleSheet: IVGStyleSheet readonly dispid 1610743960;
  end;

// *********************************************************************//
// Interface: IVGApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGApplication = interface(IDispatch)
    ['{B058000B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function Get_Documents: IVGDocuments; safecall;
    function Get_ActiveDocument: IVGDocument; safecall;
    function Get_ActivePage: IVGPage; safecall;
    function Get_ActiveWindow: IVGWindow; safecall;
    function Get_Windows: IVGWindows; safecall;
    function CorelScriptTools: ICorelScriptTools; safecall;
    function Get_ActiveWorkspace: IVGWorkspace; safecall;
    function Get_Workspaces: IVGWorkspaces; safecall;
    function Get_ActivePalette: IVGPalette; safecall;
    function Get_Palettes: IVGPalettes; safecall;
    procedure Quit; safecall;
    function CreateColor(const ColorString: WideString): IVGColor; safecall;
    function Get_FontList: IVGFontList; safecall;
    function Get_AppWindow: IVGAppWindow; safecall;
    function Get_RecentFiles: IVGRecentFiles; safecall;
    function Get_VBE: IDispatch; safecall;
    function cdrMixedDouble: Double; safecall;
    function cdrMixedSingle: Single; safecall;
    function cdrMixedLong: Integer; safecall;
    function Get_EventsEnabled: WordBool; safecall;
    procedure Set_EventsEnabled(pVal: WordBool); safecall;
    function OpenDocument(const FileName: WideString; CodePage: Integer): IVGDocument; safecall;
    function CreateDocument: IVGDocument; safecall;
    function CreateColorEx(ColorModel: Integer; V1: Integer; V2: Integer; V3: Integer; V4: Integer; 
                           V5: Integer; V6: Integer; V7: Integer): IVGColor; safecall;
    function Get_ArrowHeads: IVGArrowHeads; safecall;
    function Get_OutlineStyles: IVGOutlineStyles; safecall;
    function Get_Version: WideString; safecall;
    function Get_VersionMajor: Integer; safecall;
    function Get_VersionMinor: Integer; safecall;
    function Get_VersionBuild: Integer; safecall;
    function Get_Path: WideString; safecall;
    function Get_ConfigPath: WideString; safecall;
    function Get_SetupPath: WideString; safecall;
    function Get_ActiveLayer: IVGLayer; safecall;
    function Get_ActiveSelection: IVGShape; safecall;
    function Get_PatternCanvases: IVGPatternCanvases; safecall;
    function Get_Clipboard: IVGClipboard; safecall;
    function Get_ActiveSelectionRange: IVGShapeRange; safecall;
    function Get_ActiveTool: cdrTools; safecall;
    procedure Set_ActiveTool(pTool: cdrTools); safecall;
    function Get_ActiveShape: IVGShape; safecall;
    function Get_Optimization: WordBool; safecall;
    procedure Set_Optimization(pVal: WordBool); safecall;
    function Get_PanoseMatching: cdrPanoseMatchingType; safecall;
    procedure Set_PanoseMatching(pVal: cdrPanoseMatchingType); safecall;
    function Get_AddIns: IVGAddins; safecall;
    function CreateRGBColor(Red: Integer; Green: Integer; Blue: Integer): IVGColor; safecall;
    function CreateCMYColor(Cyan: Integer; Magenta: Integer; Yellow: Integer): IVGColor; safecall;
    function CreateCMYKColor(Cyan: Integer; Magenta: Integer; Yellow: Integer; Black: Integer): IVGColor; safecall;
    function CreateGrayColor(GrayValue: Integer): IVGColor; safecall;
    function CreateHLSColor(Hue: Integer; Lightness: Integer; Saturation: Integer): IVGColor; safecall;
    function CreateHSBColor(Hue: Integer; Saturation: Integer; Brightness: Integer): IVGColor; safecall;
    function CreateBWColor(White: WordBool): IVGColor; safecall;
    function CreateYIQColor(y: Integer; I: Integer; Q: Integer): IVGColor; safecall;
    function CreateLabColor(L: Integer; A: Integer; B: Integer): IVGColor; safecall;
    function CreateFixedColor(PaletteID: cdrPaletteID; PaletteIndex: Integer; Tint: Integer): IVGColor; safecall;
    function CreateRegistrationColor: IVGColor; safecall;
    function CreateSnapPoint(PositionX: Double; PositionY: Double): IVGSnapPoint; safecall;
    function CreateDocumentFromTemplate(const Template: WideString; IncludeGraphics: WordBool): IVGDocument; safecall;
    function Get_Printers: IPrnVBAPrinters; safecall;
    function Get_PrintJob: IPrnVBAPrintJob; safecall;
    function Get_CommandBars: CommandBars; safecall;
    function Get_StatusBar: CommandBar; safecall;
    function Get_MainMenu: CommandBar; safecall;
    function Get_GMSManager: IVGGMSManager; safecall;
    procedure ImportWorkspace(const FileName: WideString); safecall;
    procedure Refresh; safecall;
    function CreateStructSaveAsOptions: IVGStructSaveAsOptions; safecall;
    function CreateStructExportOptions: IVGStructExportOptions; safecall;
    function CreateStructImportOptions: IVGStructImportOptions; safecall;
    function CreateStructPaletteOptions: IVGStructPaletteOptions; safecall;
    function CreateNodeRange: IVGNodeRange; safecall;
    function CreateSegmentRange: IVGSegmentRange; safecall;
    function CreateShapeRange: IVGShapeRange; safecall;
    function CreatePatternCanvas: IVGPatternCanvas; safecall;
    function CreateCurve(const Document: IVGDocument): IVGCurve; safecall;
    function Get_UserDataPath: WideString; safecall;
    function InitializeVBA: WordBool; safecall;
    function Get_HelpFile: WideString; safecall;
    function Get_FrameWork: FrameWork; safecall;
    function CreateStructFontProperties: IVGStructFontProperties; safecall;
    function CreateStructAlignProperties: IVGStructAlignProperties; safecall;
    function CreateStructSpaceProperties: IVGStructSpaceProperties; safecall;
    function CreateStructHyphenationSettings: IVGStructHyphenationSettings; safecall;
    function Get_Components: IVGComponents; safecall;
    function Get_SymbolLibraries: IVGSymbolLibraries; safecall;
    function AdviseEvents(const EventSink: IDispatch): Integer; safecall;
    procedure UnadviseEvents(Cookie: Integer); safecall;
    function Get_Id: cdrApplicationID; safecall;
    function Get_Name: WideString; safecall;
    function Get_Class_: cdrApplicationClass; safecall;
    function Get_PlatformVersionMajor: Integer; safecall;
    function Get_PlatformVersionMinor: Integer; safecall;
    function CheckPlatformVersion(VersionMajor: Integer; VersionMinor: Integer): Integer; safecall;
    function Get_Status: IVGAppStatus; safecall;
    function ConvertUnits(Value: Double; FromUnit: cdrUnit; ToUnit: cdrUnit): Double; safecall;
    function Get_UILanguage: cdrTextLanguage; safecall;
    function IsUILanguageAvailable(Language: cdrTextLanguage): WordBool; safecall;
    function Get_PageSizes: IVGPageSizes; safecall;
    function Get_Unit_: cdrUnit; safecall;
    procedure Set_Unit_(pVal: cdrUnit); safecall;
    function ConvertToUnicode(const String_: WideString; CodePage: Integer): WideString; safecall;
    function ConvertFromUnicode(const String_: WideString; CodePage: Integer): WideString; safecall;
    function Get_UserWorkspacePath: WideString; safecall;
    function Get_LanguagePath: WideString; safecall;
    function Get_ActiveTreeManager: IVGTreeManager; safecall;
    function Get_ActiveVirtualLayer: IVGLayer; safecall;
    function CreateDuotone: IVGDuotone; safecall;
    function Get_ColorManager: IVGColorManager; safecall;
    function Get_EnhancedOutlines: IVGOutlineStyles; safecall;
    function AddPluginCommand(const CommandID: WideString; const Caption: WideString; 
                              const Tooltip: WideString): WordBool; safecall;
    function RemovePluginCommand(const CommandID: WideString): WordBool; safecall;
    function CreateOutlineStyle(DashDotCount: Integer; var DashDotLengths: PSafeArray): IVGOutlineStyle; safecall;
    function Get_StartupMode: cdrAppStartupMode; safecall;
    procedure Set_StartupMode(pVal: cdrAppStartupMode); safecall;
    function Get_GlobalUserData: IVGProperties; safecall;
    function Get_SessionUserData: IVGProperties; safecall;
    function Evaluate(const Expression: WideString): OleVariant; safecall;
    function CreateRect(x: Double; y: Double; Width: Double; Height: Double): IVGRect; safecall;
    procedure ForceUpdateFontTable; safecall;
    function Get_ActiveSpread: IVGSpread; safecall;
    function OpenDocumentAsCopy(const FileName: WideString; const Options: IVGStructOpenOptions): IVGDocument; safecall;
    function Get_DefaultColorContext: IVGColorContext; safecall;
    function CreateColorContext(const RGBProfile: IVGColorProfile; 
                                const CMYKProfile: IVGColorProfile; 
                                const GrayscaleProfile: IVGColorProfile; 
                                RenderingIntent: clrRenderingIntent; 
                                BlendingColorModel: clrColorModel): IVGColorContext; safecall;
    function CreateColorContext2(const ColorProfileList: WideString; 
                                 RenderingIntent: clrRenderingIntent; 
                                 BlendingColorModel: clrColorModel): IVGColorContext; safecall;
    function CreateDocumentEx(const Options: IVGStructCreateOptions): IVGDocument; safecall;
    function OpenDocumentEx(const FileName: WideString; const Options: IVGStructOpenOptions): IVGDocument; safecall;
    function CreateStructOpenOptions: IVGStructOpenOptions; safecall;
    function CreateStructCreateOptions: IVGStructCreateOptions; safecall;
    function CreateStructPasteOptions: IVGStructPasteOptions; safecall;
    function CreateProofColorSettings(const ProfileName: WideString; 
                                      RenderingIntent: clrRenderingIntent; 
                                      PreserveColorValues: WordBool): IVGProofColorSettings; safecall;
    function Get_PaletteManager: IVGPaletteManager; safecall;
    function CreateSpotColor(const PaletteIdentifier: WideString; SpotColorID: Integer; 
                             Tint: Integer): IVGColor; safecall;
    function CreateSpotColorByName(const PaletteIdentifier: WideString; 
                                   const SpotColorName: WideString; Tint: Integer): IVGColor; safecall;
    function CreatePaletteColor(const PaletteIdentifier: WideString; ColorIndex: Integer): IVGColor; safecall;
    function GetSupportedOpenTypeFeatures: PSafeArray; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Documents: IVGDocuments read Get_Documents;
    property ActiveDocument: IVGDocument read Get_ActiveDocument;
    property ActivePage: IVGPage read Get_ActivePage;
    property ActiveWindow: IVGWindow read Get_ActiveWindow;
    property Windows: IVGWindows read Get_Windows;
    property ActiveWorkspace: IVGWorkspace read Get_ActiveWorkspace;
    property Workspaces: IVGWorkspaces read Get_Workspaces;
    property ActivePalette: IVGPalette read Get_ActivePalette;
    property Palettes: IVGPalettes read Get_Palettes;
    property FontList: IVGFontList read Get_FontList;
    property AppWindow: IVGAppWindow read Get_AppWindow;
    property RecentFiles: IVGRecentFiles read Get_RecentFiles;
    property VBE: IDispatch read Get_VBE;
    property EventsEnabled: WordBool read Get_EventsEnabled write Set_EventsEnabled;
    property ArrowHeads: IVGArrowHeads read Get_ArrowHeads;
    property OutlineStyles: IVGOutlineStyles read Get_OutlineStyles;
    property Version: WideString read Get_Version;
    property VersionMajor: Integer read Get_VersionMajor;
    property VersionMinor: Integer read Get_VersionMinor;
    property VersionBuild: Integer read Get_VersionBuild;
    property Path: WideString read Get_Path;
    property ConfigPath: WideString read Get_ConfigPath;
    property SetupPath: WideString read Get_SetupPath;
    property ActiveLayer: IVGLayer read Get_ActiveLayer;
    property ActiveSelection: IVGShape read Get_ActiveSelection;
    property PatternCanvases: IVGPatternCanvases read Get_PatternCanvases;
    property Clipboard: IVGClipboard read Get_Clipboard;
    property ActiveSelectionRange: IVGShapeRange read Get_ActiveSelectionRange;
    property ActiveTool: cdrTools read Get_ActiveTool write Set_ActiveTool;
    property ActiveShape: IVGShape read Get_ActiveShape;
    property Optimization: WordBool read Get_Optimization write Set_Optimization;
    property PanoseMatching: cdrPanoseMatchingType read Get_PanoseMatching write Set_PanoseMatching;
    property AddIns: IVGAddins read Get_AddIns;
    property Printers: IPrnVBAPrinters read Get_Printers;
    property PrintJob: IPrnVBAPrintJob read Get_PrintJob;
    property CommandBars: CommandBars read Get_CommandBars;
    property StatusBar: CommandBar read Get_StatusBar;
    property MainMenu: CommandBar read Get_MainMenu;
    property GMSManager: IVGGMSManager read Get_GMSManager;
    property UserDataPath: WideString read Get_UserDataPath;
    property HelpFile: WideString read Get_HelpFile;
    property FrameWork: FrameWork read Get_FrameWork;
    property Components: IVGComponents read Get_Components;
    property SymbolLibraries: IVGSymbolLibraries read Get_SymbolLibraries;
    property Id: cdrApplicationID read Get_Id;
    property Name: WideString read Get_Name;
    property Class_: cdrApplicationClass read Get_Class_;
    property PlatformVersionMajor: Integer read Get_PlatformVersionMajor;
    property PlatformVersionMinor: Integer read Get_PlatformVersionMinor;
    property Status: IVGAppStatus read Get_Status;
    property UILanguage: cdrTextLanguage read Get_UILanguage;
    property PageSizes: IVGPageSizes read Get_PageSizes;
    property Unit_: cdrUnit read Get_Unit_ write Set_Unit_;
    property UserWorkspacePath: WideString read Get_UserWorkspacePath;
    property LanguagePath: WideString read Get_LanguagePath;
    property ActiveTreeManager: IVGTreeManager read Get_ActiveTreeManager;
    property ActiveVirtualLayer: IVGLayer read Get_ActiveVirtualLayer;
    property ColorManager: IVGColorManager read Get_ColorManager;
    property EnhancedOutlines: IVGOutlineStyles read Get_EnhancedOutlines;
    property StartupMode: cdrAppStartupMode read Get_StartupMode write Set_StartupMode;
    property GlobalUserData: IVGProperties read Get_GlobalUserData;
    property SessionUserData: IVGProperties read Get_SessionUserData;
    property ActiveSpread: IVGSpread read Get_ActiveSpread;
    property DefaultColorContext: IVGColorContext read Get_DefaultColorContext;
    property PaletteManager: IVGPaletteManager read Get_PaletteManager;
  end;

// *********************************************************************//
// DispIntf:  IVGApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGApplicationDisp = dispinterface
    ['{B058000B-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGApplication readonly dispid 1610743809;
    property Visible: WordBool dispid 1610743810;
    property Documents: IVGDocuments readonly dispid 1610743812;
    property ActiveDocument: IVGDocument readonly dispid 1610743813;
    property ActivePage: IVGPage readonly dispid 1610743814;
    property ActiveWindow: IVGWindow readonly dispid 1610743815;
    property Windows: IVGWindows readonly dispid 1610743816;
    function CorelScriptTools: ICorelScriptTools; dispid 1610743817;
    property ActiveWorkspace: IVGWorkspace readonly dispid 1610743818;
    property Workspaces: IVGWorkspaces readonly dispid 1610743819;
    property ActivePalette: IVGPalette readonly dispid 1610743820;
    property Palettes: IVGPalettes readonly dispid 1610743821;
    procedure Quit; dispid 1610743822;
    function CreateColor(const ColorString: WideString): IVGColor; dispid 1610743823;
    property FontList: IVGFontList readonly dispid 1610743824;
    property AppWindow: IVGAppWindow readonly dispid 1610743825;
    property RecentFiles: IVGRecentFiles readonly dispid 1610743826;
    property VBE: IDispatch readonly dispid 1610743827;
    function cdrMixedDouble: Double; dispid 1610743828;
    function cdrMixedSingle: Single; dispid 1610743829;
    function cdrMixedLong: Integer; dispid 1610743830;
    property EventsEnabled: WordBool dispid 1610743831;
    function OpenDocument(const FileName: WideString; CodePage: Integer): IVGDocument; dispid 1610743833;
    function CreateDocument: IVGDocument; dispid 1610743834;
    function CreateColorEx(ColorModel: Integer; V1: Integer; V2: Integer; V3: Integer; V4: Integer; 
                           V5: Integer; V6: Integer; V7: Integer): IVGColor; dispid 1610743835;
    property ArrowHeads: IVGArrowHeads readonly dispid 1610743836;
    property OutlineStyles: IVGOutlineStyles readonly dispid 1610743837;
    property Version: WideString readonly dispid 1610743838;
    property VersionMajor: Integer readonly dispid 1610743839;
    property VersionMinor: Integer readonly dispid 1610743840;
    property VersionBuild: Integer readonly dispid 1610743841;
    property Path: WideString readonly dispid 1610743842;
    property ConfigPath: WideString readonly dispid 1610743843;
    property SetupPath: WideString readonly dispid 1610743844;
    property ActiveLayer: IVGLayer readonly dispid 1610743845;
    property ActiveSelection: IVGShape readonly dispid 1610743846;
    property PatternCanvases: IVGPatternCanvases readonly dispid 1610743847;
    property Clipboard: IVGClipboard readonly dispid 1610743848;
    property ActiveSelectionRange: IVGShapeRange readonly dispid 1610743849;
    property ActiveTool: cdrTools dispid 1610743850;
    property ActiveShape: IVGShape readonly dispid 1610743852;
    property Optimization: WordBool dispid 1610743853;
    property PanoseMatching: cdrPanoseMatchingType dispid 1610743855;
    property AddIns: IVGAddins readonly dispid 1610743857;
    function CreateRGBColor(Red: Integer; Green: Integer; Blue: Integer): IVGColor; dispid 1610743858;
    function CreateCMYColor(Cyan: Integer; Magenta: Integer; Yellow: Integer): IVGColor; dispid 1610743859;
    function CreateCMYKColor(Cyan: Integer; Magenta: Integer; Yellow: Integer; Black: Integer): IVGColor; dispid 1610743860;
    function CreateGrayColor(GrayValue: Integer): IVGColor; dispid 1610743861;
    function CreateHLSColor(Hue: Integer; Lightness: Integer; Saturation: Integer): IVGColor; dispid 1610743862;
    function CreateHSBColor(Hue: Integer; Saturation: Integer; Brightness: Integer): IVGColor; dispid 1610743863;
    function CreateBWColor(White: WordBool): IVGColor; dispid 1610743864;
    function CreateYIQColor(y: Integer; I: Integer; Q: Integer): IVGColor; dispid 1610743865;
    function CreateLabColor(L: Integer; A: Integer; B: Integer): IVGColor; dispid 1610743866;
    function CreateFixedColor(PaletteID: cdrPaletteID; PaletteIndex: Integer; Tint: Integer): IVGColor; dispid 1610743867;
    function CreateRegistrationColor: IVGColor; dispid 1610743868;
    function CreateSnapPoint(PositionX: Double; PositionY: Double): IVGSnapPoint; dispid 1610743869;
    function CreateDocumentFromTemplate(const Template: WideString; IncludeGraphics: WordBool): IVGDocument; dispid 1610743870;
    property Printers: IPrnVBAPrinters readonly dispid 1610743871;
    property PrintJob: IPrnVBAPrintJob readonly dispid 1610743872;
    property CommandBars: CommandBars readonly dispid 1610743873;
    property StatusBar: CommandBar readonly dispid 1610743874;
    property MainMenu: CommandBar readonly dispid 1610743875;
    property GMSManager: IVGGMSManager readonly dispid 1610743876;
    procedure ImportWorkspace(const FileName: WideString); dispid 1610743877;
    procedure Refresh; dispid 1610743878;
    function CreateStructSaveAsOptions: IVGStructSaveAsOptions; dispid 1610743879;
    function CreateStructExportOptions: IVGStructExportOptions; dispid 1610743880;
    function CreateStructImportOptions: IVGStructImportOptions; dispid 1610743881;
    function CreateStructPaletteOptions: IVGStructPaletteOptions; dispid 1610743882;
    function CreateNodeRange: IVGNodeRange; dispid 1610743883;
    function CreateSegmentRange: IVGSegmentRange; dispid 1610743884;
    function CreateShapeRange: IVGShapeRange; dispid 1610743885;
    function CreatePatternCanvas: IVGPatternCanvas; dispid 1610743886;
    function CreateCurve(const Document: IVGDocument): IVGCurve; dispid 1610743887;
    property UserDataPath: WideString readonly dispid 1610743888;
    function InitializeVBA: WordBool; dispid 1610743889;
    property HelpFile: WideString readonly dispid 1610743890;
    property FrameWork: FrameWork readonly dispid 1610743891;
    function CreateStructFontProperties: IVGStructFontProperties; dispid 1610743892;
    function CreateStructAlignProperties: IVGStructAlignProperties; dispid 1610743893;
    function CreateStructSpaceProperties: IVGStructSpaceProperties; dispid 1610743894;
    function CreateStructHyphenationSettings: IVGStructHyphenationSettings; dispid 1610743895;
    property Components: IVGComponents readonly dispid 1610743896;
    property SymbolLibraries: IVGSymbolLibraries readonly dispid 1610743897;
    function AdviseEvents(const EventSink: IDispatch): Integer; dispid 1610743898;
    procedure UnadviseEvents(Cookie: Integer); dispid 1610743899;
    property Id: cdrApplicationID readonly dispid 1610743900;
    property Name: WideString readonly dispid 0;
    property Class_: cdrApplicationClass readonly dispid 1610743902;
    property PlatformVersionMajor: Integer readonly dispid 1610743903;
    property PlatformVersionMinor: Integer readonly dispid 1610743904;
    function CheckPlatformVersion(VersionMajor: Integer; VersionMinor: Integer): Integer; dispid 1610743905;
    property Status: IVGAppStatus readonly dispid 1610743906;
    function ConvertUnits(Value: Double; FromUnit: cdrUnit; ToUnit: cdrUnit): Double; dispid 1610743907;
    property UILanguage: cdrTextLanguage readonly dispid 1610743908;
    function IsUILanguageAvailable(Language: cdrTextLanguage): WordBool; dispid 1610743909;
    property PageSizes: IVGPageSizes readonly dispid 1610743910;
    property Unit_: cdrUnit dispid 1610743911;
    function ConvertToUnicode(const String_: WideString; CodePage: Integer): WideString; dispid 1610743913;
    function ConvertFromUnicode(const String_: WideString; CodePage: Integer): WideString; dispid 1610743914;
    property UserWorkspacePath: WideString readonly dispid 1610743915;
    property LanguagePath: WideString readonly dispid 1610743916;
    property ActiveTreeManager: IVGTreeManager readonly dispid 1610743917;
    property ActiveVirtualLayer: IVGLayer readonly dispid 1610743918;
    function CreateDuotone: IVGDuotone; dispid 1610743919;
    property ColorManager: IVGColorManager readonly dispid 1610743920;
    property EnhancedOutlines: IVGOutlineStyles readonly dispid 1610743921;
    function AddPluginCommand(const CommandID: WideString; const Caption: WideString; 
                              const Tooltip: WideString): WordBool; dispid 1610743922;
    function RemovePluginCommand(const CommandID: WideString): WordBool; dispid 1610743923;
    function CreateOutlineStyle(DashDotCount: Integer; 
                                var DashDotLengths: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGOutlineStyle; dispid 1610743924;
    property StartupMode: cdrAppStartupMode dispid 1610743925;
    property GlobalUserData: IVGProperties readonly dispid 1610743927;
    property SessionUserData: IVGProperties readonly dispid 1610743928;
    function Evaluate(const Expression: WideString): OleVariant; dispid 1610743929;
    function CreateRect(x: Double; y: Double; Width: Double; Height: Double): IVGRect; dispid 1610743930;
    procedure ForceUpdateFontTable; dispid 1610743931;
    property ActiveSpread: IVGSpread readonly dispid 1610743932;
    function OpenDocumentAsCopy(const FileName: WideString; const Options: IVGStructOpenOptions): IVGDocument; dispid 1610743933;
    property DefaultColorContext: IVGColorContext readonly dispid 1610743934;
    function CreateColorContext(const RGBProfile: IVGColorProfile; 
                                const CMYKProfile: IVGColorProfile; 
                                const GrayscaleProfile: IVGColorProfile; 
                                RenderingIntent: clrRenderingIntent; 
                                BlendingColorModel: clrColorModel): IVGColorContext; dispid 1610743935;
    function CreateColorContext2(const ColorProfileList: WideString; 
                                 RenderingIntent: clrRenderingIntent; 
                                 BlendingColorModel: clrColorModel): IVGColorContext; dispid 1610743936;
    function CreateDocumentEx(const Options: IVGStructCreateOptions): IVGDocument; dispid 1610743937;
    function OpenDocumentEx(const FileName: WideString; const Options: IVGStructOpenOptions): IVGDocument; dispid 1610743938;
    function CreateStructOpenOptions: IVGStructOpenOptions; dispid 1610743939;
    function CreateStructCreateOptions: IVGStructCreateOptions; dispid 1610743940;
    function CreateStructPasteOptions: IVGStructPasteOptions; dispid 1610743941;
    function CreateProofColorSettings(const ProfileName: WideString; 
                                      RenderingIntent: clrRenderingIntent; 
                                      PreserveColorValues: WordBool): IVGProofColorSettings; dispid 1610743942;
    property PaletteManager: IVGPaletteManager readonly dispid 1610743943;
    function CreateSpotColor(const PaletteIdentifier: WideString; SpotColorID: Integer; 
                             Tint: Integer): IVGColor; dispid 1610743944;
    function CreateSpotColorByName(const PaletteIdentifier: WideString; 
                                   const SpotColorName: WideString; Tint: Integer): IVGColor; dispid 1610743945;
    function CreatePaletteColor(const PaletteIdentifier: WideString; ColorIndex: Integer): IVGColor; dispid 1610743946;
    function GetSupportedOpenTypeFeatures: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743947;
  end;

// *********************************************************************//
// Interface: IVGDocuments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580025-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDocuments = interface(IDispatch)
    ['{B0580025-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Item(Index: Integer): IVGDocument; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Item[Index: Integer]: IVGDocument read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGDocumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580025-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDocumentsDisp = dispinterface
    ['{B0580025-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGApplication readonly dispid 1610743809;
    property Item[Index: Integer]: IVGDocument readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGPage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580048-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPage = interface(IDispatch)
    ['{B0580048-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGPages; safecall;
    function Get_Layers: IVGLayers; safecall;
    function Get_Shapes: IVGShapes; safecall;
    function Get_ActiveLayer: IVGLayer; safecall;
    function Get_Paper: WideString; safecall;
    function Get_SizeWidth: Double; safecall;
    procedure Set_SizeWidth(pVal: Double); safecall;
    function Get_SizeHeight: Double; safecall;
    procedure Set_SizeHeight(pVal: Double); safecall;
    function Get_Resolution: Integer; safecall;
    procedure Set_Resolution(pVal: Integer); safecall;
    function Get_Bleed: Double; safecall;
    procedure Set_Bleed(pVal: Double); safecall;
    function Get_Orientation: cdrPageOrientation; safecall;
    procedure Set_Orientation(pVal: cdrPageOrientation); safecall;
    function Get_Index: Integer; safecall;
    procedure Activate; safecall;
    procedure Delete; safecall;
    function CreateLayer(const LayerName: WideString): IVGLayer; safecall;
    function TextFind(const Text: WideString; CaseSensitive: WordBool): IVGShape; safecall;
    procedure TextReplace(const OldText: WideString; const NewText: WideString; 
                          CaseSensitive: WordBool; ReplaceSelectedOnly: WordBool); safecall;
    function SelectShapesAtPoint(x: Double; y: Double; SelectUnfilled: WordBool; HotArea: Double): IVGShape; safecall;
    function SelectShapesFromRectangle(x1: Double; y1: Double; x2: Double; y2: Double; 
                                       Touch: WordBool): IVGShape; safecall;
    function Get_Background: cdrPageBackground; safecall;
    procedure Set_Background(pVal: cdrPageBackground); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const pVal: IVGColor); safecall;
    function Get_PrintExportBackground: WordBool; safecall;
    procedure Set_PrintExportBackground(pVal: WordBool); safecall;
    function Get_Guides(Type_: cdrGuideType): IVGShapeRange; safecall;
    function FindShape(const Name: WideString; Type_: cdrShapeType; StaticID: Integer; 
                       Recursive: WordBool): IVGShape; safecall;
    function FindShapes(const Name: WideString; Type_: cdrShapeType; Recursive: WordBool): IVGShapeRange; safecall;
    procedure MoveTo(Index: Integer); safecall;
    procedure UnlockAllShapes; safecall;
    function Get_Properties: IVGProperties; safecall;
    procedure GetSize(out Width: Double; out Height: Double); safecall;
    procedure SetSize(Width: Double; Height: Double); safecall;
    function Get_CenterX: Double; safecall;
    function Get_CenterY: Double; safecall;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: PSafeArray): OleVariant; safecall;
    function Get_Previous: IVGPage; safecall;
    function Get_Next: IVGPage; safecall;
    function Get_SelectableShapes: IVGShapes; safecall;
    function Get_TreeNode: IVGTreeNode; safecall;
    procedure GetCenterPosition(out CenterX: Double; out CenterY: Double); safecall;
    procedure SelectSize(const PageSizeName: WideString; Landscape: WordBool); safecall;
    function Get_GuidesLayer: IVGLayer; safecall;
    function Get_DesktopLayer: IVGLayer; safecall;
    function Get_GridLayer: IVGLayer; safecall;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double); safecall;
    function Get_LeftX: Double; safecall;
    function Get_RightX: Double; safecall;
    function Get_BottomY: Double; safecall;
    function Get_TopY: Double; safecall;
    function Get_AllLayers: IVGLayers; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    function Get_Spread: IVGSpread; safecall;
    function FindClosestSnapPoint(TypeSet: cdrPointType; PositionX: Double; PositionY: Double; 
                                  HotArea: Double): IVGSnapPoint; safecall;
    function GetObjectsBoundingBox(SelectedOnly: WordBool; IncludeNonPrintable: WordBool): IVGRect; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGPages read Get_Parent;
    property Layers: IVGLayers read Get_Layers;
    property Shapes: IVGShapes read Get_Shapes;
    property ActiveLayer: IVGLayer read Get_ActiveLayer;
    property Paper: WideString read Get_Paper;
    property SizeWidth: Double read Get_SizeWidth write Set_SizeWidth;
    property SizeHeight: Double read Get_SizeHeight write Set_SizeHeight;
    property Resolution: Integer read Get_Resolution write Set_Resolution;
    property Bleed: Double read Get_Bleed write Set_Bleed;
    property Orientation: cdrPageOrientation read Get_Orientation write Set_Orientation;
    property Index: Integer read Get_Index;
    property Background: cdrPageBackground read Get_Background write Set_Background;
    property Color: IVGColor read Get_Color write Set_Color;
    property PrintExportBackground: WordBool read Get_PrintExportBackground write Set_PrintExportBackground;
    property Guides[Type_: cdrGuideType]: IVGShapeRange read Get_Guides;
    property Properties: IVGProperties read Get_Properties;
    property CenterX: Double read Get_CenterX;
    property CenterY: Double read Get_CenterY;
    property Previous: IVGPage read Get_Previous;
    property Next: IVGPage read Get_Next;
    property SelectableShapes: IVGShapes read Get_SelectableShapes;
    property TreeNode: IVGTreeNode read Get_TreeNode;
    property GuidesLayer: IVGLayer read Get_GuidesLayer;
    property DesktopLayer: IVGLayer read Get_DesktopLayer;
    property GridLayer: IVGLayer read Get_GridLayer;
    property LeftX: Double read Get_LeftX;
    property RightX: Double read Get_RightX;
    property BottomY: Double read Get_BottomY;
    property TopY: Double read Get_TopY;
    property AllLayers: IVGLayers read Get_AllLayers;
    property BoundingBox: IVGRect read Get_BoundingBox;
    property Spread: IVGSpread read Get_Spread;
  end;

// *********************************************************************//
// DispIntf:  IVGPageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580048-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPageDisp = dispinterface
    ['{B0580048-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString dispid 1610743808;
    property Application: IVGApplication readonly dispid 1610743810;
    property Parent: IVGPages readonly dispid 1610743811;
    property Layers: IVGLayers readonly dispid 1610743812;
    property Shapes: IVGShapes readonly dispid 1610743813;
    property ActiveLayer: IVGLayer readonly dispid 1610743814;
    property Paper: WideString readonly dispid 1610743815;
    property SizeWidth: Double dispid 1610743816;
    property SizeHeight: Double dispid 1610743818;
    property Resolution: Integer dispid 1610743820;
    property Bleed: Double dispid 1610743822;
    property Orientation: cdrPageOrientation dispid 1610743824;
    property Index: Integer readonly dispid 1610743826;
    procedure Activate; dispid 1610743827;
    procedure Delete; dispid 1610743828;
    function CreateLayer(const LayerName: WideString): IVGLayer; dispid 1610743829;
    function TextFind(const Text: WideString; CaseSensitive: WordBool): IVGShape; dispid 1610743830;
    procedure TextReplace(const OldText: WideString; const NewText: WideString; 
                          CaseSensitive: WordBool; ReplaceSelectedOnly: WordBool); dispid 1610743831;
    function SelectShapesAtPoint(x: Double; y: Double; SelectUnfilled: WordBool; HotArea: Double): IVGShape; dispid 1610743832;
    function SelectShapesFromRectangle(x1: Double; y1: Double; x2: Double; y2: Double; 
                                       Touch: WordBool): IVGShape; dispid 1610743833;
    property Background: cdrPageBackground dispid 1610743834;
    property Color: IVGColor dispid 1610743836;
    property PrintExportBackground: WordBool dispid 1610743838;
    property Guides[Type_: cdrGuideType]: IVGShapeRange readonly dispid 1610743840;
    function FindShape(const Name: WideString; Type_: cdrShapeType; StaticID: Integer; 
                       Recursive: WordBool): IVGShape; dispid 1610743841;
    function FindShapes(const Name: WideString; Type_: cdrShapeType; Recursive: WordBool): IVGShapeRange; dispid 1610743842;
    procedure MoveTo(Index: Integer); dispid 1610743843;
    procedure UnlockAllShapes; dispid 1610743844;
    property Properties: IVGProperties readonly dispid 1610743845;
    procedure GetSize(out Width: Double; out Height: Double); dispid 1610743846;
    procedure SetSize(Width: Double; Height: Double); dispid 1610743847;
    property CenterX: Double readonly dispid 1610743848;
    property CenterY: Double readonly dispid 1610743849;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): OleVariant; dispid 1610743850;
    property Previous: IVGPage readonly dispid 1610743851;
    property Next: IVGPage readonly dispid 1610743852;
    property SelectableShapes: IVGShapes readonly dispid 1610743853;
    property TreeNode: IVGTreeNode readonly dispid 1610743854;
    procedure GetCenterPosition(out CenterX: Double; out CenterY: Double); dispid 1610743855;
    procedure SelectSize(const PageSizeName: WideString; Landscape: WordBool); dispid 1610743856;
    property GuidesLayer: IVGLayer readonly dispid 1610743857;
    property DesktopLayer: IVGLayer readonly dispid 1610743858;
    property GridLayer: IVGLayer readonly dispid 1610743859;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double); dispid 1610743860;
    property LeftX: Double readonly dispid 1610743861;
    property RightX: Double readonly dispid 1610743862;
    property BottomY: Double readonly dispid 1610743863;
    property TopY: Double readonly dispid 1610743864;
    property AllLayers: IVGLayers readonly dispid 1610743865;
    property BoundingBox: IVGRect readonly dispid 1610743866;
    property Spread: IVGSpread readonly dispid 1610743867;
    function FindClosestSnapPoint(TypeSet: cdrPointType; PositionX: Double; PositionY: Double; 
                                  HotArea: Double): IVGSnapPoint; dispid 1610743868;
    function GetObjectsBoundingBox(SelectedOnly: WordBool; IncludeNonPrintable: WordBool): IVGRect; dispid 1610743869;
  end;

// *********************************************************************//
// Interface: IVGPages
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580049-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPages = interface(IDispatch)
    ['{B0580049-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocument; safecall;
    function Get_Item(Index: Integer): IVGPage; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_First: IVGPage; safecall;
    function Get_Last: IVGPage; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocument read Get_Parent;
    property Item[Index: Integer]: IVGPage read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property First: IVGPage read Get_First;
    property Last: IVGPage read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGPagesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580049-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPagesDisp = dispinterface
    ['{B0580049-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocument readonly dispid 1610743809;
    property Item[Index: Integer]: IVGPage readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    property First: IVGPage readonly dispid 1610743813;
    property Last: IVGPage readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGLayers
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580041-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGLayers = interface(IDispatch)
    ['{B0580041-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGPage; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGLayer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Find(const LayerName: WideString): IVGLayer; safecall;
    function Get_Top: IVGLayer; safecall;
    function Get_Bottom: IVGLayer; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGPage read Get_Parent;
    property Item[IndexOrName: OleVariant]: IVGLayer read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Top: IVGLayer read Get_Top;
    property Bottom: IVGLayer read Get_Bottom;
  end;

// *********************************************************************//
// DispIntf:  IVGLayersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580041-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGLayersDisp = dispinterface
    ['{B0580041-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGPage readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGLayer readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function Find(const LayerName: WideString): IVGLayer; dispid 1610743813;
    property Top: IVGLayer readonly dispid 1610743814;
    property Bottom: IVGLayer readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IVGLayer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580040-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGLayer = interface(IDispatch)
    ['{B0580040-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGLayers; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Shapes: IVGShapes; safecall;
    procedure Activate; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function Get_Printable: WordBool; safecall;
    procedure Set_Printable(pVal: WordBool); safecall;
    function Get_Editable: WordBool; safecall;
    procedure Set_Editable(pVal: WordBool); safecall;
    function Get_Master: WordBool; safecall;
    procedure Set_Master(pVal: WordBool); safecall;
    function Get_OverrideColor: WordBool; safecall;
    procedure Set_OverrideColor(pVal: WordBool); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const pVal: IVGColor); safecall;
    procedure Delete; safecall;
    procedure MoveAbove(const Layer: IVGLayer); safecall;
    procedure MoveBelow(const Layer: IVGLayer); safecall;
    procedure Import(const FileName: WideString; Filter: cdrFilter; 
                     const Options: IVGStructImportOptions); safecall;
    function CreateRectangle(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                             CornerUL: Integer; CornerUR: Integer; CornerLR: Integer; 
                             CornerLL: Integer): IVGShape; safecall;
    function CreateEllipse(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                           StartAngle: Double; EndAngle: Double; Pie: WordBool): IVGShape; safecall;
    function CreatePolygon(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                           Sides: Integer; SubPaths: Integer; Complexity: Integer; Star: WordBool; 
                           StarComplexity: Integer; MaxComplexity: Integer): IVGShape; safecall;
    function CreateGridBoxes(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                             Wide: Integer; High: Integer): IVGShape; safecall;
    function CreateSpiral(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                          NumRevolutions: Integer; SpiralType: cdrSpiralType; GrowthRate: Integer): IVGShape; safecall;
    function CreateArtisticText(Left: Double; Bottom: Double; const Text: WideString; 
                                LanguageID: cdrTextLanguage; CharSet: cdrTextCharSet; 
                                const Font: WideString; Size: Single; Bold: cdrTriState; 
                                Italic: cdrTriState; Underline: cdrFontLine; Alignment: cdrAlignment): IVGShape; safecall;
    function CreateParagraphText(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                                 const Text: WideString; LanguageID: cdrTextLanguage; 
                                 CharSet: cdrTextCharSet; const Font: WideString; Size: Single; 
                                 Bold: cdrTriState; Italic: cdrTriState; Underline: cdrFontLine; 
                                 Alignment: cdrAlignment): IVGShape; safecall;
    function CreateCurveSegment(StartX: Double; StartY: Double; EndX: Double; EndY: Double; 
                                StartingControlPointLength: Double; 
                                StartingControlPointAngle: Double; 
                                EndingControlPointLength: Double; EndingControlPointAngle: Double): IVGShape; safecall;
    function CreateLineSegment(StartX: Double; StartY: Double; EndX: Double; EndY: Double): IVGShape; safecall;
    function CreateConnector(const Start: IVGSnapPoint; const End_: IVGSnapPoint): IVGShape; safecall;
    function CreateCurve(const Source: IVGCurve): IVGShape; safecall;
    function Paste: IVGShape; safecall;
    function CreateGuideAngle(x: Double; y: Double; Angle: Double): IVGShape; safecall;
    function CreateGuide(x1: Double; y1: Double; x2: Double; y2: Double): IVGShape; safecall;
    function CreateEllipse2(CenterX: Double; CenterY: Double; Radius1: Double; Radius2: Double; 
                            StartAngle: Double; EndAngle: Double; Pie: WordBool): IVGShape; safecall;
    function FindShape(const Name: WideString; Type_: cdrShapeType; StaticID: Integer; 
                       Recursive: WordBool): IVGShape; safecall;
    function FindShapes(const Name: WideString; Type_: cdrShapeType; Recursive: WordBool): IVGShapeRange; safecall;
    function CreateRectangle2(x: Double; y: Double; Width: Double; Height: Double; 
                              RadiusUL: Double; RadiusUR: Double; RadiusLR: Double; RadiusLL: Double): IVGShape; safecall;
    function CreateFreeConnector(x1: Double; y1: Double; x2: Double; y2: Double): IVGShape; safecall;
    function Get_Properties: IVGProperties; safecall;
    function Get_MasterProperties: IVGProperties; safecall;
    function Get_Index: Integer; safecall;
    function CreateCurveSegment2(x1: Double; y1: Double; StartingControlPointX: Double; 
                                 StartingControlPointY: Double; EndingControlPointX: Double; 
                                 EndingControlPointY: Double; x2: Double; y2: Double): IVGShape; safecall;
    function ImportEx(const FileName: WideString; Filter: cdrFilter; 
                      const Options: IVGStructImportOptions): ICorelImportFilter; safecall;
    function CreateArtisticTextWide(Left: Double; Bottom: Double; const Text: WideString; 
                                    LanguageID: cdrTextLanguage; CharSet: cdrTextCharSet; 
                                    const Font: WideString; Size: Single; Bold: cdrTriState; 
                                    Italic: cdrTriState; Underline: cdrFontLine; 
                                    Alignment: cdrAlignment): IVGShape; safecall;
    function CreateParagraphTextWide(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                                     const Text: WideString; LanguageID: cdrTextLanguage; 
                                     CharSet: cdrTextCharSet; const Font: WideString; Size: Single; 
                                     Bold: cdrTriState; Italic: cdrTriState; 
                                     Underline: cdrFontLine; Alignment: cdrAlignment): IVGShape; safecall;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: PSafeArray): OleVariant; safecall;
    function CreateCustomShape(const TypeID: WideString; var Parameters: PSafeArray): IVGShape; safecall;
    function CreateLinearDimension(Type_: cdrLinearDimensionType; const Point1: IVGSnapPoint; 
                                   const Point2: IVGSnapPoint; TextCentered: WordBool; 
                                   TextX: Double; TextY: Double; Style: cdrDimensionStyle; 
                                   Precision: Integer; ShowUnits: WordBool; 
                                   Units: cdrDimensionLinearUnits; 
                                   Placement: cdrDimensionPlacement; HorizontalText: WordBool; 
                                   BoxedText: WordBool; LeadingZero: WordBool; 
                                   const Prefix: WideString; const Suffix: WideString; 
                                   OutlineWidth: Double; const Arrows: IVGArrowHead; 
                                   const OutlineColor: IVGColor; const TextFont: WideString; 
                                   TextSize: Double; const TextColor: IVGColor): IVGShape; safecall;
    function CreateAngularDimension(const Center: IVGSnapPoint; const Point1: IVGSnapPoint; 
                                    const Point2: IVGSnapPoint; TextX: Double; TextY: Double; 
                                    Precision: Integer; ShowUnits: WordBool; 
                                    Units: cdrDimensionAngularUnits; BoxedText: WordBool; 
                                    LeadingZero: WordBool; const Prefix: WideString; 
                                    const Suffix: WideString; OutlineWidth: Double; 
                                    const Arrows: IVGArrowHead; const OutlineColor: IVGColor; 
                                    const TextFont: WideString; TextSize: Double; 
                                    const TextColor: IVGColor): IVGShape; safecall;
    function CreateSymbol(x: Double; y: Double; const SymbolName: WideString; 
                          const Library_: IVGSymbolLibrary): IVGShape; safecall;
    function CreatePolygon2(CenterX: Double; CenterY: Double; Radius: Double; Sides: Integer; 
                            Angle: Double; InnerRadius: Double; Star: WordBool; Sharpness: Integer): IVGShape; safecall;
    function PasteSpecial(const FormatName: WideString; PasteLink: WordBool; 
                          DisplayAsIcon: WordBool; const Caption: WideString; Icon: OleVariant): WordBool; safecall;
    function CreateOLEObject(const ObjectID: WideString; DisplayAsIcon: WordBool; 
                             const Caption: WideString; Icon: OleVariant): IVGShape; safecall;
    function CreateOLEObjectFromFile(const FileName: WideString; Link: WordBool; 
                                     DisplayAsIcon: WordBool; const Caption: WideString; 
                                     Icon: OleVariant): IVGShape; safecall;
    function Get_SelectableShapes: IVGShapes; safecall;
    function Get_TreeNode: IVGTreeNode; safecall;
    function Get_IsGuidesLayer: WordBool; safecall;
    function Get_IsDesktopLayer: WordBool; safecall;
    function Get_IsGridLayer: WordBool; safecall;
    function Get_IsSpecialLayer: WordBool; safecall;
    function Get_MasterLayer: IVGLayer; safecall;
    function Get_AbsoluteIndex: Integer; safecall;
    function Get_Page: IVGPage; safecall;
    function Get_Above(IgnoreMasters: WordBool): IVGLayer; safecall;
    function Get_Below(IgnoreMasters: WordBool): IVGLayer; safecall;
    function CreateRectangleRect(const Rect: IVGRect; RadiusUL: Double; RadiusUR: Double; 
                                 RadiusLR: Double; RadiusLL: Double): IVGShape; safecall;
    function CreateEllipseRect(const Rect: IVGRect; StartAngle: Double; EndAngle: Double; 
                               Pie: WordBool): IVGShape; safecall;
    function CreateConnectorEx(Type_: cdrConnectorType; const Start: IVGSnapPoint; 
                               const End_: IVGSnapPoint): IVGShape; safecall;
    function CreateRightAngleConnector(const Start: IVGSnapPoint; const End_: IVGSnapPoint; 
                                       CornerRadius: Double): IVGShape; safecall;
    function CreateBSpline(const Source: IVGBSpline): IVGShape; safecall;
    function PasteEx(const Options: IVGStructPasteOptions): IVGShapeRange; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGLayers read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property Shapes: IVGShapes read Get_Shapes;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Printable: WordBool read Get_Printable write Set_Printable;
    property Editable: WordBool read Get_Editable write Set_Editable;
    property Master: WordBool read Get_Master write Set_Master;
    property OverrideColor: WordBool read Get_OverrideColor write Set_OverrideColor;
    property Color: IVGColor read Get_Color write Set_Color;
    property Properties: IVGProperties read Get_Properties;
    property MasterProperties: IVGProperties read Get_MasterProperties;
    property Index: Integer read Get_Index;
    property SelectableShapes: IVGShapes read Get_SelectableShapes;
    property TreeNode: IVGTreeNode read Get_TreeNode;
    property IsGuidesLayer: WordBool read Get_IsGuidesLayer;
    property IsDesktopLayer: WordBool read Get_IsDesktopLayer;
    property IsGridLayer: WordBool read Get_IsGridLayer;
    property IsSpecialLayer: WordBool read Get_IsSpecialLayer;
    property MasterLayer: IVGLayer read Get_MasterLayer;
    property AbsoluteIndex: Integer read Get_AbsoluteIndex;
    property Page: IVGPage read Get_Page;
    property Above[IgnoreMasters: WordBool]: IVGLayer read Get_Above;
    property Below[IgnoreMasters: WordBool]: IVGLayer read Get_Below;
  end;

// *********************************************************************//
// DispIntf:  IVGLayerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580040-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGLayerDisp = dispinterface
    ['{B0580040-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGLayers readonly dispid 1610743809;
    property Name: WideString dispid 1610743810;
    property Shapes: IVGShapes readonly dispid 1610743812;
    procedure Activate; dispid 1610743813;
    property Visible: WordBool dispid 1610743814;
    property Printable: WordBool dispid 1610743816;
    property Editable: WordBool dispid 1610743818;
    property Master: WordBool dispid 1610743820;
    property OverrideColor: WordBool dispid 1610743822;
    property Color: IVGColor dispid 1610743824;
    procedure Delete; dispid 1610743826;
    procedure MoveAbove(const Layer: IVGLayer); dispid 1610743827;
    procedure MoveBelow(const Layer: IVGLayer); dispid 1610743828;
    procedure Import(const FileName: WideString; Filter: cdrFilter; 
                     const Options: IVGStructImportOptions); dispid 1610743829;
    function CreateRectangle(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                             CornerUL: Integer; CornerUR: Integer; CornerLR: Integer; 
                             CornerLL: Integer): IVGShape; dispid 1610743830;
    function CreateEllipse(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                           StartAngle: Double; EndAngle: Double; Pie: WordBool): IVGShape; dispid 1610743831;
    function CreatePolygon(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                           Sides: Integer; SubPaths: Integer; Complexity: Integer; Star: WordBool; 
                           StarComplexity: Integer; MaxComplexity: Integer): IVGShape; dispid 1610743832;
    function CreateGridBoxes(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                             Wide: Integer; High: Integer): IVGShape; dispid 1610743833;
    function CreateSpiral(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                          NumRevolutions: Integer; SpiralType: cdrSpiralType; GrowthRate: Integer): IVGShape; dispid 1610743834;
    function CreateArtisticText(Left: Double; Bottom: Double; const Text: WideString; 
                                LanguageID: cdrTextLanguage; CharSet: cdrTextCharSet; 
                                const Font: WideString; Size: Single; Bold: cdrTriState; 
                                Italic: cdrTriState; Underline: cdrFontLine; Alignment: cdrAlignment): IVGShape; dispid 1610743835;
    function CreateParagraphText(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                                 const Text: WideString; LanguageID: cdrTextLanguage; 
                                 CharSet: cdrTextCharSet; const Font: WideString; Size: Single; 
                                 Bold: cdrTriState; Italic: cdrTriState; Underline: cdrFontLine; 
                                 Alignment: cdrAlignment): IVGShape; dispid 1610743836;
    function CreateCurveSegment(StartX: Double; StartY: Double; EndX: Double; EndY: Double; 
                                StartingControlPointLength: Double; 
                                StartingControlPointAngle: Double; 
                                EndingControlPointLength: Double; EndingControlPointAngle: Double): IVGShape; dispid 1610743837;
    function CreateLineSegment(StartX: Double; StartY: Double; EndX: Double; EndY: Double): IVGShape; dispid 1610743838;
    function CreateConnector(const Start: IVGSnapPoint; const End_: IVGSnapPoint): IVGShape; dispid 1610743839;
    function CreateCurve(const Source: IVGCurve): IVGShape; dispid 1610743840;
    function Paste: IVGShape; dispid 1610743841;
    function CreateGuideAngle(x: Double; y: Double; Angle: Double): IVGShape; dispid 1610743842;
    function CreateGuide(x1: Double; y1: Double; x2: Double; y2: Double): IVGShape; dispid 1610743843;
    function CreateEllipse2(CenterX: Double; CenterY: Double; Radius1: Double; Radius2: Double; 
                            StartAngle: Double; EndAngle: Double; Pie: WordBool): IVGShape; dispid 1610743844;
    function FindShape(const Name: WideString; Type_: cdrShapeType; StaticID: Integer; 
                       Recursive: WordBool): IVGShape; dispid 1610743845;
    function FindShapes(const Name: WideString; Type_: cdrShapeType; Recursive: WordBool): IVGShapeRange; dispid 1610743846;
    function CreateRectangle2(x: Double; y: Double; Width: Double; Height: Double; 
                              RadiusUL: Double; RadiusUR: Double; RadiusLR: Double; RadiusLL: Double): IVGShape; dispid 1610743847;
    function CreateFreeConnector(x1: Double; y1: Double; x2: Double; y2: Double): IVGShape; dispid 1610743848;
    property Properties: IVGProperties readonly dispid 1610743849;
    property MasterProperties: IVGProperties readonly dispid 1610743850;
    property Index: Integer readonly dispid 1610743851;
    function CreateCurveSegment2(x1: Double; y1: Double; StartingControlPointX: Double; 
                                 StartingControlPointY: Double; EndingControlPointX: Double; 
                                 EndingControlPointY: Double; x2: Double; y2: Double): IVGShape; dispid 1610743852;
    function ImportEx(const FileName: WideString; Filter: cdrFilter; 
                      const Options: IVGStructImportOptions): ICorelImportFilter; dispid 1610743853;
    function CreateArtisticTextWide(Left: Double; Bottom: Double; const Text: WideString; 
                                    LanguageID: cdrTextLanguage; CharSet: cdrTextCharSet; 
                                    const Font: WideString; Size: Single; Bold: cdrTriState; 
                                    Italic: cdrTriState; Underline: cdrFontLine; 
                                    Alignment: cdrAlignment): IVGShape; dispid 1610743854;
    function CreateParagraphTextWide(Left: Double; Top: Double; Right: Double; Bottom: Double; 
                                     const Text: WideString; LanguageID: cdrTextLanguage; 
                                     CharSet: cdrTextCharSet; const Font: WideString; Size: Single; 
                                     Bold: cdrTriState; Italic: cdrTriState; 
                                     Underline: cdrFontLine; Alignment: cdrAlignment): IVGShape; dispid 1610743855;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): OleVariant; dispid 1610743856;
    function CreateCustomShape(const TypeID: WideString; 
                               var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShape; dispid 1610743857;
    function CreateLinearDimension(Type_: cdrLinearDimensionType; const Point1: IVGSnapPoint; 
                                   const Point2: IVGSnapPoint; TextCentered: WordBool; 
                                   TextX: Double; TextY: Double; Style: cdrDimensionStyle; 
                                   Precision: Integer; ShowUnits: WordBool; 
                                   Units: cdrDimensionLinearUnits; 
                                   Placement: cdrDimensionPlacement; HorizontalText: WordBool; 
                                   BoxedText: WordBool; LeadingZero: WordBool; 
                                   const Prefix: WideString; const Suffix: WideString; 
                                   OutlineWidth: Double; const Arrows: IVGArrowHead; 
                                   const OutlineColor: IVGColor; const TextFont: WideString; 
                                   TextSize: Double; const TextColor: IVGColor): IVGShape; dispid 1610743858;
    function CreateAngularDimension(const Center: IVGSnapPoint; const Point1: IVGSnapPoint; 
                                    const Point2: IVGSnapPoint; TextX: Double; TextY: Double; 
                                    Precision: Integer; ShowUnits: WordBool; 
                                    Units: cdrDimensionAngularUnits; BoxedText: WordBool; 
                                    LeadingZero: WordBool; const Prefix: WideString; 
                                    const Suffix: WideString; OutlineWidth: Double; 
                                    const Arrows: IVGArrowHead; const OutlineColor: IVGColor; 
                                    const TextFont: WideString; TextSize: Double; 
                                    const TextColor: IVGColor): IVGShape; dispid 1610743859;
    function CreateSymbol(x: Double; y: Double; const SymbolName: WideString; 
                          const Library_: IVGSymbolLibrary): IVGShape; dispid 1610743860;
    function CreatePolygon2(CenterX: Double; CenterY: Double; Radius: Double; Sides: Integer; 
                            Angle: Double; InnerRadius: Double; Star: WordBool; Sharpness: Integer): IVGShape; dispid 1610743861;
    function PasteSpecial(const FormatName: WideString; PasteLink: WordBool; 
                          DisplayAsIcon: WordBool; const Caption: WideString; Icon: OleVariant): WordBool; dispid 1610743862;
    function CreateOLEObject(const ObjectID: WideString; DisplayAsIcon: WordBool; 
                             const Caption: WideString; Icon: OleVariant): IVGShape; dispid 1610743863;
    function CreateOLEObjectFromFile(const FileName: WideString; Link: WordBool; 
                                     DisplayAsIcon: WordBool; const Caption: WideString; 
                                     Icon: OleVariant): IVGShape; dispid 1610743864;
    property SelectableShapes: IVGShapes readonly dispid 1610743865;
    property TreeNode: IVGTreeNode readonly dispid 1610743866;
    property IsGuidesLayer: WordBool readonly dispid 1610743867;
    property IsDesktopLayer: WordBool readonly dispid 1610743868;
    property IsGridLayer: WordBool readonly dispid 1610743869;
    property IsSpecialLayer: WordBool readonly dispid 1610743870;
    property MasterLayer: IVGLayer readonly dispid 1610743871;
    property AbsoluteIndex: Integer readonly dispid 1610743872;
    property Page: IVGPage readonly dispid 1610743873;
    property Above[IgnoreMasters: WordBool]: IVGLayer readonly dispid 1610743874;
    property Below[IgnoreMasters: WordBool]: IVGLayer readonly dispid 1610743875;
    function CreateRectangleRect(const Rect: IVGRect; RadiusUL: Double; RadiusUR: Double; 
                                 RadiusLR: Double; RadiusLL: Double): IVGShape; dispid 1610743876;
    function CreateEllipseRect(const Rect: IVGRect; StartAngle: Double; EndAngle: Double; 
                               Pie: WordBool): IVGShape; dispid 1610743877;
    function CreateConnectorEx(Type_: cdrConnectorType; const Start: IVGSnapPoint; 
                               const End_: IVGSnapPoint): IVGShape; dispid 1610743878;
    function CreateRightAngleConnector(const Start: IVGSnapPoint; const End_: IVGSnapPoint; 
                                       CornerRadius: Double): IVGShape; dispid 1610743879;
    function CreateBSpline(const Source: IVGBSpline): IVGShape; dispid 1610743880;
    function PasteEx(const Options: IVGStructPasteOptions): IVGShapeRange; dispid 1610743881;
  end;

// *********************************************************************//
// Interface: IVGShapes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGShapes = interface(IDispatch)
    ['{B058005F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGShape; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Range(var IndexArray: PSafeArray): IVGShapeRange; safecall;
    function All: IVGShapeRange; safecall;
    function AllExcluding(var IndexArray: PSafeArray): IVGShapeRange; safecall;
    function FindShape(const Name: WideString; Type_: cdrShapeType; StaticID: Integer; 
                       Recursive: WordBool; const Query: WideString): IVGShape; safecall;
    function FindShapes(const Name: WideString; Type_: cdrShapeType; Recursive: WordBool; 
                        const Query: WideString): IVGShapeRange; safecall;
    function Get_First: IVGShape; safecall;
    function Get_Last: IVGShape; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Item[IndexOrName: OleVariant]: IVGShape read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property First: IVGShape read Get_First;
    property Last: IVGShape read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGShapesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGShapesDisp = dispinterface
    ['{B058005F-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGShape readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function Range(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShapeRange; dispid 1610743813;
    function All: IVGShapeRange; dispid 1610743814;
    function AllExcluding(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShapeRange; dispid 1610743815;
    function FindShape(const Name: WideString; Type_: cdrShapeType; StaticID: Integer; 
                       Recursive: WordBool; const Query: WideString): IVGShape; dispid 1610743816;
    function FindShapes(const Name: WideString; Type_: cdrShapeType; Recursive: WordBool; 
                        const Query: WideString): IVGShapeRange; dispid 1610743817;
    property First: IVGShape readonly dispid 1610743818;
    property Last: IVGShape readonly dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IVGShape
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGShape = interface(IDispatch)
    ['{B058005D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_StaticID: Integer; safecall;
    procedure ConvertToCurves; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Shapes: IVGShapes; safecall;
    function Get_Rectangle: IVGRectangle; safecall;
    function Get_PositionX: Double; safecall;
    procedure Set_PositionX(pVal: Double); safecall;
    function Get_PositionY: Double; safecall;
    procedure Set_PositionY(pVal: Double); safecall;
    function Get_SizeWidth: Double; safecall;
    procedure Set_SizeWidth(pVal: Double); safecall;
    function Get_SizeHeight: Double; safecall;
    procedure Set_SizeHeight(pVal: Double); safecall;
    function Get_Ellipse: IVGEllipse; safecall;
    function Get_Polygon: IVGPolygon; safecall;
    function Get_Curve: IVGCurve; safecall;
    function Get_Bitmap: IVGBitmap; safecall;
    function Get_type_: cdrShapeType; safecall;
    function Get_Outline: IVGOutline; safecall;
    function Get_Fill: IVGFill; safecall;
    function Get_Text: IVGText; safecall;
    procedure Delete; safecall;
    function Duplicate(OffsetX: Double; OffsetY: Double): IVGShape; safecall;
    procedure Skew(AngleX: Double; AngleY: Double); safecall;
    procedure Move(DeltaX: Double; DeltaY: Double); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_RotationAngle(pVal: Double); safecall;
    function Get_RotationCenterX: Double; safecall;
    procedure Set_RotationCenterX(pVal: Double); safecall;
    function Get_RotationCenterY: Double; safecall;
    procedure Set_RotationCenterY(pVal: Double); safecall;
    procedure Rotate(Angle: Double); safecall;
    function ConvertToBitmap(BitDepth: Integer; Grayscale: WordBool; Dithered: WordBool; 
                             TransparentBG: WordBool; Resolution: Integer; 
                             AntiAliasing: cdrAntiAliasingType; UseColorProfile: WordBool; 
                             MultiChannel: WordBool; AlwaysOverprintBlack: WordBool; 
                             OverprintBlackLimit: Integer): IVGShape; safecall;
    function Group: IVGShape; safecall;
    procedure Ungroup; safecall;
    procedure UngroupAll; safecall;
    procedure OrderToFront; safecall;
    procedure OrderToBack; safecall;
    procedure OrderForwardOne; safecall;
    procedure OrderBackOne; safecall;
    procedure OrderFrontOf(const Shape: IVGShape); safecall;
    procedure OrderBackOf(const Shape: IVGShape); safecall;
    function OrderIsInFrontOf(const Shape: IVGShape): WordBool; safecall;
    procedure AddToSelection; safecall;
    procedure RemoveFromSelection; safecall;
    procedure Separate; safecall;
    function Get_Layer: IVGLayer; safecall;
    procedure Set_Layer(const ppVal: IVGLayer); safecall;
    function Get_SnapPoints: IVGSnapPoints; safecall;
    function Get_Connector: IVGConnector; safecall;
    function IsOnShape(x: Double; y: Double; HotArea: Double): cdrPositionOfPointOverShape; safecall;
    function CreateArrowHead: IVGArrowHead; safecall;
    procedure Copy; safecall;
    procedure Cut; safecall;
    function Clone(OffsetX: Double; OffsetY: Double): IVGShape; safecall;
    procedure Stretch(StretchX: Double; StretchY: Double; StretchCharactersSize: WordBool); safecall;
    procedure SetPosition(PositionX: Double; PositionY: Double); safecall;
    procedure SetSize(Width: Double; Height: Double); safecall;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure GetSize(out Width: Double; out Height: Double); safecall;
    function Get_Properties: IVGProperties; safecall;
    procedure OrderReverse; safecall;
    function Combine: IVGShape; safecall;
    procedure BreakApart; safecall;
    procedure Set_Fill(const ppVal: IVGFill); safecall;
    function Weld(const TargetShape: IVGShape; LeaveSource: WordBool; LeaveTarget: WordBool): IVGShape; safecall;
    function Trim(const TargetShape: IVGShape; LeaveSource: WordBool; LeaveTarget: WordBool): IVGShape; safecall;
    function Intersect(const TargetShape: IVGShape; LeaveSource: WordBool; LeaveTarget: WordBool): IVGShape; safecall;
    function Get_Effects: IVGEffects; safecall;
    function Get_Effect: IVGEffect; safecall;
    function CreateDropShadow(Type_: cdrDropShadowType; Opacity: Integer; Feather: Integer; 
                              OffsetX: Double; OffsetY: Double; const Color: IVGColor; 
                              FeatherType: cdrFeatherType; FeatherEdge: cdrEdgeType; 
                              PerspectiveAngle: Double; PerspectiveStretch: Double; Fade: Integer; 
                              MergeMode: cdrMergeMode): IVGEffect; safecall;
    function CreateBlend(const Shape: IVGShape; Steps: SYSINT; 
                         ColorBlendType: cdrFountainFillBlendType; Mode: cdrBlendMode; 
                         Spacing: Double; Angle: Double; Loop: WordBool; const Path: IVGShape; 
                         RotateShapes: WordBool; SpacingAccel: Integer; ColorAccel: Integer; 
                         AccelSize: WordBool): IVGEffect; safecall;
    function CreateExtrude(Type_: cdrExtrudeType; VPType: cdrExtrudeVPType; VPX: Double; 
                           VPY: Double; Depth: Double; Shading: cdrExtrudeShading; 
                           const BaseColor: IVGColor; const ShadingColor: IVGColor; 
                           BevelDepth: Double; BevelAngle: Double; const BevelColor: IVGColor; 
                           BevelOnly: WordBool): IVGEffect; safecall;
    function CreateEnvelope(PresetIndex: Integer; Mode: cdrEnvelopeMode; KeepLines: WordBool): IVGEffect; safecall;
    procedure Flip(Axes: cdrFlipAxes); safecall;
    function Get_Locked: WordBool; safecall;
    procedure Set_Locked(pVal: WordBool); safecall;
    function Get_OriginalWidth: Double; safecall;
    function Get_OriginalHeight: Double; safecall;
    function Get_Selected: WordBool; safecall;
    procedure Set_Selected(pVal: WordBool); safecall;
    function CreateLens(Type_: cdrLensType; RateOrMagnification: Double; const Color1: IVGColor; 
                        const Color2: IVGColor; ColorMapPalette: cdrFountainFillBlendType): IVGEffect; safecall;
    function CreatePerspective(HorizVanishPointX: OleVariant; HorizVanishPointY: OleVariant; 
                               VertVanishPointX: OleVariant; VertVanishPointY: OleVariant): IVGEffect; safecall;
    function CreateContour(Direction: cdrContourDirection; Offset: Double; Steps: Integer; 
                           BlendType: cdrFountainFillBlendType; const OutlineColor: IVGColor; 
                           const FillColor: IVGColor; const FillColor2: IVGColor; 
                           SpacingAccel: Integer; ColorAccel: Integer; 
                           EndCapType: cdrContourEndCapType; CornerType: cdrContourCornerType; 
                           MiterLimit: Double): IVGEffect; safecall;
    function CreatePushPullDistortion(OriginX: Double; OriginY: Double; Amplitude: Integer): IVGEffect; safecall;
    function CreateZipperDistortion(OriginX: Double; OriginY: Double; Amplitude: Integer; 
                                    Frequency: Integer; Random: WordBool; Smooth: WordBool; 
                                    Local: WordBool): IVGEffect; safecall;
    function CreateTwisterDistortion(OriginX: Double; OriginY: Double; Angle: Double): IVGEffect; safecall;
    function Get_Guide: IVGGuide; safecall;
    procedure AddToPowerClip(const Shape: IVGShape; CenterInContainer: cdrTriState); safecall;
    procedure RemoveFromContainer(Level: Integer); safecall;
    function Get_PowerClip: IVGPowerClip; safecall;
    function Get_PowerClipParent: IVGShape; safecall;
    function Get_DrapeFill: WordBool; safecall;
    procedure Set_DrapeFill(pVal: WordBool); safecall;
    function Get_OverprintFill: WordBool; safecall;
    procedure Set_OverprintFill(pVal: WordBool); safecall;
    function Get_OverprintOutline: WordBool; safecall;
    procedure Set_OverprintOutline(pVal: WordBool); safecall;
    function Get_URL: IVGURL; safecall;
    function Get_ObjectData: IVGDataItems; safecall;
    function Get_CloneLink: IVGCloneLink; safecall;
    function Get_Clones: IVGShapeRange; safecall;
    function Get_AbsoluteHScale: Double; safecall;
    function Get_AbsoluteVScale: Double; safecall;
    function Get_AbsoluteSkew: Double; safecall;
    function Get_Transparency: IVGTransparency; safecall;
    procedure GetMatrix(out d11: Double; out d12: Double; out d21: Double; out d22: Double; 
                        out tx: Double; out ty: Double); safecall;
    procedure SetMatrix(d11: Double; d12: Double; d21: Double; d22: Double; tx: Double; ty: Double); safecall;
    function ConvertToBitmapEx(Mode: cdrImageType; Dithered: WordBool; Transparent: WordBool; 
                               Resolution: Integer; AntiAliasing: cdrAntiAliasingType; 
                               UseColorProfile: WordBool; AlwaysOverprintBlack: WordBool; 
                               OverprintBlackLimit: Integer): IVGShape; safecall;
    procedure SkewEx(AngleX: Double; AngleY: Double; CenterX: Double; CenterY: Double); safecall;
    procedure RotateEx(Angle: Double; CenterX: Double; CenterY: Double); safecall;
    function Get_ParentGroup: IVGShape; safecall;
    procedure SetBoundingBox(x: Double; y: Double; Width: Double; Height: Double; 
                             KeepAspect: WordBool; ReferencePoint: cdrReferencePoint); safecall;
    procedure CreateSelection; safecall;
    procedure SetRotationCenter(x: Double; y: Double); safecall;
    procedure ClearEffect(Type_: cdrEffectType); safecall;
    function Get_Next(Level: cdrShapeLevel; EnterGroups: WordBool; Loop: WordBool): IVGShape; safecall;
    function Get_Previous(Level: cdrShapeLevel; EnterGroups: WordBool; Loop: WordBool): IVGShape; safecall;
    procedure StretchEx(CenterX: Double; CenterY: Double; StretchX: Double; StretchY: Double; 
                        StretchCharactersSize: WordBool); safecall;
    procedure SetSizeEx(CenterX: Double; CenterY: Double; Width: Double; Height: Double); safecall;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double; 
                             UseOutline: WordBool); safecall;
    function UngroupEx: IVGShapeRange; safecall;
    function UngroupAllEx: IVGShapeRange; safecall;
    function BreakApartEx: IVGShapeRange; safecall;
    procedure ApplyStyle(const StyleName: WideString); safecall;
    function Get_WrapText: cdrWrapStyle; safecall;
    procedure Set_WrapText(pVal: cdrWrapStyle); safecall;
    function Get_TextWrapOffset: Double; safecall;
    procedure Set_TextWrapOffset(pVal: Double); safecall;
    function PlaceTextInside(const TextShape: IVGShape): IVGShape; safecall;
    function Get_DisplayCurve: IVGCurve; safecall;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: PSafeArray): OleVariant; safecall;
    function Get_Custom: IVGCustomShape; safecall;
    function CreateCustomEffect(const EffectID: WideString; var Parameters: PSafeArray): IVGEffect; safecall;
    function CreateCustomDistortion(const DistortionID: WideString; var Parameters: PSafeArray): IVGEffect; safecall;
    procedure AlignToShape(Type_: cdrAlignType; const Shape: IVGShape; 
                           TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToShapeRange(Type_: cdrAlignType; const ShapeRange: IVGShapeRange; 
                                TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToPage(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToPageCenter(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToGrid(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToPoint(Type_: cdrAlignType; x: Double; y: Double; 
                           TextAlignOrigin: cdrTextAlignOrigin); safecall;
    function Get_Dimension: IVGDimension; safecall;
    function Get_Symbol: IVGSymbol; safecall;
    function ConvertToSymbol(const Name: WideString): IVGShape; safecall;
    function Get_OLE: IVGOLE; safecall;
    function DuplicateAsRange(OffsetX: Double; OffsetY: Double): IVGShapeRange; safecall;
    function CloneAsRange(OffsetX: Double; OffsetY: Double): IVGShapeRange; safecall;
    procedure MoveToLayer(const Layer: IVGLayer); safecall;
    function CopyToLayer(const Layer: IVGLayer): IVGShape; safecall;
    function CopyToLayerAsRange(const Layer: IVGLayer): IVGShapeRange; safecall;
    procedure ClearTransformations; safecall;
    procedure Distribute(Type_: cdrDistributeType; PageExtent: WordBool); safecall;
    function CompareTo(const Shape: IVGShape; CompareType: cdrCompareType; 
                       Condition: cdrCompareCondition): WordBool; safecall;
    function Get_Selectable: WordBool; safecall;
    procedure ApplyEffectInvert; safecall;
    procedure ApplyEffectPosterize(Level: Integer); safecall;
    procedure ApplyEffectBCI(Brighness: Integer; Contrast: Integer; Intensity: Integer); safecall;
    procedure ApplyEffectColorBalance(CyanRed: Integer; MagentaGreen: Integer; YellowBlue: Integer; 
                                      ApplyToShadows: WordBool; ApplyToMidtones: WordBool; 
                                      ApplyToHighlights: WordBool; PreserveLuminance: WordBool); safecall;
    procedure ApplyEffectGamma(Gamma: Double); safecall;
    procedure ApplyEffectHSL(Hue: OleVariant; Saturation: OleVariant; Lightness: OleVariant); safecall;
    procedure TransformMatrix(d11: Double; d12: Double; d21: Double; d22: Double; tx: Double; 
                              ty: Double); safecall;
    procedure AffineTransform(d11: Double; d12: Double; d21: Double; d22: Double; CenterX: Double; 
                              CenterY: Double); safecall;
    function Get_TreeNode: IVGTreeNode; safecall;
    procedure ReplaceWith(const VirtualShape: IVGShape); safecall;
    function Get_Virtual: WordBool; safecall;
    function Get_CanHaveFill: WordBool; safecall;
    function Get_CanHaveOutline: WordBool; safecall;
    function Get_IsSimpleShape: WordBool; safecall;
    procedure Fillet(Radius: Double; CombineSmoothSegments: WordBool); safecall;
    procedure Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool); safecall;
    procedure Scallop(Radius: Double; CombineSmoothSegments: WordBool); safecall;
    function Get_FillMode: cdrFillMode; safecall;
    procedure Set_FillMode(pVal: cdrFillMode); safecall;
    function Get_LeftX: Double; safecall;
    function Get_RightX: Double; safecall;
    function Get_TopY: Double; safecall;
    function Get_BottomY: Double; safecall;
    function StepAndRepeat(NumCopies: Integer; DistanceX: Double; DistanceY: Double; 
                           ModeX: cdrDistanceMode; DirectionX: cdrDirection; 
                           ModeY: cdrDistanceMode; DirectionY: cdrDirection): IVGShapeRange; safecall;
    function Get_OverprintBitmap: WordBool; safecall;
    procedure Set_OverprintBitmap(pVal: WordBool); safecall;
    function IsTypeAnyOf(var TypeList: PSafeArray): WordBool; safecall;
    function GetLinkedShapes(LinkType: cdrShapeLinkType): IVGShapeRange; safecall;
    function CreateEnvelopeFromShape(const Source: IVGShape; Mode: cdrEnvelopeMode; 
                                     KeepLines: WordBool; CopyMode: cdrEnvelopeCopyMode; 
                                     CornerIndices: OleVariant): IVGEffect; safecall;
    function CreateEnvelopeFromCurve(const Source: IVGCurve; Mode: cdrEnvelopeMode; 
                                     KeepLines: WordBool; CopyMode: cdrEnvelopeCopyMode; 
                                     CornerIndices: OleVariant): IVGEffect; safecall;
    function Get_EPS: IVGEPS; safecall;
    function Evaluate(const Expression: WideString): OleVariant; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    procedure GetPositionEx(ReferencePoint: cdrReferencePoint; out x: Double; out y: Double); safecall;
    procedure SetPositionEx(ReferencePoint: cdrReferencePoint; x: Double; y: Double); safecall;
    function Get_CenterX: Double; safecall;
    procedure Set_CenterX(pVal: Double); safecall;
    function Get_CenterY: Double; safecall;
    procedure Set_CenterY(pVal: Double); safecall;
    procedure Set_LeftX(pVal: Double); safecall;
    procedure Set_RightX(pVal: Double); safecall;
    procedure Set_TopY(pVal: Double); safecall;
    procedure Set_BottomY(pVal: Double); safecall;
    function Get_ZOrder: Integer; safecall;
    function CompareToEx(const Shape2: IVGShape; const Condition: WideString; Data: OleVariant): WordBool; safecall;
    function CopyPropertiesFrom(const Source: IVGShape; Properties: cdrCopyProperties): WordBool; safecall;
    function GetOverprintFillState: cdrOverprintState; safecall;
    function GetOverprintOutlineState: cdrOverprintState; safecall;
    function Get_Page: IVGPage; safecall;
    function SnapPointsOfType(TypeSet: cdrPointType): IVGSnapPoints; safecall;
    function FindSnapPoint(const ReferenceData: WideString): IVGSnapPoint; safecall;
    function Get_Spread: IVGSpread; safecall;
    function Get_PixelAlignedRendering: WordBool; safecall;
    procedure Set_PixelAlignedRendering(pVal: WordBool); safecall;
    function Get_BSpline: IVGBSpline; safecall;
    function CreateDocumentFrom(TemporaryDocument: WordBool): IVGDocument; safecall;
    procedure AlignAndDistribute(MethodH: cdrAlignDistributeH; MethodV: cdrAlignDistributeV; 
                                 AlignTo: cdrAlignShapesTo; DistributeArea: cdrDistributeArea; 
                                 UseOutline: WordBool; TextAlignOrigin: cdrTextAlignOrigin; 
                                 PointX: Double; PointY: Double; const DistributeRect: IVGRect); safecall;
    function Get_Style: IVGStyle; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property StaticID: Integer read Get_StaticID;
    property Name: WideString read Get_Name write Set_Name;
    property Shapes: IVGShapes read Get_Shapes;
    property Rectangle: IVGRectangle read Get_Rectangle;
    property PositionX: Double read Get_PositionX write Set_PositionX;
    property PositionY: Double read Get_PositionY write Set_PositionY;
    property SizeWidth: Double read Get_SizeWidth write Set_SizeWidth;
    property SizeHeight: Double read Get_SizeHeight write Set_SizeHeight;
    property Ellipse: IVGEllipse read Get_Ellipse;
    property Polygon: IVGPolygon read Get_Polygon;
    property Curve: IVGCurve read Get_Curve;
    property Bitmap: IVGBitmap read Get_Bitmap;
    property type_: cdrShapeType read Get_type_;
    property Outline: IVGOutline read Get_Outline;
    property Fill: IVGFill read Get_Fill write Set_Fill;
    property Text: IVGText read Get_Text;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property RotationCenterX: Double read Get_RotationCenterX write Set_RotationCenterX;
    property RotationCenterY: Double read Get_RotationCenterY write Set_RotationCenterY;
    property Layer: IVGLayer read Get_Layer write Set_Layer;
    property SnapPoints: IVGSnapPoints read Get_SnapPoints;
    property Connector: IVGConnector read Get_Connector;
    property Properties: IVGProperties read Get_Properties;
    property Effects: IVGEffects read Get_Effects;
    property Effect: IVGEffect read Get_Effect;
    property Locked: WordBool read Get_Locked write Set_Locked;
    property OriginalWidth: Double read Get_OriginalWidth;
    property OriginalHeight: Double read Get_OriginalHeight;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property Guide: IVGGuide read Get_Guide;
    property PowerClip: IVGPowerClip read Get_PowerClip;
    property PowerClipParent: IVGShape read Get_PowerClipParent;
    property DrapeFill: WordBool read Get_DrapeFill write Set_DrapeFill;
    property OverprintFill: WordBool read Get_OverprintFill write Set_OverprintFill;
    property OverprintOutline: WordBool read Get_OverprintOutline write Set_OverprintOutline;
    property URL: IVGURL read Get_URL;
    property ObjectData: IVGDataItems read Get_ObjectData;
    property CloneLink: IVGCloneLink read Get_CloneLink;
    property Clones: IVGShapeRange read Get_Clones;
    property AbsoluteHScale: Double read Get_AbsoluteHScale;
    property AbsoluteVScale: Double read Get_AbsoluteVScale;
    property AbsoluteSkew: Double read Get_AbsoluteSkew;
    property Transparency: IVGTransparency read Get_Transparency;
    property ParentGroup: IVGShape read Get_ParentGroup;
    property Next[Level: cdrShapeLevel; EnterGroups: WordBool; Loop: WordBool]: IVGShape read Get_Next;
    property Previous[Level: cdrShapeLevel; EnterGroups: WordBool; Loop: WordBool]: IVGShape read Get_Previous;
    property WrapText: cdrWrapStyle read Get_WrapText write Set_WrapText;
    property TextWrapOffset: Double read Get_TextWrapOffset write Set_TextWrapOffset;
    property DisplayCurve: IVGCurve read Get_DisplayCurve;
    property Custom: IVGCustomShape read Get_Custom;
    property Dimension: IVGDimension read Get_Dimension;
    property Symbol: IVGSymbol read Get_Symbol;
    property OLE: IVGOLE read Get_OLE;
    property Selectable: WordBool read Get_Selectable;
    property TreeNode: IVGTreeNode read Get_TreeNode;
    property Virtual: WordBool read Get_Virtual;
    property CanHaveFill: WordBool read Get_CanHaveFill;
    property CanHaveOutline: WordBool read Get_CanHaveOutline;
    property IsSimpleShape: WordBool read Get_IsSimpleShape;
    property FillMode: cdrFillMode read Get_FillMode write Set_FillMode;
    property LeftX: Double read Get_LeftX write Set_LeftX;
    property RightX: Double read Get_RightX write Set_RightX;
    property TopY: Double read Get_TopY write Set_TopY;
    property BottomY: Double read Get_BottomY write Set_BottomY;
    property OverprintBitmap: WordBool read Get_OverprintBitmap write Set_OverprintBitmap;
    property EPS: IVGEPS read Get_EPS;
    property BoundingBox: IVGRect read Get_BoundingBox;
    property CenterX: Double read Get_CenterX write Set_CenterX;
    property CenterY: Double read Get_CenterY write Set_CenterY;
    property ZOrder: Integer read Get_ZOrder;
    property Page: IVGPage read Get_Page;
    property Spread: IVGSpread read Get_Spread;
    property PixelAlignedRendering: WordBool read Get_PixelAlignedRendering write Set_PixelAlignedRendering;
    property BSpline: IVGBSpline read Get_BSpline;
    property Style: IVGStyle read Get_Style;
  end;

// *********************************************************************//
// DispIntf:  IVGShapeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGShapeDisp = dispinterface
    ['{B058005D-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property StaticID: Integer readonly dispid 1610743810;
    procedure ConvertToCurves; dispid 1610743811;
    property Name: WideString dispid 1610743812;
    property Shapes: IVGShapes readonly dispid 1610743814;
    property Rectangle: IVGRectangle readonly dispid 1610743815;
    property PositionX: Double dispid 1610743816;
    property PositionY: Double dispid 1610743818;
    property SizeWidth: Double dispid 1610743820;
    property SizeHeight: Double dispid 1610743822;
    property Ellipse: IVGEllipse readonly dispid 1610743824;
    property Polygon: IVGPolygon readonly dispid 1610743825;
    property Curve: IVGCurve readonly dispid 1610743826;
    property Bitmap: IVGBitmap readonly dispid 1610743827;
    property type_: cdrShapeType readonly dispid 1610743828;
    property Outline: IVGOutline readonly dispid 1610743829;
    property Fill: IVGFill dispid 1610743830;
    property Text: IVGText readonly dispid 1610743831;
    procedure Delete; dispid 1610743832;
    function Duplicate(OffsetX: Double; OffsetY: Double): IVGShape; dispid 1610743833;
    procedure Skew(AngleX: Double; AngleY: Double); dispid 1610743834;
    procedure Move(DeltaX: Double; DeltaY: Double); dispid 1610743835;
    property RotationAngle: Double dispid 1610743836;
    property RotationCenterX: Double dispid 1610743838;
    property RotationCenterY: Double dispid 1610743840;
    procedure Rotate(Angle: Double); dispid 1610743842;
    function ConvertToBitmap(BitDepth: Integer; Grayscale: WordBool; Dithered: WordBool; 
                             TransparentBG: WordBool; Resolution: Integer; 
                             AntiAliasing: cdrAntiAliasingType; UseColorProfile: WordBool; 
                             MultiChannel: WordBool; AlwaysOverprintBlack: WordBool; 
                             OverprintBlackLimit: Integer): IVGShape; dispid 1610743843;
    function Group: IVGShape; dispid 1610743844;
    procedure Ungroup; dispid 1610743845;
    procedure UngroupAll; dispid 1610743846;
    procedure OrderToFront; dispid 1610743847;
    procedure OrderToBack; dispid 1610743848;
    procedure OrderForwardOne; dispid 1610743849;
    procedure OrderBackOne; dispid 1610743850;
    procedure OrderFrontOf(const Shape: IVGShape); dispid 1610743851;
    procedure OrderBackOf(const Shape: IVGShape); dispid 1610743852;
    function OrderIsInFrontOf(const Shape: IVGShape): WordBool; dispid 1610743853;
    procedure AddToSelection; dispid 1610743854;
    procedure RemoveFromSelection; dispid 1610743855;
    procedure Separate; dispid 1610743856;
    property Layer: IVGLayer dispid 1610743857;
    property SnapPoints: IVGSnapPoints readonly dispid 1610743859;
    property Connector: IVGConnector readonly dispid 1610743860;
    function IsOnShape(x: Double; y: Double; HotArea: Double): cdrPositionOfPointOverShape; dispid 1610743861;
    function CreateArrowHead: IVGArrowHead; dispid 1610743862;
    procedure Copy; dispid 1610743863;
    procedure Cut; dispid 1610743864;
    function Clone(OffsetX: Double; OffsetY: Double): IVGShape; dispid 1610743865;
    procedure Stretch(StretchX: Double; StretchY: Double; StretchCharactersSize: WordBool); dispid 1610743866;
    procedure SetPosition(PositionX: Double; PositionY: Double); dispid 1610743867;
    procedure SetSize(Width: Double; Height: Double); dispid 1610743868;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); dispid 1610743869;
    procedure GetSize(out Width: Double; out Height: Double); dispid 1610743870;
    property Properties: IVGProperties readonly dispid 1610743871;
    procedure OrderReverse; dispid 1610743872;
    function Combine: IVGShape; dispid 1610743873;
    procedure BreakApart; dispid 1610743874;
    function Weld(const TargetShape: IVGShape; LeaveSource: WordBool; LeaveTarget: WordBool): IVGShape; dispid 1610743876;
    function Trim(const TargetShape: IVGShape; LeaveSource: WordBool; LeaveTarget: WordBool): IVGShape; dispid 1610743877;
    function Intersect(const TargetShape: IVGShape; LeaveSource: WordBool; LeaveTarget: WordBool): IVGShape; dispid 1610743878;
    property Effects: IVGEffects readonly dispid 1610743879;
    property Effect: IVGEffect readonly dispid 1610743880;
    function CreateDropShadow(Type_: cdrDropShadowType; Opacity: Integer; Feather: Integer; 
                              OffsetX: Double; OffsetY: Double; const Color: IVGColor; 
                              FeatherType: cdrFeatherType; FeatherEdge: cdrEdgeType; 
                              PerspectiveAngle: Double; PerspectiveStretch: Double; Fade: Integer; 
                              MergeMode: cdrMergeMode): IVGEffect; dispid 1610743881;
    function CreateBlend(const Shape: IVGShape; Steps: SYSINT; 
                         ColorBlendType: cdrFountainFillBlendType; Mode: cdrBlendMode; 
                         Spacing: Double; Angle: Double; Loop: WordBool; const Path: IVGShape; 
                         RotateShapes: WordBool; SpacingAccel: Integer; ColorAccel: Integer; 
                         AccelSize: WordBool): IVGEffect; dispid 1610743882;
    function CreateExtrude(Type_: cdrExtrudeType; VPType: cdrExtrudeVPType; VPX: Double; 
                           VPY: Double; Depth: Double; Shading: cdrExtrudeShading; 
                           const BaseColor: IVGColor; const ShadingColor: IVGColor; 
                           BevelDepth: Double; BevelAngle: Double; const BevelColor: IVGColor; 
                           BevelOnly: WordBool): IVGEffect; dispid 1610743883;
    function CreateEnvelope(PresetIndex: Integer; Mode: cdrEnvelopeMode; KeepLines: WordBool): IVGEffect; dispid 1610743884;
    procedure Flip(Axes: cdrFlipAxes); dispid 1610743885;
    property Locked: WordBool dispid 1610743886;
    property OriginalWidth: Double readonly dispid 1610743888;
    property OriginalHeight: Double readonly dispid 1610743889;
    property Selected: WordBool dispid 1610743890;
    function CreateLens(Type_: cdrLensType; RateOrMagnification: Double; const Color1: IVGColor; 
                        const Color2: IVGColor; ColorMapPalette: cdrFountainFillBlendType): IVGEffect; dispid 1610743892;
    function CreatePerspective(HorizVanishPointX: OleVariant; HorizVanishPointY: OleVariant; 
                               VertVanishPointX: OleVariant; VertVanishPointY: OleVariant): IVGEffect; dispid 1610743893;
    function CreateContour(Direction: cdrContourDirection; Offset: Double; Steps: Integer; 
                           BlendType: cdrFountainFillBlendType; const OutlineColor: IVGColor; 
                           const FillColor: IVGColor; const FillColor2: IVGColor; 
                           SpacingAccel: Integer; ColorAccel: Integer; 
                           EndCapType: cdrContourEndCapType; CornerType: cdrContourCornerType; 
                           MiterLimit: Double): IVGEffect; dispid 1610743894;
    function CreatePushPullDistortion(OriginX: Double; OriginY: Double; Amplitude: Integer): IVGEffect; dispid 1610743895;
    function CreateZipperDistortion(OriginX: Double; OriginY: Double; Amplitude: Integer; 
                                    Frequency: Integer; Random: WordBool; Smooth: WordBool; 
                                    Local: WordBool): IVGEffect; dispid 1610743896;
    function CreateTwisterDistortion(OriginX: Double; OriginY: Double; Angle: Double): IVGEffect; dispid 1610743897;
    property Guide: IVGGuide readonly dispid 1610743898;
    procedure AddToPowerClip(const Shape: IVGShape; CenterInContainer: cdrTriState); dispid 1610743899;
    procedure RemoveFromContainer(Level: Integer); dispid 1610743900;
    property PowerClip: IVGPowerClip readonly dispid 1610743901;
    property PowerClipParent: IVGShape readonly dispid 1610743902;
    property DrapeFill: WordBool dispid 1610743903;
    property OverprintFill: WordBool dispid 1610743905;
    property OverprintOutline: WordBool dispid 1610743907;
    property URL: IVGURL readonly dispid 1610743909;
    property ObjectData: IVGDataItems readonly dispid 1610743910;
    property CloneLink: IVGCloneLink readonly dispid 1610743911;
    property Clones: IVGShapeRange readonly dispid 1610743912;
    property AbsoluteHScale: Double readonly dispid 1610743913;
    property AbsoluteVScale: Double readonly dispid 1610743914;
    property AbsoluteSkew: Double readonly dispid 1610743915;
    property Transparency: IVGTransparency readonly dispid 1610743916;
    procedure GetMatrix(out d11: Double; out d12: Double; out d21: Double; out d22: Double; 
                        out tx: Double; out ty: Double); dispid 1610743917;
    procedure SetMatrix(d11: Double; d12: Double; d21: Double; d22: Double; tx: Double; ty: Double); dispid 1610743918;
    function ConvertToBitmapEx(Mode: cdrImageType; Dithered: WordBool; Transparent: WordBool; 
                               Resolution: Integer; AntiAliasing: cdrAntiAliasingType; 
                               UseColorProfile: WordBool; AlwaysOverprintBlack: WordBool; 
                               OverprintBlackLimit: Integer): IVGShape; dispid 1610743919;
    procedure SkewEx(AngleX: Double; AngleY: Double; CenterX: Double; CenterY: Double); dispid 1610743920;
    procedure RotateEx(Angle: Double; CenterX: Double; CenterY: Double); dispid 1610743921;
    property ParentGroup: IVGShape readonly dispid 1610743922;
    procedure SetBoundingBox(x: Double; y: Double; Width: Double; Height: Double; 
                             KeepAspect: WordBool; ReferencePoint: cdrReferencePoint); dispid 1610743923;
    procedure CreateSelection; dispid 1610743924;
    procedure SetRotationCenter(x: Double; y: Double); dispid 1610743925;
    procedure ClearEffect(Type_: cdrEffectType); dispid 1610743926;
    property Next[Level: cdrShapeLevel; EnterGroups: WordBool; Loop: WordBool]: IVGShape readonly dispid 1610743927;
    property Previous[Level: cdrShapeLevel; EnterGroups: WordBool; Loop: WordBool]: IVGShape readonly dispid 1610743928;
    procedure StretchEx(CenterX: Double; CenterY: Double; StretchX: Double; StretchY: Double; 
                        StretchCharactersSize: WordBool); dispid 1610743929;
    procedure SetSizeEx(CenterX: Double; CenterY: Double; Width: Double; Height: Double); dispid 1610743930;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double; 
                             UseOutline: WordBool); dispid 1610743931;
    function UngroupEx: IVGShapeRange; dispid 1610743932;
    function UngroupAllEx: IVGShapeRange; dispid 1610743933;
    function BreakApartEx: IVGShapeRange; dispid 1610743934;
    procedure ApplyStyle(const StyleName: WideString); dispid 1610743935;
    property WrapText: cdrWrapStyle dispid 1610743936;
    property TextWrapOffset: Double dispid 1610743938;
    function PlaceTextInside(const TextShape: IVGShape): IVGShape; dispid 1610743940;
    property DisplayCurve: IVGCurve readonly dispid 1610743941;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): OleVariant; dispid 1610743942;
    property Custom: IVGCustomShape readonly dispid 1610743943;
    function CreateCustomEffect(const EffectID: WideString; 
                                var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGEffect; dispid 1610743944;
    function CreateCustomDistortion(const DistortionID: WideString; 
                                    var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGEffect; dispid 1610743945;
    procedure AlignToShape(Type_: cdrAlignType; const Shape: IVGShape; 
                           TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743946;
    procedure AlignToShapeRange(Type_: cdrAlignType; const ShapeRange: IVGShapeRange; 
                                TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743947;
    procedure AlignToPage(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743948;
    procedure AlignToPageCenter(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743949;
    procedure AlignToGrid(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743950;
    procedure AlignToPoint(Type_: cdrAlignType; x: Double; y: Double; 
                           TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743951;
    property Dimension: IVGDimension readonly dispid 1610743952;
    property Symbol: IVGSymbol readonly dispid 1610743953;
    function ConvertToSymbol(const Name: WideString): IVGShape; dispid 1610743954;
    property OLE: IVGOLE readonly dispid 1610743955;
    function DuplicateAsRange(OffsetX: Double; OffsetY: Double): IVGShapeRange; dispid 1610743956;
    function CloneAsRange(OffsetX: Double; OffsetY: Double): IVGShapeRange; dispid 1610743957;
    procedure MoveToLayer(const Layer: IVGLayer); dispid 1610743958;
    function CopyToLayer(const Layer: IVGLayer): IVGShape; dispid 1610743959;
    function CopyToLayerAsRange(const Layer: IVGLayer): IVGShapeRange; dispid 1610743960;
    procedure ClearTransformations; dispid 1610743961;
    procedure Distribute(Type_: cdrDistributeType; PageExtent: WordBool); dispid 1610743962;
    function CompareTo(const Shape: IVGShape; CompareType: cdrCompareType; 
                       Condition: cdrCompareCondition): WordBool; dispid 1610743963;
    property Selectable: WordBool readonly dispid 1610743964;
    procedure ApplyEffectInvert; dispid 1610743965;
    procedure ApplyEffectPosterize(Level: Integer); dispid 1610743966;
    procedure ApplyEffectBCI(Brighness: Integer; Contrast: Integer; Intensity: Integer); dispid 1610743967;
    procedure ApplyEffectColorBalance(CyanRed: Integer; MagentaGreen: Integer; YellowBlue: Integer; 
                                      ApplyToShadows: WordBool; ApplyToMidtones: WordBool; 
                                      ApplyToHighlights: WordBool; PreserveLuminance: WordBool); dispid 1610743968;
    procedure ApplyEffectGamma(Gamma: Double); dispid 1610743969;
    procedure ApplyEffectHSL(Hue: OleVariant; Saturation: OleVariant; Lightness: OleVariant); dispid 1610743970;
    procedure TransformMatrix(d11: Double; d12: Double; d21: Double; d22: Double; tx: Double; 
                              ty: Double); dispid 1610743971;
    procedure AffineTransform(d11: Double; d12: Double; d21: Double; d22: Double; CenterX: Double; 
                              CenterY: Double); dispid 1610743972;
    property TreeNode: IVGTreeNode readonly dispid 1610743973;
    procedure ReplaceWith(const VirtualShape: IVGShape); dispid 1610743974;
    property Virtual: WordBool readonly dispid 1610743975;
    property CanHaveFill: WordBool readonly dispid 1610743976;
    property CanHaveOutline: WordBool readonly dispid 1610743977;
    property IsSimpleShape: WordBool readonly dispid 1610743978;
    procedure Fillet(Radius: Double; CombineSmoothSegments: WordBool); dispid 1610743979;
    procedure Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool); dispid 1610743980;
    procedure Scallop(Radius: Double; CombineSmoothSegments: WordBool); dispid 1610743981;
    property FillMode: cdrFillMode dispid 1610743982;
    property LeftX: Double dispid 1610743984;
    property RightX: Double dispid 1610743985;
    property TopY: Double dispid 1610743986;
    property BottomY: Double dispid 1610743987;
    function StepAndRepeat(NumCopies: Integer; DistanceX: Double; DistanceY: Double; 
                           ModeX: cdrDistanceMode; DirectionX: cdrDirection; 
                           ModeY: cdrDistanceMode; DirectionY: cdrDirection): IVGShapeRange; dispid 1610743988;
    property OverprintBitmap: WordBool dispid 1610743989;
    function IsTypeAnyOf(var TypeList: {NOT_OLEAUTO(PSafeArray)}OleVariant): WordBool; dispid 1610743991;
    function GetLinkedShapes(LinkType: cdrShapeLinkType): IVGShapeRange; dispid 1610743992;
    function CreateEnvelopeFromShape(const Source: IVGShape; Mode: cdrEnvelopeMode; 
                                     KeepLines: WordBool; CopyMode: cdrEnvelopeCopyMode; 
                                     CornerIndices: OleVariant): IVGEffect; dispid 1610743993;
    function CreateEnvelopeFromCurve(const Source: IVGCurve; Mode: cdrEnvelopeMode; 
                                     KeepLines: WordBool; CopyMode: cdrEnvelopeCopyMode; 
                                     CornerIndices: OleVariant): IVGEffect; dispid 1610743994;
    property EPS: IVGEPS readonly dispid 1610743995;
    function Evaluate(const Expression: WideString): OleVariant; dispid 1610743996;
    property BoundingBox: IVGRect readonly dispid 1610743997;
    procedure GetPositionEx(ReferencePoint: cdrReferencePoint; out x: Double; out y: Double); dispid 1610743998;
    procedure SetPositionEx(ReferencePoint: cdrReferencePoint; x: Double; y: Double); dispid 1610743999;
    property CenterX: Double dispid 1610744000;
    property CenterY: Double dispid 1610744002;
    property ZOrder: Integer readonly dispid 1610744008;
    function CompareToEx(const Shape2: IVGShape; const Condition: WideString; Data: OleVariant): WordBool; dispid 1610744009;
    function CopyPropertiesFrom(const Source: IVGShape; Properties: cdrCopyProperties): WordBool; dispid 1610744010;
    function GetOverprintFillState: cdrOverprintState; dispid 1610744011;
    function GetOverprintOutlineState: cdrOverprintState; dispid 1610744012;
    property Page: IVGPage readonly dispid 1610744013;
    function SnapPointsOfType(TypeSet: cdrPointType): IVGSnapPoints; dispid 1610744014;
    function FindSnapPoint(const ReferenceData: WideString): IVGSnapPoint; dispid 1610744015;
    property Spread: IVGSpread readonly dispid 1610744016;
    property PixelAlignedRendering: WordBool dispid 1610744017;
    property BSpline: IVGBSpline readonly dispid 1610744019;
    function CreateDocumentFrom(TemporaryDocument: WordBool): IVGDocument; dispid 1610744020;
    procedure AlignAndDistribute(MethodH: cdrAlignDistributeH; MethodV: cdrAlignDistributeV; 
                                 AlignTo: cdrAlignShapesTo; DistributeArea: cdrDistributeArea; 
                                 UseOutline: WordBool; TextAlignOrigin: cdrTextAlignOrigin; 
                                 PointX: Double; PointY: Double; const DistributeRect: IVGRect); dispid 1610744021;
    property Style: IVGStyle readonly dispid 1610744022;
  end;

// *********************************************************************//
// Interface: IVGRectangle
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580057-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRectangle = interface(IDispatch)
    ['{B0580057-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_CornerUpperLeft: Integer; safecall;
    procedure Set_CornerUpperLeft(pVal: Integer); safecall;
    function Get_CornerUpperRight: Integer; safecall;
    procedure Set_CornerUpperRight(pVal: Integer); safecall;
    function Get_CornerLowerLeft: Integer; safecall;
    procedure Set_CornerLowerLeft(pVal: Integer); safecall;
    function Get_CornerLowerRight: Integer; safecall;
    procedure Set_CornerLowerRight(pVal: Integer); safecall;
    function Get_EqualCorners: WordBool; safecall;
    function Get_MaxRadius: Double; safecall;
    procedure SetRoundness(Roundness: Integer); safecall;
    procedure SetRadius(Radius: Double); safecall;
    function Get_RadiusUpperLeft: Double; safecall;
    procedure Set_RadiusUpperLeft(pVal: Double); safecall;
    function Get_RadiusUpperRight: Double; safecall;
    procedure Set_RadiusUpperRight(pVal: Double); safecall;
    function Get_RadiusLowerLeft: Double; safecall;
    procedure Set_RadiusLowerLeft(pVal: Double); safecall;
    function Get_RadiusLowerRight: Double; safecall;
    procedure Set_RadiusLowerRight(pVal: Double); safecall;
    function Get_CornerType: cdrCornerType; safecall;
    procedure Set_CornerType(pVal: cdrCornerType); safecall;
    function Get_RelativeCornerScaling: WordBool; safecall;
    procedure Set_RelativeCornerScaling(pVal: WordBool); safecall;
    property CornerUpperLeft: Integer read Get_CornerUpperLeft write Set_CornerUpperLeft;
    property CornerUpperRight: Integer read Get_CornerUpperRight write Set_CornerUpperRight;
    property CornerLowerLeft: Integer read Get_CornerLowerLeft write Set_CornerLowerLeft;
    property CornerLowerRight: Integer read Get_CornerLowerRight write Set_CornerLowerRight;
    property EqualCorners: WordBool read Get_EqualCorners;
    property MaxRadius: Double read Get_MaxRadius;
    property RadiusUpperLeft: Double read Get_RadiusUpperLeft write Set_RadiusUpperLeft;
    property RadiusUpperRight: Double read Get_RadiusUpperRight write Set_RadiusUpperRight;
    property RadiusLowerLeft: Double read Get_RadiusLowerLeft write Set_RadiusLowerLeft;
    property RadiusLowerRight: Double read Get_RadiusLowerRight write Set_RadiusLowerRight;
    property CornerType: cdrCornerType read Get_CornerType write Set_CornerType;
    property RelativeCornerScaling: WordBool read Get_RelativeCornerScaling write Set_RelativeCornerScaling;
  end;

// *********************************************************************//
// DispIntf:  IVGRectangleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580057-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRectangleDisp = dispinterface
    ['{B0580057-9AA4-44FD-9547-4F91EB757AC4}']
    property CornerUpperLeft: Integer dispid 1610743808;
    property CornerUpperRight: Integer dispid 1610743810;
    property CornerLowerLeft: Integer dispid 1610743812;
    property CornerLowerRight: Integer dispid 1610743814;
    property EqualCorners: WordBool readonly dispid 1610743816;
    property MaxRadius: Double readonly dispid 1610743817;
    procedure SetRoundness(Roundness: Integer); dispid 1610743818;
    procedure SetRadius(Radius: Double); dispid 1610743819;
    property RadiusUpperLeft: Double dispid 1610743820;
    property RadiusUpperRight: Double dispid 1610743822;
    property RadiusLowerLeft: Double dispid 1610743824;
    property RadiusLowerRight: Double dispid 1610743826;
    property CornerType: cdrCornerType dispid 1610743828;
    property RelativeCornerScaling: WordBool dispid 1610743830;
  end;

// *********************************************************************//
// Interface: IVGEllipse
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580037-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEllipse = interface(IDispatch)
    ['{B0580037-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrEllipseType; safecall;
    procedure Set_type_(pVal: cdrEllipseType); safecall;
    function Get_StartAngle: Double; safecall;
    procedure Set_StartAngle(pVal: Double); safecall;
    function Get_EndAngle: Double; safecall;
    procedure Set_EndAngle(pVal: Double); safecall;
    function Get_Clockwise: WordBool; safecall;
    procedure Set_Clockwise(pVal: WordBool); safecall;
    function Get_CenterX: Double; safecall;
    procedure Set_CenterX(pVal: Double); safecall;
    function Get_CenterY: Double; safecall;
    procedure Set_CenterY(pVal: Double); safecall;
    function Get_HRadius: Double; safecall;
    procedure Set_HRadius(pVal: Double); safecall;
    function Get_VRadius: Double; safecall;
    procedure Set_VRadius(pVal: Double); safecall;
    procedure SetCenterPosition(PositionX: Double; PositionY: Double); safecall;
    procedure GetCenterPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure SetRadius(HRadius: Double; VRadius: Double); safecall;
    procedure GetRadius(out HRadius: Double; out VRadius: Double); safecall;
    property type_: cdrEllipseType read Get_type_ write Set_type_;
    property StartAngle: Double read Get_StartAngle write Set_StartAngle;
    property EndAngle: Double read Get_EndAngle write Set_EndAngle;
    property Clockwise: WordBool read Get_Clockwise write Set_Clockwise;
    property CenterX: Double read Get_CenterX write Set_CenterX;
    property CenterY: Double read Get_CenterY write Set_CenterY;
    property HRadius: Double read Get_HRadius write Set_HRadius;
    property VRadius: Double read Get_VRadius write Set_VRadius;
  end;

// *********************************************************************//
// DispIntf:  IVGEllipseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580037-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEllipseDisp = dispinterface
    ['{B0580037-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrEllipseType dispid 1610743808;
    property StartAngle: Double dispid 1610743810;
    property EndAngle: Double dispid 1610743812;
    property Clockwise: WordBool dispid 1610743814;
    property CenterX: Double dispid 1610743816;
    property CenterY: Double dispid 1610743818;
    property HRadius: Double dispid 1610743820;
    property VRadius: Double dispid 1610743822;
    procedure SetCenterPosition(PositionX: Double; PositionY: Double); dispid 1610743824;
    procedure GetCenterPosition(out PositionX: Double; out PositionY: Double); dispid 1610743825;
    procedure SetRadius(HRadius: Double; VRadius: Double); dispid 1610743826;
    procedure GetRadius(out HRadius: Double; out VRadius: Double); dispid 1610743827;
  end;

// *********************************************************************//
// Interface: IVGPolygon
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580051-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPolygon = interface(IDispatch)
    ['{B0580051-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrPolygonType; safecall;
    procedure Set_type_(pVal: cdrPolygonType); safecall;
    function Get_Sides: Integer; safecall;
    procedure Set_Sides(pVal: Integer); safecall;
    function Get_Sharpness: Integer; safecall;
    procedure Set_Sharpness(pVal: Integer); safecall;
    property type_: cdrPolygonType read Get_type_ write Set_type_;
    property Sides: Integer read Get_Sides write Set_Sides;
    property Sharpness: Integer read Get_Sharpness write Set_Sharpness;
  end;

// *********************************************************************//
// DispIntf:  IVGPolygonDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580051-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPolygonDisp = dispinterface
    ['{B0580051-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrPolygonType dispid 1610743808;
    property Sides: Integer dispid 1610743810;
    property Sharpness: Integer dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGCurve
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580019-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCurve = interface(IDispatch)
    ['{B0580019-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Length: Double; safecall;
    function Get_SubPaths: IVGSubPaths; safecall;
    function Get_Nodes: IVGNodes; safecall;
    function Get_Segments: IVGSegments; safecall;
    function Get_Closed: WordBool; safecall;
    procedure Set_Closed(pVal: WordBool); safecall;
    function Selection: IVGNodeRange; safecall;
    function CreateSubPath(x: Double; y: Double): IVGSubPath; safecall;
    procedure ReverseDirection; safecall;
    function IsOnCurve(x: Double; y: Double; HotArea: Double): cdrPositionOfPointOverShape; safecall;
    procedure BindToDocument(const Document: IVGDocument); safecall;
    function GetCopy: IVGCurve; safecall;
    procedure CopyAssign(const Source: IVGCurve); safecall;
    function CreateSubPathFromArray(var Source: PSafeArray; Closed: WordBool; NumElements: Integer): IVGSubPath; safecall;
    procedure AppendCurve(const Source: IVGCurve); safecall;
    function GetCurveInfo: PSafeArray; safecall;
    function PutCurveInfo(var Source: PSafeArray; NumElements: Integer): Integer; safecall;
    procedure ClearSelection; safecall;
    function GetPolyline(CurvePrecision: Integer): IVGCurve; safecall;
    function RemoveOverlaps: IVGCurve; safecall;
    function Contour(Offset: Double; Direction: cdrContourDirection; 
                     EndCapType: cdrContourEndCapType; CornerType: cdrContourCornerType; 
                     MiterLimit: Double): IVGCurve; safecall;
    function IsPointInside(x: Double; y: Double): WordBool; safecall;
    function IsRectOnEdge(x1: Double; y1: Double; x2: Double; y2: Double): WordBool; safecall;
    function FindClosestSegment(x: Double; y: Double; out ParamOffset: Double): IVGSegment; safecall;
    function FindNodeAtPoint(x: Double; y: Double; HotArea: Double): IVGNode; safecall;
    function FindSegmentAtPoint(x: Double; y: Double; out ParamOffset: Double; HotArea: Double): IVGSegment; safecall;
    function WeldWith(const Curve: IVGCurve): IVGCurve; safecall;
    function Get_IsClockwise: WordBool; safecall;
    function Get_Area: Double; safecall;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    function IntersectsWith(const Curve: IVGCurve): WordBool; safecall;
    property Length: Double read Get_Length;
    property SubPaths: IVGSubPaths read Get_SubPaths;
    property Nodes: IVGNodes read Get_Nodes;
    property Segments: IVGSegments read Get_Segments;
    property Closed: WordBool read Get_Closed write Set_Closed;
    property IsClockwise: WordBool read Get_IsClockwise;
    property Area: Double read Get_Area;
    property BoundingBox: IVGRect read Get_BoundingBox;
  end;

// *********************************************************************//
// DispIntf:  IVGCurveDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580019-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCurveDisp = dispinterface
    ['{B0580019-9AA4-44FD-9547-4F91EB757AC4}']
    property Length: Double readonly dispid 1610743808;
    property SubPaths: IVGSubPaths readonly dispid 1610743809;
    property Nodes: IVGNodes readonly dispid 1610743810;
    property Segments: IVGSegments readonly dispid 1610743811;
    property Closed: WordBool dispid 1610743812;
    function Selection: IVGNodeRange; dispid 1610743814;
    function CreateSubPath(x: Double; y: Double): IVGSubPath; dispid 1610743815;
    procedure ReverseDirection; dispid 1610743816;
    function IsOnCurve(x: Double; y: Double; HotArea: Double): cdrPositionOfPointOverShape; dispid 1610743817;
    procedure BindToDocument(const Document: IVGDocument); dispid 1610743818;
    function GetCopy: IVGCurve; dispid 1610743819;
    procedure CopyAssign(const Source: IVGCurve); dispid 1610743820;
    function CreateSubPathFromArray(var Source: {NOT_OLEAUTO(PSafeArray)}OleVariant; 
                                    Closed: WordBool; NumElements: Integer): IVGSubPath; dispid 1610743821;
    procedure AppendCurve(const Source: IVGCurve); dispid 1610743822;
    function GetCurveInfo: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743823;
    function PutCurveInfo(var Source: {NOT_OLEAUTO(PSafeArray)}OleVariant; NumElements: Integer): Integer; dispid 1610743824;
    procedure ClearSelection; dispid 1610743825;
    function GetPolyline(CurvePrecision: Integer): IVGCurve; dispid 1610743826;
    function RemoveOverlaps: IVGCurve; dispid 1610743827;
    function Contour(Offset: Double; Direction: cdrContourDirection; 
                     EndCapType: cdrContourEndCapType; CornerType: cdrContourCornerType; 
                     MiterLimit: Double): IVGCurve; dispid 1610743828;
    function IsPointInside(x: Double; y: Double): WordBool; dispid 1610743829;
    function IsRectOnEdge(x1: Double; y1: Double; x2: Double; y2: Double): WordBool; dispid 1610743830;
    function FindClosestSegment(x: Double; y: Double; out ParamOffset: Double): IVGSegment; dispid 1610743831;
    function FindNodeAtPoint(x: Double; y: Double; HotArea: Double): IVGNode; dispid 1610743832;
    function FindSegmentAtPoint(x: Double; y: Double; out ParamOffset: Double; HotArea: Double): IVGSegment; dispid 1610743833;
    function WeldWith(const Curve: IVGCurve): IVGCurve; dispid 1610743834;
    property IsClockwise: WordBool readonly dispid 1610743835;
    property Area: Double readonly dispid 1610743836;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; dispid 1610743837;
    property BoundingBox: IVGRect readonly dispid 1610743838;
    function IntersectsWith(const Curve: IVGCurve): WordBool; dispid 1610743839;
  end;

// *********************************************************************//
// Interface: IVGSubPaths
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSubPaths = interface(IDispatch)
    ['{B058006B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_Item(Index: Integer): IVGSubPath; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_First: IVGSubPath; safecall;
    function Get_Last: IVGSubPath; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property Item[Index: Integer]: IVGSubPath read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property First: IVGSubPath read Get_First;
    property Last: IVGSubPath read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGSubPathsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSubPathsDisp = dispinterface
    ['{B058006B-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property Item[Index: Integer]: IVGSubPath readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    property First: IVGSubPath readonly dispid 1610743813;
    property Last: IVGSubPath readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGSubPath
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSubPath = interface(IDispatch)
    ['{B058006A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_Nodes: IVGNodes; safecall;
    function Get_Segments: IVGSegments; safecall;
    function Get_Index: Integer; safecall;
    function Get_Length: Double; safecall;
    function Get_Closed: WordBool; safecall;
    procedure Set_Closed(pVal: WordBool); safecall;
    function Get_PositionX: Double; safecall;
    procedure Set_PositionX(pVal: Double); safecall;
    function Get_PositionY: Double; safecall;
    procedure Set_PositionY(pVal: Double); safecall;
    function Get_SizeWidth: Double; safecall;
    function Get_SizeHeight: Double; safecall;
    function Selection: IVGNodeRange; safecall;
    procedure ReverseDirection; safecall;
    function Extract(out OldCurve: IVGShape): IVGShape; safecall;
    procedure Delete; safecall;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure SetPosition(PositionX: Double; PositionY: Double); safecall;
    procedure Move(DeltaX: Double; DeltaY: Double); safecall;
    function IsOnSubPath(x: Double; y: Double; HotArea: Double): cdrPositionOfPointOverShape; safecall;
    function AppendLineSegment(x: Double; y: Double; AppendAtBeginning: WordBool): IVGSegment; safecall;
    function AppendCurveSegment(x: Double; y: Double; StartingControlPointLength: Double; 
                                StartingControlPointAngle: Double; 
                                EndingControlPointLength: Double; EndingControlPointAngle: Double; 
                                AppendAtBeginning: WordBool): IVGSegment; safecall;
    procedure GetPointPositionAt(out x: Double; out y: Double; Offset: Double; 
                                 OffsetType: cdrSegmentOffsetType); safecall;
    function BreakApartAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; safecall;
    function AddNodeAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; safecall;
    function GetPerpendicularAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function GetTangentAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function GetIntersections(const Target: IVGSubPath; OffsetType: cdrSegmentOffsetType): IVGCrossPoints; safecall;
    function GetSegmentAt(Offset: Double; OffsetType: cdrSegmentOffsetType; 
                          out SegmentOffset: Double): IVGSegment; safecall;
    function Next: IVGSubPath; safecall;
    function Previous: IVGSubPath; safecall;
    function GetCurvatureAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function GetCurveSpeedAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function Get_StartNode: IVGNode; safecall;
    function Get_EndNode: IVGNode; safecall;
    function FindSegmentOffset(AbsoluteOffset: Double; out Segment: IVGSegment; 
                               out ParamOffset: Double; out Remainder: Double): WordBool; safecall;
    function Get_FirstSegment: IVGSegment; safecall;
    function Get_LastSegment: IVGSegment; safecall;
    function AppendCurveSegment2(x: Double; y: Double; StartingControlPointX: Double; 
                                 StartingControlPointY: Double; EndingControlPointX: Double; 
                                 EndingControlPointY: Double; AppendAtBeginning: WordBool): IVGSegment; safecall;
    function GetCopy: IVGCurve; safecall;
    function GetCurveInfo: PSafeArray; safecall;
    function PutCurveInfo(var Source: PSafeArray; NumElements: Integer): Integer; safecall;
    function GetPolyline(CurvePrecision: Integer): IVGCurve; safecall;
    function IsPointInside(x: Double; y: Double): WordBool; safecall;
    function IsRectOnEdge(x1: Double; y1: Double; x2: Double; y2: Double): WordBool; safecall;
    function FindClosestSegment(x: Double; y: Double; out ParamOffset: Double): IVGSegment; safecall;
    function FindNodeAtPoint(x: Double; y: Double; HotArea: Double): IVGNode; safecall;
    function FindSegmentAtPoint(x: Double; y: Double; out ParamOffset: Double; HotArea: Double): IVGSegment; safecall;
    function Get_IsClockwise: WordBool; safecall;
    function Get_Area: Double; safecall;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property Nodes: IVGNodes read Get_Nodes;
    property Segments: IVGSegments read Get_Segments;
    property Index: Integer read Get_Index;
    property Length: Double read Get_Length;
    property Closed: WordBool read Get_Closed write Set_Closed;
    property PositionX: Double read Get_PositionX write Set_PositionX;
    property PositionY: Double read Get_PositionY write Set_PositionY;
    property SizeWidth: Double read Get_SizeWidth;
    property SizeHeight: Double read Get_SizeHeight;
    property StartNode: IVGNode read Get_StartNode;
    property EndNode: IVGNode read Get_EndNode;
    property FirstSegment: IVGSegment read Get_FirstSegment;
    property LastSegment: IVGSegment read Get_LastSegment;
    property IsClockwise: WordBool read Get_IsClockwise;
    property Area: Double read Get_Area;
    property BoundingBox: IVGRect read Get_BoundingBox;
  end;

// *********************************************************************//
// DispIntf:  IVGSubPathDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSubPathDisp = dispinterface
    ['{B058006A-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property Nodes: IVGNodes readonly dispid 1610743810;
    property Segments: IVGSegments readonly dispid 1610743811;
    property Index: Integer readonly dispid 1610743812;
    property Length: Double readonly dispid 1610743813;
    property Closed: WordBool dispid 1610743814;
    property PositionX: Double dispid 1610743816;
    property PositionY: Double dispid 1610743818;
    property SizeWidth: Double readonly dispid 1610743820;
    property SizeHeight: Double readonly dispid 1610743821;
    function Selection: IVGNodeRange; dispid 1610743822;
    procedure ReverseDirection; dispid 1610743823;
    function Extract(out OldCurve: IVGShape): IVGShape; dispid 1610743824;
    procedure Delete; dispid 1610743825;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); dispid 1610743826;
    procedure SetPosition(PositionX: Double; PositionY: Double); dispid 1610743827;
    procedure Move(DeltaX: Double; DeltaY: Double); dispid 1610743828;
    function IsOnSubPath(x: Double; y: Double; HotArea: Double): cdrPositionOfPointOverShape; dispid 1610743829;
    function AppendLineSegment(x: Double; y: Double; AppendAtBeginning: WordBool): IVGSegment; dispid 1610743830;
    function AppendCurveSegment(x: Double; y: Double; StartingControlPointLength: Double; 
                                StartingControlPointAngle: Double; 
                                EndingControlPointLength: Double; EndingControlPointAngle: Double; 
                                AppendAtBeginning: WordBool): IVGSegment; dispid 1610743831;
    procedure GetPointPositionAt(out x: Double; out y: Double; Offset: Double; 
                                 OffsetType: cdrSegmentOffsetType); dispid 1610743832;
    function BreakApartAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; dispid 1610743833;
    function AddNodeAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; dispid 1610743834;
    function GetPerpendicularAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743835;
    function GetTangentAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743836;
    function GetIntersections(const Target: IVGSubPath; OffsetType: cdrSegmentOffsetType): IVGCrossPoints; dispid 1610743837;
    function GetSegmentAt(Offset: Double; OffsetType: cdrSegmentOffsetType; 
                          out SegmentOffset: Double): IVGSegment; dispid 1610743838;
    function Next: IVGSubPath; dispid 1610743839;
    function Previous: IVGSubPath; dispid 1610743840;
    function GetCurvatureAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743841;
    function GetCurveSpeedAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743842;
    property StartNode: IVGNode readonly dispid 1610743843;
    property EndNode: IVGNode readonly dispid 1610743844;
    function FindSegmentOffset(AbsoluteOffset: Double; out Segment: IVGSegment; 
                               out ParamOffset: Double; out Remainder: Double): WordBool; dispid 1610743845;
    property FirstSegment: IVGSegment readonly dispid 1610743846;
    property LastSegment: IVGSegment readonly dispid 1610743847;
    function AppendCurveSegment2(x: Double; y: Double; StartingControlPointX: Double; 
                                 StartingControlPointY: Double; EndingControlPointX: Double; 
                                 EndingControlPointY: Double; AppendAtBeginning: WordBool): IVGSegment; dispid 1610743848;
    function GetCopy: IVGCurve; dispid 1610743849;
    function GetCurveInfo: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743850;
    function PutCurveInfo(var Source: {NOT_OLEAUTO(PSafeArray)}OleVariant; NumElements: Integer): Integer; dispid 1610743851;
    function GetPolyline(CurvePrecision: Integer): IVGCurve; dispid 1610743852;
    function IsPointInside(x: Double; y: Double): WordBool; dispid 1610743853;
    function IsRectOnEdge(x1: Double; y1: Double; x2: Double; y2: Double): WordBool; dispid 1610743854;
    function FindClosestSegment(x: Double; y: Double; out ParamOffset: Double): IVGSegment; dispid 1610743855;
    function FindNodeAtPoint(x: Double; y: Double; HotArea: Double): IVGNode; dispid 1610743856;
    function FindSegmentAtPoint(x: Double; y: Double; out ParamOffset: Double; HotArea: Double): IVGSegment; dispid 1610743857;
    property IsClockwise: WordBool readonly dispid 1610743858;
    property Area: Double readonly dispid 1610743859;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; dispid 1610743860;
    property BoundingBox: IVGRect readonly dispid 1610743861;
  end;

// *********************************************************************//
// Interface: IVGNodes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580044-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGNodes = interface(IDispatch)
    ['{B0580044-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_Item(Index: Integer): IVGNode; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Range(var IndexArray: PSafeArray): IVGNodeRange; safecall;
    function All: IVGNodeRange; safecall;
    function AllExcluding(var IndexArray: PSafeArray): IVGNodeRange; safecall;
    function Get_First: IVGNode; safecall;
    function Get_Last: IVGNode; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property Item[Index: Integer]: IVGNode read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property First: IVGNode read Get_First;
    property Last: IVGNode read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGNodesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580044-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGNodesDisp = dispinterface
    ['{B0580044-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property Item[Index: Integer]: IVGNode readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function Range(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGNodeRange; dispid 1610743813;
    function All: IVGNodeRange; dispid 1610743814;
    function AllExcluding(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGNodeRange; dispid 1610743815;
    property First: IVGNode readonly dispid 1610743816;
    property Last: IVGNode readonly dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580042-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGNode = interface(IDispatch)
    ['{B0580042-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_PositionX: Double; safecall;
    procedure Set_PositionX(pVal: Double); safecall;
    function Get_PositionY: Double; safecall;
    procedure Set_PositionY(pVal: Double); safecall;
    function Get_type_: cdrNodeType; safecall;
    procedure Set_type_(pVal: cdrNodeType); safecall;
    function Get_SubPath: IVGSubPath; safecall;
    function Get_Index: Integer; safecall;
    function Get_SubPathIndex: Integer; safecall;
    function Get_AbsoluteIndex: Integer; safecall;
    function Get_IsEnding: WordBool; safecall;
    procedure JoinWith(const Target: IVGNode); safecall;
    procedure ConnectWith(const Target: IVGNode); safecall;
    procedure BreakApart; safecall;
    procedure Delete; safecall;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure SetPosition(PositionX: Double; PositionY: Double); safecall;
    procedure Move(DeltaX: Double; DeltaY: Double); safecall;
    function Next: IVGNode; safecall;
    function Previous: IVGNode; safecall;
    function GetDistanceFrom(const Node: IVGNode): Double; safecall;
    function Get_Segment: IVGSegment; safecall;
    function Get_PrevSegment: IVGSegment; safecall;
    function Get_NextSegment: IVGSegment; safecall;
    function Fillet(Radius: Double; CombineSmoothSegments: WordBool): WordBool; safecall;
    function Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool): WordBool; safecall;
    function Scallop(Radius: Double; CombineSmoothSegments: WordBool): WordBool; safecall;
    function Get_Selected: WordBool; safecall;
    procedure Set_Selected(pVal: WordBool); safecall;
    procedure CreateSelection; safecall;
    function ExtendSubPaths(const Node2: IVGNode; JoinPaths: WordBool): WordBool; safecall;
    procedure AveragePositionWith(const Node2: IVGNode; JoinPaths: WordBool); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property PositionX: Double read Get_PositionX write Set_PositionX;
    property PositionY: Double read Get_PositionY write Set_PositionY;
    property type_: cdrNodeType read Get_type_ write Set_type_;
    property SubPath: IVGSubPath read Get_SubPath;
    property Index: Integer read Get_Index;
    property SubPathIndex: Integer read Get_SubPathIndex;
    property AbsoluteIndex: Integer read Get_AbsoluteIndex;
    property IsEnding: WordBool read Get_IsEnding;
    property Segment: IVGSegment read Get_Segment;
    property PrevSegment: IVGSegment read Get_PrevSegment;
    property NextSegment: IVGSegment read Get_NextSegment;
    property Selected: WordBool read Get_Selected write Set_Selected;
  end;

// *********************************************************************//
// DispIntf:  IVGNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580042-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGNodeDisp = dispinterface
    ['{B0580042-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property PositionX: Double dispid 1610743810;
    property PositionY: Double dispid 1610743812;
    property type_: cdrNodeType dispid 1610743814;
    property SubPath: IVGSubPath readonly dispid 1610743816;
    property Index: Integer readonly dispid 1610743817;
    property SubPathIndex: Integer readonly dispid 1610743818;
    property AbsoluteIndex: Integer readonly dispid 1610743819;
    property IsEnding: WordBool readonly dispid 1610743820;
    procedure JoinWith(const Target: IVGNode); dispid 1610743821;
    procedure ConnectWith(const Target: IVGNode); dispid 1610743822;
    procedure BreakApart; dispid 1610743823;
    procedure Delete; dispid 1610743824;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); dispid 1610743825;
    procedure SetPosition(PositionX: Double; PositionY: Double); dispid 1610743826;
    procedure Move(DeltaX: Double; DeltaY: Double); dispid 1610743827;
    function Next: IVGNode; dispid 1610743828;
    function Previous: IVGNode; dispid 1610743829;
    function GetDistanceFrom(const Node: IVGNode): Double; dispid 1610743830;
    property Segment: IVGSegment readonly dispid 1610743831;
    property PrevSegment: IVGSegment readonly dispid 1610743832;
    property NextSegment: IVGSegment readonly dispid 1610743833;
    function Fillet(Radius: Double; CombineSmoothSegments: WordBool): WordBool; dispid 1610743834;
    function Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool): WordBool; dispid 1610743835;
    function Scallop(Radius: Double; CombineSmoothSegments: WordBool): WordBool; dispid 1610743836;
    property Selected: WordBool dispid 1610743837;
    procedure CreateSelection; dispid 1610743839;
    function ExtendSubPaths(const Node2: IVGNode; JoinPaths: WordBool): WordBool; dispid 1610743840;
    procedure AveragePositionWith(const Node2: IVGNode; JoinPaths: WordBool); dispid 1610743841;
  end;

// *********************************************************************//
// Interface: IVGSegment
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580059-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSegment = interface(IDispatch)
    ['{B0580059-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_type_: cdrSegmentType; safecall;
    procedure Set_type_(pVal: cdrSegmentType); safecall;
    function Get_SubPath: IVGSubPath; safecall;
    function Get_Length: Double; safecall;
    function Get_Index: Integer; safecall;
    function Get_SubPathIndex: Integer; safecall;
    function Get_AbsoluteIndex: Integer; safecall;
    function Get_StartingControlPointLength: Double; safecall;
    procedure Set_StartingControlPointLength(pVal: Double); safecall;
    function Get_StartingControlPointAngle: Double; safecall;
    procedure Set_StartingControlPointAngle(pVal: Double); safecall;
    function Get_EndingControlPointLength: Double; safecall;
    procedure Set_EndingControlPointLength(pVal: Double); safecall;
    function Get_EndingControlPointAngle: Double; safecall;
    procedure Set_EndingControlPointAngle(pVal: Double); safecall;
    procedure GetPointPositionAt(out x: Double; out y: Double; Offset: Double; 
                                 OffsetType: cdrSegmentOffsetType); safecall;
    function BreakApartAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; safecall;
    function AddNodeAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; safecall;
    function GetPerpendicularAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function GetTangentAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function GetIntersections(const Target: IVGSegment; OffsetType: cdrSegmentOffsetType): IVGCrossPoints; safecall;
    function Next: IVGSegment; safecall;
    function Previous: IVGSegment; safecall;
    function Get_StartNode: IVGNode; safecall;
    function Get_EndNode: IVGNode; safecall;
    function Get_StartingControlPointX: Double; safecall;
    procedure Set_StartingControlPointX(pVal: Double); safecall;
    function Get_StartingControlPointY: Double; safecall;
    procedure Set_StartingControlPointY(pVal: Double); safecall;
    function Get_EndingControlPointX: Double; safecall;
    procedure Set_EndingControlPointX(pVal: Double); safecall;
    function Get_EndingControlPointY: Double; safecall;
    procedure Set_EndingControlPointY(pVal: Double); safecall;
    function GetPeaks(Angle: Double; out Offset1: Double; out Offset2: Double; 
                      OffsetType: cdrSegmentOffsetType): Integer; safecall;
    function GetBendPoints(out Offset1: Double; out Offset2: Double; 
                           OffsetType: cdrSegmentOffsetType): Integer; safecall;
    function GetCurvatureAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function GetCurveSpeedAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; safecall;
    function FindParamOffset(AbsoluteOffset: Double; out ParamOffset: Double; out Remainder: Double): WordBool; safecall;
    function GetAbsoluteOffset(ParamOffset: Double): Double; safecall;
    procedure GetStartingControlPointPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure SetStartingControlPointPosition(PositionX: Double; PositionY: Double); safecall;
    procedure GetEndingControlPointPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure SetEndingControlPointPosition(PositionX: Double; PositionY: Double); safecall;
    function GetCopy: IVGCurve; safecall;
    function Get_Selected: WordBool; safecall;
    procedure Set_Selected(pVal: WordBool); safecall;
    procedure CreateSelection; safecall;
    function GetPolyline(CurvePrecision: Integer): IVGCurve; safecall;
    function IsRectOnEdge(x1: Double; y1: Double; x2: Double; y2: Double): WordBool; safecall;
    function FindClosestPoint(x: Double; y: Double; out ParamOffset: Double): WordBool; safecall;
    function FindParamOffsetAtPoint(x: Double; y: Double; out ParamOffset: Double; HotArea: Double): WordBool; safecall;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property type_: cdrSegmentType read Get_type_ write Set_type_;
    property SubPath: IVGSubPath read Get_SubPath;
    property Length: Double read Get_Length;
    property Index: Integer read Get_Index;
    property SubPathIndex: Integer read Get_SubPathIndex;
    property AbsoluteIndex: Integer read Get_AbsoluteIndex;
    property StartingControlPointLength: Double read Get_StartingControlPointLength write Set_StartingControlPointLength;
    property StartingControlPointAngle: Double read Get_StartingControlPointAngle write Set_StartingControlPointAngle;
    property EndingControlPointLength: Double read Get_EndingControlPointLength write Set_EndingControlPointLength;
    property EndingControlPointAngle: Double read Get_EndingControlPointAngle write Set_EndingControlPointAngle;
    property StartNode: IVGNode read Get_StartNode;
    property EndNode: IVGNode read Get_EndNode;
    property StartingControlPointX: Double read Get_StartingControlPointX write Set_StartingControlPointX;
    property StartingControlPointY: Double read Get_StartingControlPointY write Set_StartingControlPointY;
    property EndingControlPointX: Double read Get_EndingControlPointX write Set_EndingControlPointX;
    property EndingControlPointY: Double read Get_EndingControlPointY write Set_EndingControlPointY;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property BoundingBox: IVGRect read Get_BoundingBox;
  end;

// *********************************************************************//
// DispIntf:  IVGSegmentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580059-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSegmentDisp = dispinterface
    ['{B0580059-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property type_: cdrSegmentType dispid 1610743810;
    property SubPath: IVGSubPath readonly dispid 1610743812;
    property Length: Double readonly dispid 1610743813;
    property Index: Integer readonly dispid 1610743814;
    property SubPathIndex: Integer readonly dispid 1610743815;
    property AbsoluteIndex: Integer readonly dispid 1610743816;
    property StartingControlPointLength: Double dispid 1610743817;
    property StartingControlPointAngle: Double dispid 1610743819;
    property EndingControlPointLength: Double dispid 1610743821;
    property EndingControlPointAngle: Double dispid 1610743823;
    procedure GetPointPositionAt(out x: Double; out y: Double; Offset: Double; 
                                 OffsetType: cdrSegmentOffsetType); dispid 1610743825;
    function BreakApartAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; dispid 1610743826;
    function AddNodeAt(Offset: Double; OffsetType: cdrSegmentOffsetType): IVGNode; dispid 1610743827;
    function GetPerpendicularAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743828;
    function GetTangentAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743829;
    function GetIntersections(const Target: IVGSegment; OffsetType: cdrSegmentOffsetType): IVGCrossPoints; dispid 1610743830;
    function Next: IVGSegment; dispid 1610743831;
    function Previous: IVGSegment; dispid 1610743832;
    property StartNode: IVGNode readonly dispid 1610743833;
    property EndNode: IVGNode readonly dispid 1610743834;
    property StartingControlPointX: Double dispid 1610743835;
    property StartingControlPointY: Double dispid 1610743837;
    property EndingControlPointX: Double dispid 1610743839;
    property EndingControlPointY: Double dispid 1610743841;
    function GetPeaks(Angle: Double; out Offset1: Double; out Offset2: Double; 
                      OffsetType: cdrSegmentOffsetType): Integer; dispid 1610743843;
    function GetBendPoints(out Offset1: Double; out Offset2: Double; 
                           OffsetType: cdrSegmentOffsetType): Integer; dispid 1610743844;
    function GetCurvatureAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743845;
    function GetCurveSpeedAt(Offset: Double; OffsetType: cdrSegmentOffsetType): Double; dispid 1610743846;
    function FindParamOffset(AbsoluteOffset: Double; out ParamOffset: Double; out Remainder: Double): WordBool; dispid 1610743847;
    function GetAbsoluteOffset(ParamOffset: Double): Double; dispid 1610743848;
    procedure GetStartingControlPointPosition(out PositionX: Double; out PositionY: Double); dispid 1610743849;
    procedure SetStartingControlPointPosition(PositionX: Double; PositionY: Double); dispid 1610743850;
    procedure GetEndingControlPointPosition(out PositionX: Double; out PositionY: Double); dispid 1610743851;
    procedure SetEndingControlPointPosition(PositionX: Double; PositionY: Double); dispid 1610743852;
    function GetCopy: IVGCurve; dispid 1610743853;
    property Selected: WordBool dispid 1610743854;
    procedure CreateSelection; dispid 1610743856;
    function GetPolyline(CurvePrecision: Integer): IVGCurve; dispid 1610743857;
    function IsRectOnEdge(x1: Double; y1: Double; x2: Double; y2: Double): WordBool; dispid 1610743858;
    function FindClosestPoint(x: Double; y: Double; out ParamOffset: Double): WordBool; dispid 1610743859;
    function FindParamOffsetAtPoint(x: Double; y: Double; out ParamOffset: Double; HotArea: Double): WordBool; dispid 1610743860;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; dispid 1610743861;
    property BoundingBox: IVGRect readonly dispid 1610743862;
  end;

// *********************************************************************//
// Interface: IVGCrossPoints
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580018-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCrossPoints = interface(IDispatch)
    ['{B0580018-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(Index: Integer): IVGCrossPoint; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property Item[Index: Integer]: IVGCrossPoint read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGCrossPointsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580018-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCrossPointsDisp = dispinterface
    ['{B0580018-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[Index: Integer]: IVGCrossPoint readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IVGCrossPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580017-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCrossPoint = interface(IDispatch)
    ['{B0580017-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_PositionX: Double; safecall;
    function Get_PositionY: Double; safecall;
    function Get_Offset: Double; safecall;
    function Get_Offset2: Double; safecall;
    property PositionX: Double read Get_PositionX;
    property PositionY: Double read Get_PositionY;
    property Offset: Double read Get_Offset;
    property Offset2: Double read Get_Offset2;
  end;

// *********************************************************************//
// DispIntf:  IVGCrossPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580017-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCrossPointDisp = dispinterface
    ['{B0580017-9AA4-44FD-9547-4F91EB757AC4}']
    property PositionX: Double readonly dispid 1610743808;
    property PositionY: Double readonly dispid 1610743809;
    property Offset: Double readonly dispid 1610743810;
    property Offset2: Double readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGRect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A3-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRect = interface(IDispatch)
    ['{B05800A3-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_x: Double; safecall;
    procedure Set_x(pVal: Double); safecall;
    function Get_y: Double; safecall;
    procedure Set_y(pVal: Double); safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(pVal: Double); safecall;
    function Get_Height: Double; safecall;
    procedure Set_Height(pVal: Double); safecall;
    procedure SetRect(x: Double; y: Double; Width: Double; Height: Double); safecall;
    procedure GetRect(out x: Double; out y: Double; out Width: Double; out Height: Double); safecall;
    procedure CopyAssign(const Source: IVGRect); safecall;
    function GetCopy: IVGRect; safecall;
    function Intersect(const Rect: IVGRect): IVGRect; safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Union(const Rect: IVGRect): IVGRect; safecall;
    procedure Offset(OffsetX: Double; OffsetY: Double); safecall;
    function Inflate(Left: Double; Top: Double; Right: Double; Bottom: Double): WordBool; safecall;
    function IsPointInside(x: Double; y: Double): WordBool; safecall;
    procedure Clear; safecall;
    function ChangeContext(const SrcDoc: IVGDocument; const DestDoc: IVGDocument): IVGRect; safecall;
    function Get_Left: Double; safecall;
    function Get_Right: Double; safecall;
    function Get_Top: Double; safecall;
    function Get_Bottom: Double; safecall;
    function Get_CenterX: Double; safecall;
    function Get_CenterY: Double; safecall;
    property x: Double read Get_x write Set_x;
    property y: Double read Get_y write Set_y;
    property Width: Double read Get_Width write Set_Width;
    property Height: Double read Get_Height write Set_Height;
    property IsEmpty: WordBool read Get_IsEmpty;
    property Left: Double read Get_Left;
    property Right: Double read Get_Right;
    property Top: Double read Get_Top;
    property Bottom: Double read Get_Bottom;
    property CenterX: Double read Get_CenterX;
    property CenterY: Double read Get_CenterY;
  end;

// *********************************************************************//
// DispIntf:  IVGRectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A3-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRectDisp = dispinterface
    ['{B05800A3-9AA4-44FD-9547-4F91EB757AC4}']
    property x: Double dispid 1610743808;
    property y: Double dispid 1610743810;
    property Width: Double dispid 1610743812;
    property Height: Double dispid 1610743814;
    procedure SetRect(x: Double; y: Double; Width: Double; Height: Double); dispid 1610743816;
    procedure GetRect(out x: Double; out y: Double; out Width: Double; out Height: Double); dispid 1610743817;
    procedure CopyAssign(const Source: IVGRect); dispid 1610743818;
    function GetCopy: IVGRect; dispid 1610743819;
    function Intersect(const Rect: IVGRect): IVGRect; dispid 1610743820;
    property IsEmpty: WordBool readonly dispid 1610743821;
    function Union(const Rect: IVGRect): IVGRect; dispid 1610743822;
    procedure Offset(OffsetX: Double; OffsetY: Double); dispid 1610743823;
    function Inflate(Left: Double; Top: Double; Right: Double; Bottom: Double): WordBool; dispid 1610743824;
    function IsPointInside(x: Double; y: Double): WordBool; dispid 1610743825;
    procedure Clear; dispid 1610743826;
    function ChangeContext(const SrcDoc: IVGDocument; const DestDoc: IVGDocument): IVGRect; dispid 1610743827;
    property Left: Double readonly dispid 1610743828;
    property Right: Double readonly dispid 1610743829;
    property Top: Double readonly dispid 1610743830;
    property Bottom: Double readonly dispid 1610743831;
    property CenterX: Double readonly dispid 1610743832;
    property CenterY: Double readonly dispid 1610743833;
  end;

// *********************************************************************//
// Interface: IVGNodeRange
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580043-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGNodeRange = interface(IDispatch)
    ['{B0580043-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_Item(Index: Integer): IVGNode; safecall;
    function Get_Count: Integer; safecall;
    function Get_type_: cdrNodeType; safecall;
    function Get_PositionX: Double; safecall;
    function Get_PositionY: Double; safecall;
    function Get_SizeWidth: Double; safecall;
    function Get_SizeHeight: Double; safecall;
    procedure Add(const Node: IVGNode); safecall;
    procedure Remove(Index: Integer); safecall;
    procedure Move(DeltaX: Double; DeltaY: Double; AnchorIndex: Integer; ElasticMode: WordBool); safecall;
    procedure Delete; safecall;
    procedure Stretch(RatioX: Single; RatioY: Single; UseAnchorPoint: WordBool; 
                      StretchAnchorX: Double; StretchAnchorY: Double); safecall;
    procedure Rotate(Angle: Double; UseCenterPoint: WordBool; RotationCenterX: Double; 
                     RotationCenterY: Double); safecall;
    procedure Skew(AngleX: Double; AngleY: Double; UseAnchorPoint: WordBool; SkewAnchorX: Double; 
                   SkewAnchorY: Double); safecall;
    procedure AutoReduce(PrecisionMargin: Double); safecall;
    procedure RemoveAll; safecall;
    procedure SetType(Type_: cdrNodeType); safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddRange(const NodeRange: IVGNodeRange); safecall;
    function Get_SegmentRange: IVGSegmentRange; safecall;
    procedure BreakApart; safecall;
    procedure Smoothen(Smoothness: Integer); safecall;
    procedure RemoveRange(const NodeRange: IVGNodeRange); safecall;
    procedure Fillet(Radius: Double; CombineSmoothSegments: WordBool); safecall;
    procedure Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool); safecall;
    procedure Scallop(Radius: Double; CombineSmoothSegments: WordBool); safecall;
    procedure CreateSelection; safecall;
    procedure AddToSelection; safecall;
    procedure RemoveFromSelection; safecall;
    function Get_FirstNode: IVGNode; safecall;
    function Get_LastNode: IVGNode; safecall;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property Item[Index: Integer]: IVGNode read Get_Item; default;
    property Count: Integer read Get_Count;
    property type_: cdrNodeType read Get_type_;
    property PositionX: Double read Get_PositionX;
    property PositionY: Double read Get_PositionY;
    property SizeWidth: Double read Get_SizeWidth;
    property SizeHeight: Double read Get_SizeHeight;
    property _NewEnum: IUnknown read Get__NewEnum;
    property SegmentRange: IVGSegmentRange read Get_SegmentRange;
    property FirstNode: IVGNode read Get_FirstNode;
    property LastNode: IVGNode read Get_LastNode;
    property BoundingBox: IVGRect read Get_BoundingBox;
  end;

// *********************************************************************//
// DispIntf:  IVGNodeRangeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580043-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGNodeRangeDisp = dispinterface
    ['{B0580043-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property Item[Index: Integer]: IVGNode readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743811;
    property type_: cdrNodeType readonly dispid 1610743812;
    property PositionX: Double readonly dispid 1610743813;
    property PositionY: Double readonly dispid 1610743814;
    property SizeWidth: Double readonly dispid 1610743815;
    property SizeHeight: Double readonly dispid 1610743816;
    procedure Add(const Node: IVGNode); dispid 1610743817;
    procedure Remove(Index: Integer); dispid 1610743818;
    procedure Move(DeltaX: Double; DeltaY: Double; AnchorIndex: Integer; ElasticMode: WordBool); dispid 1610743819;
    procedure Delete; dispid 1610743820;
    procedure Stretch(RatioX: Single; RatioY: Single; UseAnchorPoint: WordBool; 
                      StretchAnchorX: Double; StretchAnchorY: Double); dispid 1610743821;
    procedure Rotate(Angle: Double; UseCenterPoint: WordBool; RotationCenterX: Double; 
                     RotationCenterY: Double); dispid 1610743822;
    procedure Skew(AngleX: Double; AngleY: Double; UseAnchorPoint: WordBool; SkewAnchorX: Double; 
                   SkewAnchorY: Double); dispid 1610743823;
    procedure AutoReduce(PrecisionMargin: Double); dispid 1610743824;
    procedure RemoveAll; dispid 1610743825;
    procedure SetType(Type_: cdrNodeType); dispid 1610743826;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddRange(const NodeRange: IVGNodeRange); dispid 1610743828;
    property SegmentRange: IVGSegmentRange readonly dispid 1610743829;
    procedure BreakApart; dispid 1610743830;
    procedure Smoothen(Smoothness: Integer); dispid 1610743831;
    procedure RemoveRange(const NodeRange: IVGNodeRange); dispid 1610743832;
    procedure Fillet(Radius: Double; CombineSmoothSegments: WordBool); dispid 1610743833;
    procedure Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool); dispid 1610743834;
    procedure Scallop(Radius: Double; CombineSmoothSegments: WordBool); dispid 1610743835;
    procedure CreateSelection; dispid 1610743836;
    procedure AddToSelection; dispid 1610743837;
    procedure RemoveFromSelection; dispid 1610743838;
    property FirstNode: IVGNode readonly dispid 1610743839;
    property LastNode: IVGNode readonly dispid 1610743840;
    function GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double): WordBool; dispid 1610743841;
    property BoundingBox: IVGRect readonly dispid 1610743842;
  end;

// *********************************************************************//
// Interface: IVGSegmentRange
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSegmentRange = interface(IDispatch)
    ['{B058005A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_Item(Index: Integer): IVGSegment; safecall;
    function Get_Count: Integer; safecall;
    function Get_type_: cdrSegmentType; safecall;
    function Get_Length: Double; safecall;
    procedure Add(const Segment: IVGSegment); safecall;
    procedure Remove(Index: Integer); safecall;
    procedure AddNode; safecall;
    procedure RemoveAll; safecall;
    procedure SetType(Type_: cdrSegmentType); safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddRange(const SegmentRange: IVGSegmentRange); safecall;
    function Get_NodeRange: IVGNodeRange; safecall;
    procedure RemoveRange(const SegmentRange: IVGSegmentRange); safecall;
    function Get_FirstSegment: IVGSegment; safecall;
    function Get_LastSegment: IVGSegment; safecall;
    procedure CreateSelection; safecall;
    procedure AddToSelection; safecall;
    procedure RemoveFromSelection; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property Item[Index: Integer]: IVGSegment read Get_Item; default;
    property Count: Integer read Get_Count;
    property type_: cdrSegmentType read Get_type_;
    property Length: Double read Get_Length;
    property _NewEnum: IUnknown read Get__NewEnum;
    property NodeRange: IVGNodeRange read Get_NodeRange;
    property FirstSegment: IVGSegment read Get_FirstSegment;
    property LastSegment: IVGSegment read Get_LastSegment;
  end;

// *********************************************************************//
// DispIntf:  IVGSegmentRangeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSegmentRangeDisp = dispinterface
    ['{B058005A-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property Item[Index: Integer]: IVGSegment readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743811;
    property type_: cdrSegmentType readonly dispid 1610743812;
    property Length: Double readonly dispid 1610743813;
    procedure Add(const Segment: IVGSegment); dispid 1610743814;
    procedure Remove(Index: Integer); dispid 1610743815;
    procedure AddNode; dispid 1610743816;
    procedure RemoveAll; dispid 1610743817;
    procedure SetType(Type_: cdrSegmentType); dispid 1610743818;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddRange(const SegmentRange: IVGSegmentRange); dispid 1610743820;
    property NodeRange: IVGNodeRange readonly dispid 1610743821;
    procedure RemoveRange(const SegmentRange: IVGSegmentRange); dispid 1610743822;
    property FirstSegment: IVGSegment readonly dispid 1610743823;
    property LastSegment: IVGSegment readonly dispid 1610743824;
    procedure CreateSelection; dispid 1610743825;
    procedure AddToSelection; dispid 1610743826;
    procedure RemoveFromSelection; dispid 1610743827;
  end;

// *********************************************************************//
// Interface: IVGSegments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSegments = interface(IDispatch)
    ['{B058005B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGCurve; safecall;
    function Get_Item(Index: Integer): IVGSegment; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Range(var IndexArray: PSafeArray): IVGSegmentRange; safecall;
    function All: IVGSegmentRange; safecall;
    function AllExcluding(var IndexArray: PSafeArray): IVGSegmentRange; safecall;
    function Get_First: IVGSegment; safecall;
    function Get_Last: IVGSegment; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGCurve read Get_Parent;
    property Item[Index: Integer]: IVGSegment read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property First: IVGSegment read Get_First;
    property Last: IVGSegment read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGSegmentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSegmentsDisp = dispinterface
    ['{B058005B-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGCurve readonly dispid 1610743809;
    property Item[Index: Integer]: IVGSegment readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function Range(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGSegmentRange; dispid 1610743813;
    function All: IVGSegmentRange; dispid 1610743814;
    function AllExcluding(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGSegmentRange; dispid 1610743815;
    property First: IVGSegment readonly dispid 1610743816;
    property Last: IVGSegment readonly dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGBitmap
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBitmap = interface(IDispatch)
    ['{B058000F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_SizeWidth: Integer; safecall;
    function Get_SizeHeight: Integer; safecall;
    function Get_ResolutionX: Integer; safecall;
    function Get_ResolutionY: Integer; safecall;
    function Get_ExternallyLinked: WordBool; safecall;
    procedure ResolveLink; safecall;
    procedure UpdateLink; safecall;
    procedure Inflate(Width: Integer; Height: Integer); safecall;
    function Get_LinkFileName: WideString; safecall;
    function Get_Mode: cdrImageType; safecall;
    function SaveAs(const FileName: WideString; Filter: cdrFilter; Compression: cdrCompressionType): ICorelExportFilter; safecall;
    procedure Resample(Width: Integer; Height: Integer; AntiAlias: WordBool; ResolutionX: Double; 
                       ResolutionY: Double); safecall;
    procedure ConvertTo(Mode: cdrImageType); safecall;
    procedure ApplyBitmapEffect(const UndoString: WideString; const Command: WideString); safecall;
    procedure Crop; safecall;
    function Get_Transparent: WordBool; safecall;
    function Get_Watermarked: WordBool; safecall;
    function Get_OPILinked: WordBool; safecall;
    function Get_IsEPS: WordBool; safecall;
    function Get_ExternalLinkTime: TDateTime; safecall;
    procedure ConvertToPaletted(PaletteType: cdrImagePaletteType; DitherType: cdrDitherType; 
                                DitherIntensity: Integer; Smoothing: Integer; NumColors: Integer; 
                                ColorSensitive: WordBool; TargetColor: Integer; 
                                Importance: Integer; Lightness: Integer; ToleranceA: Integer; 
                                ToleranceB: Integer; const Palette: OleVariant); safecall;
    procedure ConvertToPaletted2(const Options: IVGStructPaletteOptions); safecall;
    procedure ConvertToBW(RenderType: cdrRenderType; Intensity: Integer; Threshold: Integer; 
                          Halftone: cdrHalftoneType; HalftoneAngle: Integer; HalftoneSize: Integer); safecall;
    procedure ResetCropEnvelope; safecall;
    function Get_Embedded: WordBool; safecall;
    function Get_Cropped: WordBool; safecall;
    function Get_CropEnvelopeModified: WordBool; safecall;
    function Get_CropEnvelope: IVGCurve; safecall;
    function Get_BoundingBoxPath: IVGCurve; safecall;
    procedure ConvertToDuotone(const Duotone: IVGDuotone); safecall;
    function Get_Duotone: IVGDuotone; safecall;
    procedure Set_LinkFileName(const pVal: WideString); safecall;
    function Trace(TraceType: cdrTraceType; Smoothing: Smallint; DetailLevelPercent: Smallint; 
                   ColorMode: cdrColorType; PaletteID: cdrPaletteID; ColorCount: Integer; 
                   DeleteOriginalObject: WordBool; RemoveBackground: WordBool; 
                   RemoveEntireBackColor: WordBool): IVGTraceSettings; safecall;
    property SizeWidth: Integer read Get_SizeWidth;
    property SizeHeight: Integer read Get_SizeHeight;
    property ResolutionX: Integer read Get_ResolutionX;
    property ResolutionY: Integer read Get_ResolutionY;
    property ExternallyLinked: WordBool read Get_ExternallyLinked;
    property LinkFileName: WideString read Get_LinkFileName write Set_LinkFileName;
    property Mode: cdrImageType read Get_Mode;
    property Transparent: WordBool read Get_Transparent;
    property Watermarked: WordBool read Get_Watermarked;
    property OPILinked: WordBool read Get_OPILinked;
    property IsEPS: WordBool read Get_IsEPS;
    property ExternalLinkTime: TDateTime read Get_ExternalLinkTime;
    property Embedded: WordBool read Get_Embedded;
    property Cropped: WordBool read Get_Cropped;
    property CropEnvelopeModified: WordBool read Get_CropEnvelopeModified;
    property CropEnvelope: IVGCurve read Get_CropEnvelope;
    property BoundingBoxPath: IVGCurve read Get_BoundingBoxPath;
    property Duotone: IVGDuotone read Get_Duotone;
  end;

// *********************************************************************//
// DispIntf:  IVGBitmapDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBitmapDisp = dispinterface
    ['{B058000F-9AA4-44FD-9547-4F91EB757AC4}']
    property SizeWidth: Integer readonly dispid 1610743808;
    property SizeHeight: Integer readonly dispid 1610743809;
    property ResolutionX: Integer readonly dispid 1610743810;
    property ResolutionY: Integer readonly dispid 1610743811;
    property ExternallyLinked: WordBool readonly dispid 1610743812;
    procedure ResolveLink; dispid 1610743813;
    procedure UpdateLink; dispid 1610743814;
    procedure Inflate(Width: Integer; Height: Integer); dispid 1610743815;
    property LinkFileName: WideString dispid 1610743816;
    property Mode: cdrImageType readonly dispid 1610743817;
    function SaveAs(const FileName: WideString; Filter: cdrFilter; Compression: cdrCompressionType): ICorelExportFilter; dispid 1610743818;
    procedure Resample(Width: Integer; Height: Integer; AntiAlias: WordBool; ResolutionX: Double; 
                       ResolutionY: Double); dispid 1610743819;
    procedure ConvertTo(Mode: cdrImageType); dispid 1610743820;
    procedure ApplyBitmapEffect(const UndoString: WideString; const Command: WideString); dispid 1610743821;
    procedure Crop; dispid 1610743822;
    property Transparent: WordBool readonly dispid 1610743823;
    property Watermarked: WordBool readonly dispid 1610743824;
    property OPILinked: WordBool readonly dispid 1610743825;
    property IsEPS: WordBool readonly dispid 1610743826;
    property ExternalLinkTime: TDateTime readonly dispid 1610743827;
    procedure ConvertToPaletted(PaletteType: cdrImagePaletteType; DitherType: cdrDitherType; 
                                DitherIntensity: Integer; Smoothing: Integer; NumColors: Integer; 
                                ColorSensitive: WordBool; TargetColor: Integer; 
                                Importance: Integer; Lightness: Integer; ToleranceA: Integer; 
                                ToleranceB: Integer; const Palette: OleVariant); dispid 1610743828;
    procedure ConvertToPaletted2(const Options: IVGStructPaletteOptions); dispid 1610743829;
    procedure ConvertToBW(RenderType: cdrRenderType; Intensity: Integer; Threshold: Integer; 
                          Halftone: cdrHalftoneType; HalftoneAngle: Integer; HalftoneSize: Integer); dispid 1610743830;
    procedure ResetCropEnvelope; dispid 1610743831;
    property Embedded: WordBool readonly dispid 1610743832;
    property Cropped: WordBool readonly dispid 1610743833;
    property CropEnvelopeModified: WordBool readonly dispid 1610743834;
    property CropEnvelope: IVGCurve readonly dispid 1610743835;
    property BoundingBoxPath: IVGCurve readonly dispid 1610743836;
    procedure ConvertToDuotone(const Duotone: IVGDuotone); dispid 1610743837;
    property Duotone: IVGDuotone readonly dispid 1610743838;
    function Trace(TraceType: cdrTraceType; Smoothing: Smallint; DetailLevelPercent: Smallint; 
                   ColorMode: cdrColorType; PaletteID: cdrPaletteID; ColorCount: Integer; 
                   DeleteOriginalObject: WordBool; RemoveBackground: WordBool; 
                   RemoveEntireBackColor: WordBool): IVGTraceSettings; dispid 1610743840;
  end;

// *********************************************************************//
// Interface: IVGStructPaletteOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580067-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructPaletteOptions = interface(IDispatch)
    ['{B0580067-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_NumColors(pVal: Integer); safecall;
    function Get_NumColors: Integer; safecall;
    procedure Set_DitherIntensity(pVal: Integer); safecall;
    function Get_DitherIntensity: Integer; safecall;
    procedure Set_Smoothing(pVal: Integer); safecall;
    function Get_Smoothing: Integer; safecall;
    procedure Set_DitherType(pVal: cdrDitherType); safecall;
    function Get_DitherType: cdrDitherType; safecall;
    procedure Set_PaletteType(pVal: cdrImagePaletteType); safecall;
    function Get_PaletteType: cdrImagePaletteType; safecall;
    procedure Set_Importance(pVal: Integer); safecall;
    function Get_Importance: Integer; safecall;
    procedure Set_Lightness(pVal: Integer); safecall;
    function Get_Lightness: Integer; safecall;
    procedure Set_ToleranceA(pVal: Integer); safecall;
    function Get_ToleranceA: Integer; safecall;
    procedure Set_ToleranceB(pVal: Integer); safecall;
    function Get_ToleranceB: Integer; safecall;
    procedure Set_ColorSensitive(pVal: WordBool); safecall;
    function Get_ColorSensitive: WordBool; safecall;
    procedure Set_TargetColor(pVal: Integer); safecall;
    function Get_TargetColor: Integer; safecall;
    procedure Set_Palette(pVal: OleVariant); safecall;
    function Get_Palette: OleVariant; safecall;
    property NumColors: Integer read Get_NumColors write Set_NumColors;
    property DitherIntensity: Integer read Get_DitherIntensity write Set_DitherIntensity;
    property Smoothing: Integer read Get_Smoothing write Set_Smoothing;
    property DitherType: cdrDitherType read Get_DitherType write Set_DitherType;
    property PaletteType: cdrImagePaletteType read Get_PaletteType write Set_PaletteType;
    property Importance: Integer read Get_Importance write Set_Importance;
    property Lightness: Integer read Get_Lightness write Set_Lightness;
    property ToleranceA: Integer read Get_ToleranceA write Set_ToleranceA;
    property ToleranceB: Integer read Get_ToleranceB write Set_ToleranceB;
    property ColorSensitive: WordBool read Get_ColorSensitive write Set_ColorSensitive;
    property TargetColor: Integer read Get_TargetColor write Set_TargetColor;
    property Palette: OleVariant read Get_Palette write Set_Palette;
  end;

// *********************************************************************//
// DispIntf:  IVGStructPaletteOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580067-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructPaletteOptionsDisp = dispinterface
    ['{B0580067-9AA4-44FD-9547-4F91EB757AC4}']
    property NumColors: Integer dispid 1610743808;
    property DitherIntensity: Integer dispid 1610743810;
    property Smoothing: Integer dispid 1610743812;
    property DitherType: cdrDitherType dispid 1610743814;
    property PaletteType: cdrImagePaletteType dispid 1610743816;
    property Importance: Integer dispid 1610743818;
    property Lightness: Integer dispid 1610743820;
    property ToleranceA: Integer dispid 1610743822;
    property ToleranceB: Integer dispid 1610743824;
    property ColorSensitive: WordBool dispid 1610743826;
    property TargetColor: Integer dispid 1610743828;
    property Palette: OleVariant dispid 1610743830;
  end;

// *********************************************************************//
// Interface: IVGDuotone
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580091-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDuotone = interface(IDispatch)
    ['{B0580091-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrDuotoneType; safecall;
    procedure Set_type_(pVal: cdrDuotoneType); safecall;
    function Get_UseOverprints: WordBool; safecall;
    procedure Set_UseOverprints(pVal: WordBool); safecall;
    function Get_OverprintCount: Integer; safecall;
    function Get_Overprints(Index: Integer): IVGDuotoneOverprint; safecall;
    function Get_InkCount: Integer; safecall;
    function Get_Inks(Index: Integer): IVGDuotoneInk; safecall;
    function GetCopy: IVGDuotone; safecall;
    procedure CopyAssign(const Duotone: IVGDuotone); safecall;
    procedure ResetOverprints; safecall;
    function Load(const FileName: WideString): WordBool; safecall;
    function Save(const FileName: WideString): WordBool; safecall;
    property type_: cdrDuotoneType read Get_type_ write Set_type_;
    property UseOverprints: WordBool read Get_UseOverprints write Set_UseOverprints;
    property OverprintCount: Integer read Get_OverprintCount;
    property Overprints[Index: Integer]: IVGDuotoneOverprint read Get_Overprints;
    property InkCount: Integer read Get_InkCount;
    property Inks[Index: Integer]: IVGDuotoneInk read Get_Inks;
  end;

// *********************************************************************//
// DispIntf:  IVGDuotoneDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580091-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDuotoneDisp = dispinterface
    ['{B0580091-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrDuotoneType dispid 1610743808;
    property UseOverprints: WordBool dispid 1610743810;
    property OverprintCount: Integer readonly dispid 1610743812;
    property Overprints[Index: Integer]: IVGDuotoneOverprint readonly dispid 1610743813;
    property InkCount: Integer readonly dispid 1610743814;
    property Inks[Index: Integer]: IVGDuotoneInk readonly dispid 1610743815;
    function GetCopy: IVGDuotone; dispid 1610743816;
    procedure CopyAssign(const Duotone: IVGDuotone); dispid 1610743817;
    procedure ResetOverprints; dispid 1610743818;
    function Load(const FileName: WideString): WordBool; dispid 1610743819;
    function Save(const FileName: WideString): WordBool; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IVGDuotoneOverprint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580092-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDuotoneOverprint = interface(IDispatch)
    ['{B0580092-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Cyan: Integer; safecall;
    procedure Set_Cyan(pVal: Integer); safecall;
    function Get_Magenta: Integer; safecall;
    procedure Set_Magenta(pVal: Integer); safecall;
    function Get_Yellow: Integer; safecall;
    procedure Set_Yellow(pVal: Integer); safecall;
    function Get_Black: Integer; safecall;
    procedure Set_Black(pVal: Integer); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    procedure Reset; safecall;
    procedure SetValues(Cyan: Integer; Magenta: Integer; Yellow: Integer; Black: Integer); safecall;
    property Cyan: Integer read Get_Cyan write Set_Cyan;
    property Magenta: Integer read Get_Magenta write Set_Magenta;
    property Yellow: Integer read Get_Yellow write Set_Yellow;
    property Black: Integer read Get_Black write Set_Black;
    property Color: IVGColor read Get_Color write Set_Color;
  end;

// *********************************************************************//
// DispIntf:  IVGDuotoneOverprintDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580092-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDuotoneOverprintDisp = dispinterface
    ['{B0580092-9AA4-44FD-9547-4F91EB757AC4}']
    property Cyan: Integer dispid 1610743808;
    property Magenta: Integer dispid 1610743810;
    property Yellow: Integer dispid 1610743812;
    property Black: Integer dispid 1610743814;
    property Color: IVGColor dispid 1610743816;
    procedure Reset; dispid 1610743818;
    procedure SetValues(Cyan: Integer; Magenta: Integer; Yellow: Integer; Black: Integer); dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IVGColor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580012-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColor = interface(IDispatch)
    ['{B0580012-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_type_: cdrColorType; safecall;
    procedure RGBAssign(Red: Integer; Green: Integer; Blue: Integer); safecall;
    function Get_RGBRed: Integer; safecall;
    procedure Set_RGBRed(pVal: Integer); safecall;
    function Get_RGBGreen: Integer; safecall;
    procedure Set_RGBGreen(pVal: Integer); safecall;
    function Get_RGBBlue: Integer; safecall;
    procedure Set_RGBBlue(pVal: Integer); safecall;
    procedure ConvertToRGB; safecall;
    procedure CMYKAssign(Cyan: Integer; Magenta: Integer; Yellow: Integer; Black: Integer); safecall;
    function Get_CMYKCyan: Integer; safecall;
    procedure Set_CMYKCyan(pVal: Integer); safecall;
    function Get_CMYKYellow: Integer; safecall;
    procedure Set_CMYKYellow(pVal: Integer); safecall;
    function Get_CMYKMagenta: Integer; safecall;
    procedure Set_CMYKMagenta(pVal: Integer); safecall;
    function Get_CMYKBlack: Integer; safecall;
    procedure Set_CMYKBlack(pVal: Integer); safecall;
    procedure ConvertToCMYK; safecall;
    procedure CMYAssign(Cyan: Integer; Magenta: Integer; Yellow: Integer); safecall;
    function Get_CMYCyan: Integer; safecall;
    procedure Set_CMYCyan(pVal: Integer); safecall;
    function Get_CMYMagenta: Integer; safecall;
    procedure Set_CMYMagenta(pVal: Integer); safecall;
    function Get_CMYYellow: Integer; safecall;
    procedure Set_CMYYellow(pVal: Integer); safecall;
    procedure ConvertToCMY; safecall;
    procedure HSBAssign(Hue: Integer; Saturation: Integer; Brightness: Integer); safecall;
    function Get_HSBHue: Integer; safecall;
    procedure Set_HSBHue(pVal: Integer); safecall;
    function Get_HSBSaturation: Integer; safecall;
    procedure Set_HSBSaturation(pVal: Integer); safecall;
    function Get_HSBBrightness: Integer; safecall;
    procedure Set_HSBBrightness(pVal: Integer); safecall;
    procedure ConvertToHSB; safecall;
    procedure HLSAssign(Hue: Integer; Lightness: Integer; Saturation: Integer); safecall;
    function Get_HLSHue: Integer; safecall;
    procedure Set_HLSHue(pVal: Integer); safecall;
    function Get_HLSLightness: Integer; safecall;
    procedure Set_HLSLightness(pVal: Integer); safecall;
    function Get_HLSSaturation: Integer; safecall;
    procedure Set_HLSSaturation(pVal: Integer); safecall;
    procedure ConvertToHLS; safecall;
    procedure BWAssign(White: WordBool); safecall;
    function Get_BW: WordBool; safecall;
    procedure Set_BW(pVal: WordBool); safecall;
    procedure ConvertToBW; safecall;
    procedure GrayAssign(GrayValue: Integer); safecall;
    function Get_Gray: Integer; safecall;
    procedure Set_Gray(pVal: Integer); safecall;
    procedure ConvertToGray; safecall;
    procedure CorelScriptAssign(ColorModel: Integer; V1: Integer; V2: Integer; V3: Integer; 
                                V4: Integer; V5: Integer; V6: Integer; V7: Integer); safecall;
    procedure CorelScriptGetComponent(out ColorModel: Integer; out V1: Integer; out V2: Integer; 
                                      out V3: Integer; out V4: Integer; out V5: Integer; 
                                      out V6: Integer; out V7: Integer); safecall;
    procedure UserAssign(ParentWindowHandle: Integer); safecall;
    procedure CopyAssign(const Color: IVGColor); safecall;
    function Get_Name(Components: WordBool): WideString; safecall;
    procedure YIQAssign(y: Integer; I: Integer; Q: Integer); safecall;
    function Get_YIQLuminanceY: Integer; safecall;
    procedure Set_YIQLuminanceY(pVal: Integer); safecall;
    function Get_YIQChromaI: Integer; safecall;
    procedure Set_YIQChromaI(pVal: Integer); safecall;
    function Get_YIQChromaQ: Integer; safecall;
    procedure Set_YIQChromaQ(pVal: Integer); safecall;
    procedure ConvertToYIQ; safecall;
    procedure LabAssign(L: Integer; A: Integer; B: Integer); safecall;
    function Get_LabLuminance: Integer; safecall;
    procedure Set_LabLuminance(pVal: Integer); safecall;
    function Get_LabComponentA: Integer; safecall;
    procedure Set_LabComponentA(pVal: Integer); safecall;
    function Get_LabComponentB: Integer; safecall;
    procedure Set_LabComponentB(pVal: Integer); safecall;
    procedure ConvertToLab; safecall;
    procedure RegistrationAssign; safecall;
    procedure FixedAssign(PaletteID: cdrPaletteID; PaletteIndex: Integer; Tint: Integer); safecall;
    function Get_PaletteID: cdrPaletteID; safecall;
    function Get_PaletteIndex: Integer; safecall;
    procedure Set_PaletteIndex(pVal: Integer); safecall;
    function Get_Tint: Integer; safecall;
    procedure Set_Tint(pVal: Integer); safecall;
    procedure ConvertToFixed(PaletteID: cdrPaletteID); safecall;
    function UserAssignEx(ParentWindowHandle: Integer): WordBool; safecall;
    procedure SetName(const Name: WideString); safecall;
    procedure BlendWith(const Color: IVGColor; MixRatio: Integer); safecall;
    function IsSame(const Color: IVGColor): WordBool; safecall;
    function Get_IsInGamut: WordBool; safecall;
    function Get_InGamutColor: IVGColor; safecall;
    function Get_IsCMYK: WordBool; safecall;
    function Get_IsGray: WordBool; safecall;
    function Get_IsWhite: WordBool; safecall;
    function Get_IsSpot: WordBool; safecall;
    function Get_IsTintable: WordBool; safecall;
    function Get_IsValidDuotoneColor: WordBool; safecall;
    function Get_ValidDuotoneColor: IVGColor; safecall;
    function GetColorDistanceFrom(const Color: IVGColor): Integer; safecall;
    function IsSimilar(const Color: IVGColor): WordBool; safecall;
    function ToString: WideString; safecall;
    function StringAssign(const ColorString: WideString): WordBool; safecall;
    procedure Invalidate; safecall;
    function Get_HexValue: WideString; safecall;
    procedure Set_HexValue(const pVal: WideString); safecall;
    function GetCopy: IVGColor; safecall;
    function Get_RGBValue: Integer; safecall;
    procedure Set_RGBValue(pVal: Integer); safecall;
    procedure CopyAppearance(const Color: IVGColor; const SourceColorContext: IVGColorContext); safecall;
    function Get_ColorContext: IVGColorContext; safecall;
    function ConvertTo(ColorType: cdrColorType; const DestinationColorContext: IVGColorContext; 
                       const SourceColorContext: IVGColorContext): WordBool; safecall;
    function Get_Palette: IVGPalette; safecall;
    procedure SpotAssign(const PaletteIdentifier: WideString; SpotColorID: Integer; Tint: Integer); safecall;
    procedure SpotAssignByName(const PaletteIdentifier: WideString; 
                               const SpotColorName: WideString; Tint: Integer); safecall;
    procedure ConvertToPalette(const PaletteIdentifier: WideString); safecall;
    function Get_SpotColorID: Integer; safecall;
    procedure Set_SpotColorID(pVal: Integer); safecall;
    function Get_SpotColorName: WideString; safecall;
    procedure PaletteAssign(const PaletteIdentifier: WideString; ColorIndex: Integer); safecall;
    function Get_PaletteIdentifier: WideString; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property type_: cdrColorType read Get_type_;
    property RGBRed: Integer read Get_RGBRed write Set_RGBRed;
    property RGBGreen: Integer read Get_RGBGreen write Set_RGBGreen;
    property RGBBlue: Integer read Get_RGBBlue write Set_RGBBlue;
    property CMYKCyan: Integer read Get_CMYKCyan write Set_CMYKCyan;
    property CMYKYellow: Integer read Get_CMYKYellow write Set_CMYKYellow;
    property CMYKMagenta: Integer read Get_CMYKMagenta write Set_CMYKMagenta;
    property CMYKBlack: Integer read Get_CMYKBlack write Set_CMYKBlack;
    property CMYCyan: Integer read Get_CMYCyan write Set_CMYCyan;
    property CMYMagenta: Integer read Get_CMYMagenta write Set_CMYMagenta;
    property CMYYellow: Integer read Get_CMYYellow write Set_CMYYellow;
    property HSBHue: Integer read Get_HSBHue write Set_HSBHue;
    property HSBSaturation: Integer read Get_HSBSaturation write Set_HSBSaturation;
    property HSBBrightness: Integer read Get_HSBBrightness write Set_HSBBrightness;
    property HLSHue: Integer read Get_HLSHue write Set_HLSHue;
    property HLSLightness: Integer read Get_HLSLightness write Set_HLSLightness;
    property HLSSaturation: Integer read Get_HLSSaturation write Set_HLSSaturation;
    property BW: WordBool read Get_BW write Set_BW;
    property Gray: Integer read Get_Gray write Set_Gray;
    property Name[Components: WordBool]: WideString read Get_Name;
    property YIQLuminanceY: Integer read Get_YIQLuminanceY write Set_YIQLuminanceY;
    property YIQChromaI: Integer read Get_YIQChromaI write Set_YIQChromaI;
    property YIQChromaQ: Integer read Get_YIQChromaQ write Set_YIQChromaQ;
    property LabLuminance: Integer read Get_LabLuminance write Set_LabLuminance;
    property LabComponentA: Integer read Get_LabComponentA write Set_LabComponentA;
    property LabComponentB: Integer read Get_LabComponentB write Set_LabComponentB;
    property PaletteID: cdrPaletteID read Get_PaletteID;
    property PaletteIndex: Integer read Get_PaletteIndex write Set_PaletteIndex;
    property Tint: Integer read Get_Tint write Set_Tint;
    property IsInGamut: WordBool read Get_IsInGamut;
    property InGamutColor: IVGColor read Get_InGamutColor;
    property IsCMYK: WordBool read Get_IsCMYK;
    property IsGray: WordBool read Get_IsGray;
    property IsWhite: WordBool read Get_IsWhite;
    property IsSpot: WordBool read Get_IsSpot;
    property IsTintable: WordBool read Get_IsTintable;
    property IsValidDuotoneColor: WordBool read Get_IsValidDuotoneColor;
    property ValidDuotoneColor: IVGColor read Get_ValidDuotoneColor;
    property HexValue: WideString read Get_HexValue write Set_HexValue;
    property RGBValue: Integer read Get_RGBValue write Set_RGBValue;
    property ColorContext: IVGColorContext read Get_ColorContext;
    property Palette: IVGPalette read Get_Palette;
    property SpotColorID: Integer read Get_SpotColorID write Set_SpotColorID;
    property SpotColorName: WideString read Get_SpotColorName;
    property PaletteIdentifier: WideString read Get_PaletteIdentifier;
  end;

// *********************************************************************//
// DispIntf:  IVGColorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580012-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorDisp = dispinterface
    ['{B0580012-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property type_: cdrColorType readonly dispid 1610743810;
    procedure RGBAssign(Red: Integer; Green: Integer; Blue: Integer); dispid 1610743811;
    property RGBRed: Integer dispid 1610743812;
    property RGBGreen: Integer dispid 1610743814;
    property RGBBlue: Integer dispid 1610743816;
    procedure ConvertToRGB; dispid 1610743818;
    procedure CMYKAssign(Cyan: Integer; Magenta: Integer; Yellow: Integer; Black: Integer); dispid 1610743819;
    property CMYKCyan: Integer dispid 1610743820;
    property CMYKYellow: Integer dispid 1610743822;
    property CMYKMagenta: Integer dispid 1610743824;
    property CMYKBlack: Integer dispid 1610743826;
    procedure ConvertToCMYK; dispid 1610743828;
    procedure CMYAssign(Cyan: Integer; Magenta: Integer; Yellow: Integer); dispid 1610743829;
    property CMYCyan: Integer dispid 1610743830;
    property CMYMagenta: Integer dispid 1610743832;
    property CMYYellow: Integer dispid 1610743834;
    procedure ConvertToCMY; dispid 1610743836;
    procedure HSBAssign(Hue: Integer; Saturation: Integer; Brightness: Integer); dispid 1610743837;
    property HSBHue: Integer dispid 1610743838;
    property HSBSaturation: Integer dispid 1610743840;
    property HSBBrightness: Integer dispid 1610743842;
    procedure ConvertToHSB; dispid 1610743844;
    procedure HLSAssign(Hue: Integer; Lightness: Integer; Saturation: Integer); dispid 1610743845;
    property HLSHue: Integer dispid 1610743846;
    property HLSLightness: Integer dispid 1610743848;
    property HLSSaturation: Integer dispid 1610743850;
    procedure ConvertToHLS; dispid 1610743852;
    procedure BWAssign(White: WordBool); dispid 1610743853;
    property BW: WordBool dispid 1610743854;
    procedure ConvertToBW; dispid 1610743856;
    procedure GrayAssign(GrayValue: Integer); dispid 1610743857;
    property Gray: Integer dispid 1610743858;
    procedure ConvertToGray; dispid 1610743860;
    procedure CorelScriptAssign(ColorModel: Integer; V1: Integer; V2: Integer; V3: Integer; 
                                V4: Integer; V5: Integer; V6: Integer; V7: Integer); dispid 1610743861;
    procedure CorelScriptGetComponent(out ColorModel: Integer; out V1: Integer; out V2: Integer; 
                                      out V3: Integer; out V4: Integer; out V5: Integer; 
                                      out V6: Integer; out V7: Integer); dispid 1610743862;
    procedure UserAssign(ParentWindowHandle: Integer); dispid 1610743863;
    procedure CopyAssign(const Color: IVGColor); dispid 1610743864;
    property Name[Components: WordBool]: WideString readonly dispid 1610743865;
    procedure YIQAssign(y: Integer; I: Integer; Q: Integer); dispid 1610743866;
    property YIQLuminanceY: Integer dispid 1610743867;
    property YIQChromaI: Integer dispid 1610743869;
    property YIQChromaQ: Integer dispid 1610743871;
    procedure ConvertToYIQ; dispid 1610743873;
    procedure LabAssign(L: Integer; A: Integer; B: Integer); dispid 1610743874;
    property LabLuminance: Integer dispid 1610743875;
    property LabComponentA: Integer dispid 1610743877;
    property LabComponentB: Integer dispid 1610743879;
    procedure ConvertToLab; dispid 1610743881;
    procedure RegistrationAssign; dispid 1610743882;
    procedure FixedAssign(PaletteID: cdrPaletteID; PaletteIndex: Integer; Tint: Integer); dispid 1610743883;
    property PaletteID: cdrPaletteID readonly dispid 1610743884;
    property PaletteIndex: Integer dispid 1610743885;
    property Tint: Integer dispid 1610743887;
    procedure ConvertToFixed(PaletteID: cdrPaletteID); dispid 1610743889;
    function UserAssignEx(ParentWindowHandle: Integer): WordBool; dispid 1610743890;
    procedure SetName(const Name: WideString); dispid 1610743891;
    procedure BlendWith(const Color: IVGColor; MixRatio: Integer); dispid 1610743892;
    function IsSame(const Color: IVGColor): WordBool; dispid 1610743893;
    property IsInGamut: WordBool readonly dispid 1610743894;
    property InGamutColor: IVGColor readonly dispid 1610743895;
    property IsCMYK: WordBool readonly dispid 1610743896;
    property IsGray: WordBool readonly dispid 1610743897;
    property IsWhite: WordBool readonly dispid 1610743898;
    property IsSpot: WordBool readonly dispid 1610743899;
    property IsTintable: WordBool readonly dispid 1610743900;
    property IsValidDuotoneColor: WordBool readonly dispid 1610743901;
    property ValidDuotoneColor: IVGColor readonly dispid 1610743902;
    function GetColorDistanceFrom(const Color: IVGColor): Integer; dispid 1610743903;
    function IsSimilar(const Color: IVGColor): WordBool; dispid 1610743904;
    function ToString: WideString; dispid 1610743905;
    function StringAssign(const ColorString: WideString): WordBool; dispid 1610743906;
    procedure Invalidate; dispid 1610743907;
    property HexValue: WideString dispid 1610743908;
    function GetCopy: IVGColor; dispid 1610743910;
    property RGBValue: Integer dispid 1610743911;
    procedure CopyAppearance(const Color: IVGColor; const SourceColorContext: IVGColorContext); dispid 1610743913;
    property ColorContext: IVGColorContext readonly dispid 1610743914;
    function ConvertTo(ColorType: cdrColorType; const DestinationColorContext: IVGColorContext; 
                       const SourceColorContext: IVGColorContext): WordBool; dispid 1610743915;
    property Palette: IVGPalette readonly dispid 1610743916;
    procedure SpotAssign(const PaletteIdentifier: WideString; SpotColorID: Integer; Tint: Integer); dispid 1610743917;
    procedure SpotAssignByName(const PaletteIdentifier: WideString; 
                               const SpotColorName: WideString; Tint: Integer); dispid 1610743918;
    procedure ConvertToPalette(const PaletteIdentifier: WideString); dispid 1610743919;
    property SpotColorID: Integer dispid 1610743920;
    property SpotColorName: WideString readonly dispid 1610743922;
    procedure PaletteAssign(const PaletteIdentifier: WideString; ColorIndex: Integer); dispid 1610743923;
    property PaletteIdentifier: WideString readonly dispid 1610743924;
  end;

// *********************************************************************//
// Interface: IVGColorContext
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B0-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorContext = interface(IDispatch)
    ['{B05800B0-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_RGBColorProfile: IVGColorProfile; safecall;
    procedure Set_RGBColorProfile(const ppVal: IVGColorProfile); safecall;
    function Get_CMYKColorProfile: IVGColorProfile; safecall;
    procedure Set_CMYKColorProfile(const ppVal: IVGColorProfile); safecall;
    function Get_GrayscaleColorProfile: IVGColorProfile; safecall;
    procedure Set_GrayscaleColorProfile(const ppVal: IVGColorProfile); safecall;
    function Get_RenderingIntent: clrRenderingIntent; safecall;
    procedure Set_RenderingIntent(pVal: clrRenderingIntent); safecall;
    function Get_BlendingColorModel: clrColorModel; safecall;
    procedure Set_BlendingColorModel(pVal: clrColorModel); safecall;
    function GetCopy: IVGColorContext; safecall;
    procedure CopyAssign(const ColorContext: IVGColorContext); safecall;
    function Get_ColorProfile(ColorModel: clrColorModel): IVGColorProfile; safecall;
    procedure Set_ColorProfile(ColorModel: clrColorModel; const ppVal: IVGColorProfile); safecall;
    function Merge(const ColorContext: IVGColorContext): WordBool; safecall;
    function IsSame(const ColorContext: IVGColorContext): WordBool; safecall;
    function Get_ColorProfiles: IVGColorProfiles; safecall;
    function Get_ReadOnly: WordBool; safecall;
    function Get_ColorProfileNameList: WideString; safecall;
    property RGBColorProfile: IVGColorProfile read Get_RGBColorProfile write Set_RGBColorProfile;
    property CMYKColorProfile: IVGColorProfile read Get_CMYKColorProfile write Set_CMYKColorProfile;
    property GrayscaleColorProfile: IVGColorProfile read Get_GrayscaleColorProfile write Set_GrayscaleColorProfile;
    property RenderingIntent: clrRenderingIntent read Get_RenderingIntent write Set_RenderingIntent;
    property BlendingColorModel: clrColorModel read Get_BlendingColorModel write Set_BlendingColorModel;
    property ColorProfile[ColorModel: clrColorModel]: IVGColorProfile read Get_ColorProfile write Set_ColorProfile;
    property ColorProfiles: IVGColorProfiles read Get_ColorProfiles;
    property ReadOnly: WordBool read Get_ReadOnly;
    property ColorProfileNameList: WideString read Get_ColorProfileNameList;
  end;

// *********************************************************************//
// DispIntf:  IVGColorContextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B0-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorContextDisp = dispinterface
    ['{B05800B0-9AA4-44FD-9547-4F91EB757AC4}']
    property RGBColorProfile: IVGColorProfile dispid 1610743808;
    property CMYKColorProfile: IVGColorProfile dispid 1610743810;
    property GrayscaleColorProfile: IVGColorProfile dispid 1610743812;
    property RenderingIntent: clrRenderingIntent dispid 1610743814;
    property BlendingColorModel: clrColorModel dispid 1610743816;
    function GetCopy: IVGColorContext; dispid 1610743818;
    procedure CopyAssign(const ColorContext: IVGColorContext); dispid 1610743819;
    property ColorProfile[ColorModel: clrColorModel]: IVGColorProfile dispid 1610743820;
    function Merge(const ColorContext: IVGColorContext): WordBool; dispid 1610743822;
    function IsSame(const ColorContext: IVGColorContext): WordBool; dispid 1610743823;
    property ColorProfiles: IVGColorProfiles readonly dispid 1610743824;
    property ReadOnly: WordBool readonly dispid 1610743825;
    property ColorProfileNameList: WideString readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IVGColorProfile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580098-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorProfile = interface(IDispatch)
    ['{B0580098-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    function Get_FileName: WideString; safecall;
    function Get_Manufacturer: WideString; safecall;
    function Get_DeviceModel: WideString; safecall;
    function Get_DeviceType: clrDeviceType; safecall;
    function Get_Selected: WordBool; safecall;
    procedure Select; safecall;
    function Get_Generic: WordBool; safecall;
    function Get_Installed: WordBool; safecall;
    function Get_Id: WideString; safecall;
    function Get_ColorModel: clrColorModel; safecall;
    function CreateColorContext(RenderingIntent: clrRenderingIntent): IVGColorContext; safecall;
    function IsSame(const ColorProfile: IVGColorProfile): WordBool; safecall;
    property Name: WideString read Get_Name;
    property FileName: WideString read Get_FileName;
    property Manufacturer: WideString read Get_Manufacturer;
    property DeviceModel: WideString read Get_DeviceModel;
    property DeviceType: clrDeviceType read Get_DeviceType;
    property Selected: WordBool read Get_Selected;
    property Generic: WordBool read Get_Generic;
    property Installed: WordBool read Get_Installed;
    property Id: WideString read Get_Id;
    property ColorModel: clrColorModel read Get_ColorModel;
  end;

// *********************************************************************//
// DispIntf:  IVGColorProfileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580098-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorProfileDisp = dispinterface
    ['{B0580098-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString readonly dispid 0;
    property FileName: WideString readonly dispid 1610743809;
    property Manufacturer: WideString readonly dispid 1610743810;
    property DeviceModel: WideString readonly dispid 1610743811;
    property DeviceType: clrDeviceType readonly dispid 1610743812;
    property Selected: WordBool readonly dispid 1610743813;
    procedure Select; dispid 1610743814;
    property Generic: WordBool readonly dispid 1610743815;
    property Installed: WordBool readonly dispid 1610743816;
    property Id: WideString readonly dispid 1610743817;
    property ColorModel: clrColorModel readonly dispid 1610743818;
    function CreateColorContext(RenderingIntent: clrRenderingIntent): IVGColorContext; dispid 1610743819;
    function IsSame(const ColorProfile: IVGColorProfile): WordBool; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IVGColorProfiles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580099-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorProfiles = interface(IDispatch)
    ['{B0580099-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(IndexOrName: OleVariant): IVGColorProfile; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_DeviceType: clrDeviceType; safecall;
    function SelectByName(const Name: WideString): WordBool; safecall;
    function Install(const FileName: WideString): WordBool; safecall;
    function Get_GenericProfile: IVGColorProfile; safecall;
    property Item[IndexOrName: OleVariant]: IVGColorProfile read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property DeviceType: clrDeviceType read Get_DeviceType;
    property GenericProfile: IVGColorProfile read Get_GenericProfile;
  end;

// *********************************************************************//
// DispIntf:  IVGColorProfilesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580099-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorProfilesDisp = dispinterface
    ['{B0580099-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[IndexOrName: OleVariant]: IVGColorProfile readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
    property DeviceType: clrDeviceType readonly dispid 1610743811;
    function SelectByName(const Name: WideString): WordBool; dispid 1610743812;
    function Install(const FileName: WideString): WordBool; dispid 1610743813;
    property GenericProfile: IVGColorProfile readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGPalette
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPalette = interface(IDispatch)
    ['{B058004C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    procedure Close; safecall;
    function Get_type_: cdrPaletteType; safecall;
    function Colors: IVGColors; safecall;
    function Get_Color(Index: Integer): IVGColor; safecall;
    procedure Set_Color(Index: Integer; const Color: IVGColor); safecall;
    procedure AddColor(const Color: IVGColor); safecall;
    procedure InsertColor(Index: Integer; const Color: IVGColor); safecall;
    procedure RemoveColor(Index: Integer); safecall;
    function GetIndexOfColor(const Color: IVGColor): Integer; safecall;
    function Get_DuplicatePresent: WordBool; safecall;
    function Get_ColorCount: Integer; safecall;
    procedure Save; safecall;
    function Get_PaletteID: cdrPaletteID; safecall;
    function Get_FileName: WideString; safecall;
    function MatchColor(const Color: IVGColor): Integer; safecall;
    function FindColor(const Name: WideString): Integer; safecall;
    procedure SaveAs(const FileName: WideString; const Name: WideString; Version: cdrPaletteVersion); safecall;
    function Get_Document: IVGDocument; safecall;
    function Get_Identifier: WideString; safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Get_Locked: WordBool; safecall;
    function Get_Default: WordBool; safecall;
    function Get_IsOpen: WordBool; safecall;
    procedure Open; safecall;
    procedure MakeDefault; safecall;
    function Delete: WordBool; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property type_: cdrPaletteType read Get_type_;
    property Color[Index: Integer]: IVGColor read Get_Color write Set_Color;
    property DuplicatePresent: WordBool read Get_DuplicatePresent;
    property ColorCount: Integer read Get_ColorCount;
    property PaletteID: cdrPaletteID read Get_PaletteID;
    property FileName: WideString read Get_FileName;
    property Document: IVGDocument read Get_Document;
    property Identifier: WideString read Get_Identifier;
    property IsEmpty: WordBool read Get_IsEmpty;
    property Locked: WordBool read Get_Locked;
    property Default: WordBool read Get_Default;
    property IsOpen: WordBool read Get_IsOpen;
  end;

// *********************************************************************//
// DispIntf:  IVGPaletteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPaletteDisp = dispinterface
    ['{B058004C-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Name: WideString dispid 1610743810;
    procedure Close; dispid 1610743812;
    property type_: cdrPaletteType readonly dispid 1610743813;
    function Colors: IVGColors; dispid 1610743814;
    property Color[Index: Integer]: IVGColor dispid 1610743815;
    procedure AddColor(const Color: IVGColor); dispid 1610743817;
    procedure InsertColor(Index: Integer; const Color: IVGColor); dispid 1610743818;
    procedure RemoveColor(Index: Integer); dispid 1610743819;
    function GetIndexOfColor(const Color: IVGColor): Integer; dispid 1610743820;
    property DuplicatePresent: WordBool readonly dispid 1610743821;
    property ColorCount: Integer readonly dispid 1610743822;
    procedure Save; dispid 1610743823;
    property PaletteID: cdrPaletteID readonly dispid 1610743824;
    property FileName: WideString readonly dispid 1610743825;
    function MatchColor(const Color: IVGColor): Integer; dispid 1610743826;
    function FindColor(const Name: WideString): Integer; dispid 1610743827;
    procedure SaveAs(const FileName: WideString; const Name: WideString; Version: cdrPaletteVersion); dispid 1610743828;
    property Document: IVGDocument readonly dispid 1610743829;
    property Identifier: WideString readonly dispid 1610743830;
    property IsEmpty: WordBool readonly dispid 1610743831;
    property Locked: WordBool readonly dispid 1610743832;
    property Default: WordBool readonly dispid 1610743833;
    property IsOpen: WordBool readonly dispid 1610743834;
    procedure Open; dispid 1610743835;
    procedure MakeDefault; dispid 1610743836;
    function Delete: WordBool; dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVGColors
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580013-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColors = interface(IDispatch)
    ['{B0580013-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IVGPalette; safecall;
    function Get_Item(Index: Integer): IVGColor; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IVGPalette read Get_Parent;
    property Item[Index: Integer]: IVGColor read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGColorsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580013-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorsDisp = dispinterface
    ['{B0580013-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IVGPalette readonly dispid 1610743809;
    property Item[Index: Integer]: IVGColor readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGDuotoneInk
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580093-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDuotoneInk = interface(IDispatch)
    ['{B0580093-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    function Get_HandleCount: Integer; safecall;
    function Get_HandleX(Index: Integer): Integer; safecall;
    procedure Set_HandleX(Index: Integer; pVal: Integer); safecall;
    function Get_HandleY(Index: Integer): Integer; safecall;
    procedure Set_HandleY(Index: Integer; pVal: Integer); safecall;
    function AddHandle(x: Integer; y: Integer): Integer; safecall;
    function RemoveHandle(Index: Integer): WordBool; safecall;
    function FindHandle(x: Integer; y: Integer): Integer; safecall;
    function Load(const FileName: WideString): WordBool; safecall;
    function Save(const FileName: WideString): WordBool; safecall;
    function Get_CurveLevel(Index: Integer): Integer; safecall;
    procedure Reset; safecall;
    function GetCurveLevels: PSafeArray; safecall;
    function GetHandles: PSafeArray; safecall;
    procedure PutHandles(HandleArray: OleVariant; NumElements: Integer); safecall;
    property Color: IVGColor read Get_Color write Set_Color;
    property HandleCount: Integer read Get_HandleCount;
    property HandleX[Index: Integer]: Integer read Get_HandleX write Set_HandleX;
    property HandleY[Index: Integer]: Integer read Get_HandleY write Set_HandleY;
    property CurveLevel[Index: Integer]: Integer read Get_CurveLevel;
  end;

// *********************************************************************//
// DispIntf:  IVGDuotoneInkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580093-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDuotoneInkDisp = dispinterface
    ['{B0580093-9AA4-44FD-9547-4F91EB757AC4}']
    property Color: IVGColor dispid 1610743808;
    property HandleCount: Integer readonly dispid 1610743810;
    property HandleX[Index: Integer]: Integer dispid 1610743811;
    property HandleY[Index: Integer]: Integer dispid 1610743813;
    function AddHandle(x: Integer; y: Integer): Integer; dispid 1610743815;
    function RemoveHandle(Index: Integer): WordBool; dispid 1610743816;
    function FindHandle(x: Integer; y: Integer): Integer; dispid 1610743817;
    function Load(const FileName: WideString): WordBool; dispid 1610743818;
    function Save(const FileName: WideString): WordBool; dispid 1610743819;
    property CurveLevel[Index: Integer]: Integer readonly dispid 1610743820;
    procedure Reset; dispid 1610743821;
    function GetCurveLevels: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743822;
    function GetHandles: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743823;
    procedure PutHandles(HandleArray: OleVariant; NumElements: Integer); dispid 1610743824;
  end;

// *********************************************************************//
// Interface: IVGTraceSettings
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A1-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTraceSettings = interface(IDispatch)
    ['{B05800A1-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_TraceType: cdrTraceType; safecall;
    procedure Set_TraceType(pVal: cdrTraceType); safecall;
    function Get_Smoothing: Smallint; safecall;
    procedure Set_Smoothing(pVal: Smallint); safecall;
    function Get_DetailLevel: Smallint; safecall;
    procedure Set_DetailLevel(pVal: Smallint); safecall;
    function Get_ColorMode: cdrColorType; safecall;
    function Get_PaletteID: cdrPaletteID; safecall;
    function Get_ColorCount: Integer; safecall;
    function Get_Color(Index: Integer): IVGColor; safecall;
    function Get_DeleteOriginalObject: WordBool; safecall;
    procedure Set_DeleteOriginalObject(pVal: WordBool); safecall;
    function Get_RemoveBackground: WordBool; safecall;
    procedure Set_RemoveBackground(pVal: WordBool); safecall;
    function Get_RemoveEntireBackColor: WordBool; safecall;
    procedure Set_RemoveEntireBackColor(pVal: WordBool); safecall;
    function Get_BackgroundRemovalMode: cdrTraceBackgroundMode; safecall;
    procedure Set_BackgroundRemovalMode(pVal: cdrTraceBackgroundMode); safecall;
    function Get_BackgroundColor: IVGColor; safecall;
    function Get_CurveCount: Integer; safecall;
    function Get_NodeCount: Integer; safecall;
    function Get_BitmapWidth: Integer; safecall;
    function Get_BitmapHeight: Integer; safecall;
    function SetColorCount(ColorCount: Integer): Integer; safecall;
    function Finish: IVGShapeRange; safecall;
    function ShowDialog(ParentWindowHandle: Integer): WordBool; safecall;
    procedure ApplyChanges; safecall;
    procedure SetColorMode(ColorMode: cdrColorType; PaletteID: cdrPaletteID); safecall;
    function Get_DetailLevelPercent: Smallint; safecall;
    procedure Set_DetailLevelPercent(pVal: Smallint); safecall;
    function Get_MaxDetailLevel: Smallint; safecall;
    function Get_MinDetailLevel: Smallint; safecall;
    function Get_CornerSmoothness: Smallint; safecall;
    procedure Set_CornerSmoothness(pVal: Smallint); safecall;
    function Get_MergeAdjacentObjects: WordBool; safecall;
    procedure Set_MergeAdjacentObjects(pVal: WordBool); safecall;
    function Get_RemoveOverlap: WordBool; safecall;
    procedure Set_RemoveOverlap(pVal: WordBool); safecall;
    function Get_GroupObjectsByColor: WordBool; safecall;
    procedure Set_GroupObjectsByColor(pVal: WordBool); safecall;
    property TraceType: cdrTraceType read Get_TraceType write Set_TraceType;
    property Smoothing: Smallint read Get_Smoothing write Set_Smoothing;
    property DetailLevel: Smallint read Get_DetailLevel write Set_DetailLevel;
    property ColorMode: cdrColorType read Get_ColorMode;
    property PaletteID: cdrPaletteID read Get_PaletteID;
    property ColorCount: Integer read Get_ColorCount;
    property Color[Index: Integer]: IVGColor read Get_Color;
    property DeleteOriginalObject: WordBool read Get_DeleteOriginalObject write Set_DeleteOriginalObject;
    property RemoveBackground: WordBool read Get_RemoveBackground write Set_RemoveBackground;
    property RemoveEntireBackColor: WordBool read Get_RemoveEntireBackColor write Set_RemoveEntireBackColor;
    property BackgroundRemovalMode: cdrTraceBackgroundMode read Get_BackgroundRemovalMode write Set_BackgroundRemovalMode;
    property BackgroundColor: IVGColor read Get_BackgroundColor;
    property CurveCount: Integer read Get_CurveCount;
    property NodeCount: Integer read Get_NodeCount;
    property BitmapWidth: Integer read Get_BitmapWidth;
    property BitmapHeight: Integer read Get_BitmapHeight;
    property DetailLevelPercent: Smallint read Get_DetailLevelPercent write Set_DetailLevelPercent;
    property MaxDetailLevel: Smallint read Get_MaxDetailLevel;
    property MinDetailLevel: Smallint read Get_MinDetailLevel;
    property CornerSmoothness: Smallint read Get_CornerSmoothness write Set_CornerSmoothness;
    property MergeAdjacentObjects: WordBool read Get_MergeAdjacentObjects write Set_MergeAdjacentObjects;
    property RemoveOverlap: WordBool read Get_RemoveOverlap write Set_RemoveOverlap;
    property GroupObjectsByColor: WordBool read Get_GroupObjectsByColor write Set_GroupObjectsByColor;
  end;

// *********************************************************************//
// DispIntf:  IVGTraceSettingsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A1-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTraceSettingsDisp = dispinterface
    ['{B05800A1-9AA4-44FD-9547-4F91EB757AC4}']
    property TraceType: cdrTraceType dispid 1610743808;
    property Smoothing: Smallint dispid 1610743810;
    property DetailLevel: Smallint dispid 1610743812;
    property ColorMode: cdrColorType readonly dispid 1610743814;
    property PaletteID: cdrPaletteID readonly dispid 1610743815;
    property ColorCount: Integer readonly dispid 1610743816;
    property Color[Index: Integer]: IVGColor readonly dispid 1610743817;
    property DeleteOriginalObject: WordBool dispid 1610743818;
    property RemoveBackground: WordBool dispid 1610743820;
    property RemoveEntireBackColor: WordBool dispid 1610743822;
    property BackgroundRemovalMode: cdrTraceBackgroundMode dispid 1610743824;
    property BackgroundColor: IVGColor readonly dispid 1610743826;
    property CurveCount: Integer readonly dispid 1610743827;
    property NodeCount: Integer readonly dispid 1610743828;
    property BitmapWidth: Integer readonly dispid 1610743829;
    property BitmapHeight: Integer readonly dispid 1610743830;
    function SetColorCount(ColorCount: Integer): Integer; dispid 1610743831;
    function Finish: IVGShapeRange; dispid 1610743832;
    function ShowDialog(ParentWindowHandle: Integer): WordBool; dispid 1610743833;
    procedure ApplyChanges; dispid 1610743834;
    procedure SetColorMode(ColorMode: cdrColorType; PaletteID: cdrPaletteID); dispid 1610743835;
    property DetailLevelPercent: Smallint dispid 1610743836;
    property MaxDetailLevel: Smallint readonly dispid 1610743838;
    property MinDetailLevel: Smallint readonly dispid 1610743839;
    property CornerSmoothness: Smallint dispid 1610743840;
    property MergeAdjacentObjects: WordBool dispid 1610743842;
    property RemoveOverlap: WordBool dispid 1610743844;
    property GroupObjectsByColor: WordBool dispid 1610743846;
  end;

// *********************************************************************//
// Interface: IVGShapeRange
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGShapeRange = interface(IDispatch)
    ['{B058005E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGShape; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    procedure Add(const Shape: IVGShape); safecall;
    procedure Remove(Index: Integer); safecall;
    function IndexOf(const Shape: IVGShape): Integer; safecall;
    procedure AddToSelection; safecall;
    procedure ConvertToCurves; safecall;
    function ConvertToBitmap(BitDepth: Integer; Grayscale: WordBool; Dithered: WordBool; 
                             TransparentBG: WordBool; Resolution: Integer; 
                             AntiAliasing: cdrAntiAliasingType; UseColorProfile: WordBool; 
                             MultiChannel: WordBool; AlwaysOverprintBlack: WordBool; 
                             OverprintBlackLimit: Integer): IVGShape; safecall;
    procedure Copy; safecall;
    procedure Cut; safecall;
    procedure Delete; safecall;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); safecall;
    procedure GetSize(out Width: Double; out Height: Double); safecall;
    procedure Move(DeltaX: Double; DeltaY: Double); safecall;
    function Duplicate(OffsetX: Double; OffsetY: Double): IVGShapeRange; safecall;
    function Clone(OffsetX: Double; OffsetY: Double): IVGShapeRange; safecall;
    function Group: IVGShape; safecall;
    procedure RemoveAll; safecall;
    procedure OrderToFront; safecall;
    procedure OrderToBack; safecall;
    procedure OrderForwardOne; safecall;
    procedure OrderBackOne; safecall;
    procedure OrderFrontOf(const Shape: IVGShape); safecall;
    procedure OrderBackOf(const Shape: IVGShape); safecall;
    procedure OrderReverse; safecall;
    procedure Rotate(Angle: Double); safecall;
    procedure RotateEx(Angle: Double; CenterX: Double; CenterY: Double); safecall;
    procedure Skew(AngleX: Double; AngleY: Double); safecall;
    procedure SkewEx(AngleX: Double; AngleY: Double; CenterX: Double; CenterY: Double); safecall;
    procedure UngroupAll; safecall;
    procedure Flip(Axes: cdrFlipAxes); safecall;
    function Get_PositionX: Double; safecall;
    procedure Set_PositionX(pVal: Double); safecall;
    function Get_PositionY: Double; safecall;
    procedure Set_PositionY(pVal: Double); safecall;
    function Get_SizeWidth: Double; safecall;
    procedure Set_SizeWidth(pVal: Double); safecall;
    function Get_SizeHeight: Double; safecall;
    procedure Set_SizeHeight(pVal: Double); safecall;
    function Get_RotationCenterX: Double; safecall;
    procedure Set_RotationCenterX(pVal: Double); safecall;
    function Get_RotationCenterY: Double; safecall;
    procedure Set_RotationCenterY(pVal: Double); safecall;
    procedure AddToPowerClip(const Shape: IVGShape; CenterInContainer: cdrTriState); safecall;
    procedure RemoveFromContainer(Level: Integer); safecall;
    procedure AddRange(const ShapeRange: IVGShapeRange); safecall;
    procedure SetPosition(PositionX: Double; PositionY: Double); safecall;
    procedure SetSize(Width: Double; Height: Double); safecall;
    function ConvertToBitmapEx(Mode: cdrImageType; Dithered: WordBool; Transparent: WordBool; 
                               Resolution: Integer; AntiAliasing: cdrAntiAliasingType; 
                               UseColorProfile: WordBool; AlwaysOverprintBlack: WordBool; 
                               OverprintBlackLimit: Integer): IVGShape; safecall;
    function Combine: IVGShape; safecall;
    procedure SetBoundingBox(x: Double; y: Double; Width: Double; Height: Double; 
                             KeepAspect: WordBool; ReferencePoint: cdrReferencePoint); safecall;
    procedure ApplyNoFill; safecall;
    procedure ApplyUniformFill(const Color: IVGColor); safecall;
    procedure ApplyFountainFill(const StartColor: IVGColor; const EndColor: IVGColor; 
                                Type_: cdrFountainFillType; Angle: Double; Steps: Integer; 
                                EdgePad: Integer; MidPoint: Integer; 
                                BlendType: cdrFountainFillBlendType; CenterOffsetX: Double; 
                                CenterOffsetY: Double); safecall;
    procedure ApplyPatternFill(Type_: cdrPatternFillType; const FileName: WideString; 
                               PatternCanvasIndex: Integer; const FrontColor: IVGColor; 
                               const EndColor: IVGColor; TransformWithShape: WordBool); safecall;
    procedure ApplyTextureFill(const TextureName: WideString; const LibraryName: WideString); safecall;
    procedure ApplyPostscriptFill(IndexOrName: OleVariant); safecall;
    function ConvertOutlineToObject: IVGShapeRange; safecall;
    procedure SetOutlineProperties(Width: Double; const Style: IVGOutlineStyle; 
                                   const Color: IVGColor; const StartArrow: IVGArrowHead; 
                                   const EndArrow: IVGArrowHead; BehindFill: cdrTriState; 
                                   ScaleWithShape: cdrTriState; LineCaps: cdrOutlineLineCaps; 
                                   LineJoin: cdrOutlineLineJoin; NibAngle: Double; 
                                   NibStretch: Integer; DashDotLength: Double; PenWidth: Double; 
                                   MiterLimit: Double); safecall;
    procedure CreateSelection; safecall;
    procedure RemoveFromSelection; safecall;
    procedure SetRotationCenter(x: Double; y: Double); safecall;
    procedure Stretch(StretchX: Double; StretchY: Double; StretchCharactersSize: WordBool); safecall;
    procedure StretchEx(CenterX: Double; CenterY: Double; StretchX: Double; StretchY: Double; 
                        StretchCharactersSize: WordBool); safecall;
    procedure SetSizeEx(CenterX: Double; CenterY: Double; Width: Double; Height: Double); safecall;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double; 
                             UseOutline: WordBool); safecall;
    procedure RestoreCloneLink(LinkToRestore: cdrCloneLinkType); safecall;
    procedure ClearEffect(Type_: cdrEffectType); safecall;
    procedure RemoveRange(const Range: IVGShapeRange); safecall;
    procedure DeleteItem(Index: Integer); safecall;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: PSafeArray): OleVariant; safecall;
    procedure AlignToShape(Type_: cdrAlignType; const Shape: IVGShape; 
                           TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToShapeRange(Type_: cdrAlignType; const ShapeRange: IVGShapeRange; 
                                TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToPage(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToPageCenter(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToGrid(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure AlignToPoint(Type_: cdrAlignType; x: Double; y: Double; 
                           TextAlignOrigin: cdrTextAlignOrigin); safecall;
    procedure Distribute(Type_: cdrDistributeType; PageExtent: WordBool); safecall;
    function ConvertToSymbol(const Name: WideString): IVGShape; safecall;
    procedure Ungroup; safecall;
    function UngroupEx: IVGShapeRange; safecall;
    function UngroupAllEx: IVGShapeRange; safecall;
    function Range(var IndexArray: PSafeArray): IVGShapeRange; safecall;
    function All: IVGShapeRange; safecall;
    function AllExcluding(var IndexArray: PSafeArray): IVGShapeRange; safecall;
    procedure BreakApart; safecall;
    function BreakApartEx: IVGShapeRange; safecall;
    procedure MoveToLayer(const Layer: IVGLayer); safecall;
    function CopyToLayer(const Layer: IVGLayer): IVGShapeRange; safecall;
    procedure ClearTransformations; safecall;
    procedure Lock; safecall;
    procedure Unlock; safecall;
    procedure AlignRangeToShape(Type_: cdrAlignType; const Shape: IVGShape); safecall;
    procedure AlignRangeToShapeRange(Type_: cdrAlignType; const ShapeRange: IVGShapeRange); safecall;
    procedure AlignRangeToPage(Type_: cdrAlignType); safecall;
    procedure AlignRangeToPageCenter(Type_: cdrAlignType); safecall;
    procedure AlignRangeToGrid(Type_: cdrAlignType); safecall;
    procedure AlignRangeToPoint(Type_: cdrAlignType; x: Double; y: Double); safecall;
    procedure ApplyEffectInvert; safecall;
    procedure ApplyEffectPosterize(Level: Integer); safecall;
    procedure ApplyEffectBCI(Brighness: Integer; Contrast: Integer; Intensity: Integer); safecall;
    procedure ApplyEffectColorBalance(CyanRed: Integer; MagentaGreen: Integer; YellowBlue: Integer; 
                                      ApplyToShadows: WordBool; ApplyToMidtones: WordBool; 
                                      ApplyToHighlights: WordBool; PreserveLuminance: WordBool); safecall;
    procedure ApplyEffectGamma(Gamma: Double); safecall;
    procedure ApplyEffectHSL(Hue: OleVariant; Saturation: OleVariant; Lightness: OleVariant); safecall;
    procedure AffineTransform(d11: Double; d12: Double; d21: Double; d22: Double; CenterX: Double; 
                              CenterY: Double); safecall;
    procedure ApplyFill(const Fill: IVGFill); safecall;
    procedure ApplyOutline(const Outline: IVGOutline); safecall;
    function Get_ReverseRange: IVGShapeRange; safecall;
    procedure Fillet(Radius: Double; CombineSmoothSegments: WordBool); safecall;
    procedure Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool); safecall;
    procedure Scallop(Radius: Double; CombineSmoothSegments: WordBool); safecall;
    procedure SetFillMode(Mode: cdrFillMode); safecall;
    procedure ApplyCustomHatchFill(Angle: Double; Spacing: Double; Shift: Double; OriginX: Double; 
                                   OriginY: Double; Width: Double; const Color: IVGColor; 
                                   const Style: IVGOutlineStyle; DashDotLength: Double; 
                                   PenWidth: Double; const BackColor: IVGColor; 
                                   TransformWithShape: WordBool; ScaleLinesWithShape: WordBool; 
                                   UseWorldCoordinates: WordBool; FillScale: Double; 
                                   LineScale: Double; FillAngle: Double; FillSkew: Double); safecall;
    procedure ApplyHatchFill(const LibraryName: WideString; HatchNameOrIndex: OleVariant; 
                             const BackColor: IVGColor; TransformWithShape: WordBool; 
                             ScaleLinesWithShape: WordBool; UseWorldCoordinates: WordBool; 
                             FillScale: Double; LineScale: Double; FillAngle: Double; 
                             FillSkew: Double); safecall;
    function Get_LeftX: Double; safecall;
    function Get_RightX: Double; safecall;
    function Get_TopY: Double; safecall;
    function Get_BottomY: Double; safecall;
    function Get_Shapes: IVGShapes; safecall;
    function Get_FirstShape: IVGShape; safecall;
    function Get_LastShape: IVGShape; safecall;
    function StepAndRepeat(NumCopies: Integer; DistanceX: Double; DistanceY: Double; 
                           ModeX: cdrDistanceMode; DirectionX: cdrDirection; 
                           ModeY: cdrDistanceMode; DirectionY: cdrDirection): IVGShapeRange; safecall;
    function Exists(const Shape: IVGShape): WordBool; safecall;
    function ExistsAnyOfType(var TypeList: PSafeArray): WordBool; safecall;
    function CountAnyOfType(var TypeList: PSafeArray): Integer; safecall;
    function FindAnyOfType(var TypeList: PSafeArray): IVGShapeRange; safecall;
    function GetLinkedShapes(LinkType: cdrShapeLinkType): IVGShapeRange; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    procedure GetPositionEx(ReferencePoint: cdrReferencePoint; out x: Double; out y: Double); safecall;
    procedure SetPositionEx(ReferencePoint: cdrReferencePoint; x: Double; y: Double); safecall;
    function Get_CenterX: Double; safecall;
    procedure Set_CenterX(pVal: Double); safecall;
    function Get_CenterY: Double; safecall;
    procedure Set_CenterY(pVal: Double); safecall;
    procedure Set_LeftX(pVal: Double); safecall;
    procedure Set_RightX(pVal: Double); safecall;
    procedure Set_TopY(pVal: Double); safecall;
    procedure Set_BottomY(pVal: Double); safecall;
    function CopyPropertiesFrom(const Source: IVGShape; Properties: cdrCopyProperties): WordBool; safecall;
    function GetOverprintFillState: cdrOverprintState; safecall;
    function GetOverprintOutlineState: cdrOverprintState; safecall;
    procedure Sort(const CompareExpression: WideString; StartIndex: Integer; EndIndex: Integer; 
                   Data: OleVariant); safecall;
    procedure SetPixelAlignedRendering(PixelAligned: WordBool); safecall;
    function CreateDocumentFrom(TemporaryDocument: WordBool): IVGDocument; safecall;
    procedure AlignAndDistribute(MethodH: cdrAlignDistributeH; MethodV: cdrAlignDistributeV; 
                                 AlignTo: cdrAlignShapesTo; DistributeArea: cdrDistributeArea; 
                                 UseOutline: WordBool; TextAlignOrigin: cdrTextAlignOrigin; 
                                 PointX: Double; PointY: Double; const DistributeRect: IVGRect); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Item[IndexOrName: OleVariant]: IVGShape read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property PositionX: Double read Get_PositionX write Set_PositionX;
    property PositionY: Double read Get_PositionY write Set_PositionY;
    property SizeWidth: Double read Get_SizeWidth write Set_SizeWidth;
    property SizeHeight: Double read Get_SizeHeight write Set_SizeHeight;
    property RotationCenterX: Double read Get_RotationCenterX write Set_RotationCenterX;
    property RotationCenterY: Double read Get_RotationCenterY write Set_RotationCenterY;
    property ReverseRange: IVGShapeRange read Get_ReverseRange;
    property LeftX: Double read Get_LeftX write Set_LeftX;
    property RightX: Double read Get_RightX write Set_RightX;
    property TopY: Double read Get_TopY write Set_TopY;
    property BottomY: Double read Get_BottomY write Set_BottomY;
    property Shapes: IVGShapes read Get_Shapes;
    property FirstShape: IVGShape read Get_FirstShape;
    property LastShape: IVGShape read Get_LastShape;
    property BoundingBox: IVGRect read Get_BoundingBox;
    property CenterX: Double read Get_CenterX write Set_CenterX;
    property CenterY: Double read Get_CenterY write Set_CenterY;
  end;

// *********************************************************************//
// DispIntf:  IVGShapeRangeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGShapeRangeDisp = dispinterface
    ['{B058005E-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGApplication readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGShape readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    procedure Add(const Shape: IVGShape); dispid 1610743813;
    procedure Remove(Index: Integer); dispid 1610743814;
    function IndexOf(const Shape: IVGShape): Integer; dispid 1610743815;
    procedure AddToSelection; dispid 1610743816;
    procedure ConvertToCurves; dispid 1610743817;
    function ConvertToBitmap(BitDepth: Integer; Grayscale: WordBool; Dithered: WordBool; 
                             TransparentBG: WordBool; Resolution: Integer; 
                             AntiAliasing: cdrAntiAliasingType; UseColorProfile: WordBool; 
                             MultiChannel: WordBool; AlwaysOverprintBlack: WordBool; 
                             OverprintBlackLimit: Integer): IVGShape; dispid 1610743818;
    procedure Copy; dispid 1610743819;
    procedure Cut; dispid 1610743820;
    procedure Delete; dispid 1610743821;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); dispid 1610743822;
    procedure GetSize(out Width: Double; out Height: Double); dispid 1610743823;
    procedure Move(DeltaX: Double; DeltaY: Double); dispid 1610743824;
    function Duplicate(OffsetX: Double; OffsetY: Double): IVGShapeRange; dispid 1610743825;
    function Clone(OffsetX: Double; OffsetY: Double): IVGShapeRange; dispid 1610743826;
    function Group: IVGShape; dispid 1610743827;
    procedure RemoveAll; dispid 1610743828;
    procedure OrderToFront; dispid 1610743829;
    procedure OrderToBack; dispid 1610743830;
    procedure OrderForwardOne; dispid 1610743831;
    procedure OrderBackOne; dispid 1610743832;
    procedure OrderFrontOf(const Shape: IVGShape); dispid 1610743833;
    procedure OrderBackOf(const Shape: IVGShape); dispid 1610743834;
    procedure OrderReverse; dispid 1610743835;
    procedure Rotate(Angle: Double); dispid 1610743836;
    procedure RotateEx(Angle: Double; CenterX: Double; CenterY: Double); dispid 1610743837;
    procedure Skew(AngleX: Double; AngleY: Double); dispid 1610743838;
    procedure SkewEx(AngleX: Double; AngleY: Double; CenterX: Double; CenterY: Double); dispid 1610743839;
    procedure UngroupAll; dispid 1610743840;
    procedure Flip(Axes: cdrFlipAxes); dispid 1610743841;
    property PositionX: Double dispid 1610743842;
    property PositionY: Double dispid 1610743844;
    property SizeWidth: Double dispid 1610743846;
    property SizeHeight: Double dispid 1610743848;
    property RotationCenterX: Double dispid 1610743850;
    property RotationCenterY: Double dispid 1610743852;
    procedure AddToPowerClip(const Shape: IVGShape; CenterInContainer: cdrTriState); dispid 1610743854;
    procedure RemoveFromContainer(Level: Integer); dispid 1610743855;
    procedure AddRange(const ShapeRange: IVGShapeRange); dispid 1610743856;
    procedure SetPosition(PositionX: Double; PositionY: Double); dispid 1610743857;
    procedure SetSize(Width: Double; Height: Double); dispid 1610743858;
    function ConvertToBitmapEx(Mode: cdrImageType; Dithered: WordBool; Transparent: WordBool; 
                               Resolution: Integer; AntiAliasing: cdrAntiAliasingType; 
                               UseColorProfile: WordBool; AlwaysOverprintBlack: WordBool; 
                               OverprintBlackLimit: Integer): IVGShape; dispid 1610743859;
    function Combine: IVGShape; dispid 1610743860;
    procedure SetBoundingBox(x: Double; y: Double; Width: Double; Height: Double; 
                             KeepAspect: WordBool; ReferencePoint: cdrReferencePoint); dispid 1610743861;
    procedure ApplyNoFill; dispid 1610743862;
    procedure ApplyUniformFill(const Color: IVGColor); dispid 1610743863;
    procedure ApplyFountainFill(const StartColor: IVGColor; const EndColor: IVGColor; 
                                Type_: cdrFountainFillType; Angle: Double; Steps: Integer; 
                                EdgePad: Integer; MidPoint: Integer; 
                                BlendType: cdrFountainFillBlendType; CenterOffsetX: Double; 
                                CenterOffsetY: Double); dispid 1610743864;
    procedure ApplyPatternFill(Type_: cdrPatternFillType; const FileName: WideString; 
                               PatternCanvasIndex: Integer; const FrontColor: IVGColor; 
                               const EndColor: IVGColor; TransformWithShape: WordBool); dispid 1610743865;
    procedure ApplyTextureFill(const TextureName: WideString; const LibraryName: WideString); dispid 1610743866;
    procedure ApplyPostscriptFill(IndexOrName: OleVariant); dispid 1610743867;
    function ConvertOutlineToObject: IVGShapeRange; dispid 1610743868;
    procedure SetOutlineProperties(Width: Double; const Style: IVGOutlineStyle; 
                                   const Color: IVGColor; const StartArrow: IVGArrowHead; 
                                   const EndArrow: IVGArrowHead; BehindFill: cdrTriState; 
                                   ScaleWithShape: cdrTriState; LineCaps: cdrOutlineLineCaps; 
                                   LineJoin: cdrOutlineLineJoin; NibAngle: Double; 
                                   NibStretch: Integer; DashDotLength: Double; PenWidth: Double; 
                                   MiterLimit: Double); dispid 1610743869;
    procedure CreateSelection; dispid 1610743870;
    procedure RemoveFromSelection; dispid 1610743871;
    procedure SetRotationCenter(x: Double; y: Double); dispid 1610743872;
    procedure Stretch(StretchX: Double; StretchY: Double; StretchCharactersSize: WordBool); dispid 1610743873;
    procedure StretchEx(CenterX: Double; CenterY: Double; StretchX: Double; StretchY: Double; 
                        StretchCharactersSize: WordBool); dispid 1610743874;
    procedure SetSizeEx(CenterX: Double; CenterY: Double; Width: Double; Height: Double); dispid 1610743875;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double; 
                             UseOutline: WordBool); dispid 1610743876;
    procedure RestoreCloneLink(LinkToRestore: cdrCloneLinkType); dispid 1610743877;
    procedure ClearEffect(Type_: cdrEffectType); dispid 1610743878;
    procedure RemoveRange(const Range: IVGShapeRange); dispid 1610743879;
    procedure DeleteItem(Index: Integer); dispid 1610743880;
    function CustomCommand(const ComponentID: WideString; const CommandID: WideString; 
                           var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): OleVariant; dispid 1610743881;
    procedure AlignToShape(Type_: cdrAlignType; const Shape: IVGShape; 
                           TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743882;
    procedure AlignToShapeRange(Type_: cdrAlignType; const ShapeRange: IVGShapeRange; 
                                TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743883;
    procedure AlignToPage(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743884;
    procedure AlignToPageCenter(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743885;
    procedure AlignToGrid(Type_: cdrAlignType; TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743886;
    procedure AlignToPoint(Type_: cdrAlignType; x: Double; y: Double; 
                           TextAlignOrigin: cdrTextAlignOrigin); dispid 1610743887;
    procedure Distribute(Type_: cdrDistributeType; PageExtent: WordBool); dispid 1610743888;
    function ConvertToSymbol(const Name: WideString): IVGShape; dispid 1610743889;
    procedure Ungroup; dispid 1610743890;
    function UngroupEx: IVGShapeRange; dispid 1610743891;
    function UngroupAllEx: IVGShapeRange; dispid 1610743892;
    function Range(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShapeRange; dispid 1610743893;
    function All: IVGShapeRange; dispid 1610743894;
    function AllExcluding(var IndexArray: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShapeRange; dispid 1610743895;
    procedure BreakApart; dispid 1610743896;
    function BreakApartEx: IVGShapeRange; dispid 1610743897;
    procedure MoveToLayer(const Layer: IVGLayer); dispid 1610743898;
    function CopyToLayer(const Layer: IVGLayer): IVGShapeRange; dispid 1610743899;
    procedure ClearTransformations; dispid 1610743900;
    procedure Lock; dispid 1610743901;
    procedure Unlock; dispid 1610743902;
    procedure AlignRangeToShape(Type_: cdrAlignType; const Shape: IVGShape); dispid 1610743903;
    procedure AlignRangeToShapeRange(Type_: cdrAlignType; const ShapeRange: IVGShapeRange); dispid 1610743904;
    procedure AlignRangeToPage(Type_: cdrAlignType); dispid 1610743905;
    procedure AlignRangeToPageCenter(Type_: cdrAlignType); dispid 1610743906;
    procedure AlignRangeToGrid(Type_: cdrAlignType); dispid 1610743907;
    procedure AlignRangeToPoint(Type_: cdrAlignType; x: Double; y: Double); dispid 1610743908;
    procedure ApplyEffectInvert; dispid 1610743909;
    procedure ApplyEffectPosterize(Level: Integer); dispid 1610743910;
    procedure ApplyEffectBCI(Brighness: Integer; Contrast: Integer; Intensity: Integer); dispid 1610743911;
    procedure ApplyEffectColorBalance(CyanRed: Integer; MagentaGreen: Integer; YellowBlue: Integer; 
                                      ApplyToShadows: WordBool; ApplyToMidtones: WordBool; 
                                      ApplyToHighlights: WordBool; PreserveLuminance: WordBool); dispid 1610743912;
    procedure ApplyEffectGamma(Gamma: Double); dispid 1610743913;
    procedure ApplyEffectHSL(Hue: OleVariant; Saturation: OleVariant; Lightness: OleVariant); dispid 1610743914;
    procedure AffineTransform(d11: Double; d12: Double; d21: Double; d22: Double; CenterX: Double; 
                              CenterY: Double); dispid 1610743915;
    procedure ApplyFill(const Fill: IVGFill); dispid 1610743916;
    procedure ApplyOutline(const Outline: IVGOutline); dispid 1610743917;
    property ReverseRange: IVGShapeRange readonly dispid 1610743918;
    procedure Fillet(Radius: Double; CombineSmoothSegments: WordBool); dispid 1610743919;
    procedure Chamfer(DistanceA: Double; DistanceB: Double; CombineSmoothSegments: WordBool); dispid 1610743920;
    procedure Scallop(Radius: Double; CombineSmoothSegments: WordBool); dispid 1610743921;
    procedure SetFillMode(Mode: cdrFillMode); dispid 1610743922;
    procedure ApplyCustomHatchFill(Angle: Double; Spacing: Double; Shift: Double; OriginX: Double; 
                                   OriginY: Double; Width: Double; const Color: IVGColor; 
                                   const Style: IVGOutlineStyle; DashDotLength: Double; 
                                   PenWidth: Double; const BackColor: IVGColor; 
                                   TransformWithShape: WordBool; ScaleLinesWithShape: WordBool; 
                                   UseWorldCoordinates: WordBool; FillScale: Double; 
                                   LineScale: Double; FillAngle: Double; FillSkew: Double); dispid 1610743923;
    procedure ApplyHatchFill(const LibraryName: WideString; HatchNameOrIndex: OleVariant; 
                             const BackColor: IVGColor; TransformWithShape: WordBool; 
                             ScaleLinesWithShape: WordBool; UseWorldCoordinates: WordBool; 
                             FillScale: Double; LineScale: Double; FillAngle: Double; 
                             FillSkew: Double); dispid 1610743924;
    property LeftX: Double dispid 1610743925;
    property RightX: Double dispid 1610743926;
    property TopY: Double dispid 1610743927;
    property BottomY: Double dispid 1610743928;
    property Shapes: IVGShapes readonly dispid 1610743929;
    property FirstShape: IVGShape readonly dispid 1610743930;
    property LastShape: IVGShape readonly dispid 1610743931;
    function StepAndRepeat(NumCopies: Integer; DistanceX: Double; DistanceY: Double; 
                           ModeX: cdrDistanceMode; DirectionX: cdrDirection; 
                           ModeY: cdrDistanceMode; DirectionY: cdrDirection): IVGShapeRange; dispid 1610743932;
    function Exists(const Shape: IVGShape): WordBool; dispid 1610743933;
    function ExistsAnyOfType(var TypeList: {NOT_OLEAUTO(PSafeArray)}OleVariant): WordBool; dispid 1610743934;
    function CountAnyOfType(var TypeList: {NOT_OLEAUTO(PSafeArray)}OleVariant): Integer; dispid 1610743935;
    function FindAnyOfType(var TypeList: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGShapeRange; dispid 1610743936;
    function GetLinkedShapes(LinkType: cdrShapeLinkType): IVGShapeRange; dispid 1610743937;
    property BoundingBox: IVGRect readonly dispid 1610743938;
    procedure GetPositionEx(ReferencePoint: cdrReferencePoint; out x: Double; out y: Double); dispid 1610743939;
    procedure SetPositionEx(ReferencePoint: cdrReferencePoint; x: Double; y: Double); dispid 1610743940;
    property CenterX: Double dispid 1610743941;
    property CenterY: Double dispid 1610743943;
    function CopyPropertiesFrom(const Source: IVGShape; Properties: cdrCopyProperties): WordBool; dispid 1610743949;
    function GetOverprintFillState: cdrOverprintState; dispid 1610743950;
    function GetOverprintOutlineState: cdrOverprintState; dispid 1610743951;
    procedure Sort(const CompareExpression: WideString; StartIndex: Integer; EndIndex: Integer; 
                   Data: OleVariant); dispid 1610743952;
    procedure SetPixelAlignedRendering(PixelAligned: WordBool); dispid 1610743953;
    function CreateDocumentFrom(TemporaryDocument: WordBool): IVGDocument; dispid 1610743954;
    procedure AlignAndDistribute(MethodH: cdrAlignDistributeH; MethodV: cdrAlignDistributeV; 
                                 AlignTo: cdrAlignShapesTo; DistributeArea: cdrDistributeArea; 
                                 UseOutline: WordBool; TextAlignOrigin: cdrTextAlignOrigin; 
                                 PointX: Double; PointY: Double; const DistributeRect: IVGRect); dispid 1610743955;
  end;

// *********************************************************************//
// Interface: IVGOutlineStyle
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580046-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOutlineStyle = interface(IDispatch)
    ['{B0580046-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Index: Integer; safecall;
    function Get_DashCount: Integer; safecall;
    procedure Set_DashCount(pVal: Integer); safecall;
    function Get_DashLength(Index: Integer): Integer; safecall;
    procedure Set_DashLength(Index: Integer; pVal: Integer); safecall;
    function Get_GapLength(Index: Integer): Integer; safecall;
    procedure Set_GapLength(Index: Integer; pVal: Integer); safecall;
    function Get_Enhanced: WordBool; safecall;
    property Index: Integer read Get_Index;
    property DashCount: Integer read Get_DashCount write Set_DashCount;
    property DashLength[Index: Integer]: Integer read Get_DashLength write Set_DashLength;
    property GapLength[Index: Integer]: Integer read Get_GapLength write Set_GapLength;
    property Enhanced: WordBool read Get_Enhanced;
  end;

// *********************************************************************//
// DispIntf:  IVGOutlineStyleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580046-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOutlineStyleDisp = dispinterface
    ['{B0580046-9AA4-44FD-9547-4F91EB757AC4}']
    property Index: Integer readonly dispid 1610743808;
    property DashCount: Integer dispid 1610743809;
    property DashLength[Index: Integer]: Integer dispid 1610743811;
    property GapLength[Index: Integer]: Integer dispid 1610743813;
    property Enhanced: WordBool readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IVGArrowHead
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGArrowHead = interface(IDispatch)
    ['{B058000D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Index: Integer; safecall;
    function Get_Curve: IVGCurve; safecall;
    function Get_BaseOutlineScale: Double; safecall;
    function Get_CenterX: Double; safecall;
    function Get_CenterY: Double; safecall;
    function Get_LineOffset: Double; safecall;
    function BindToDocument(const Document: IVGDocument): IVGArrowHead; safecall;
    function CompareWith(const ArrowHead: IVGArrowHead): WordBool; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    property Index: Integer read Get_Index;
    property Curve: IVGCurve read Get_Curve;
    property BaseOutlineScale: Double read Get_BaseOutlineScale;
    property CenterX: Double read Get_CenterX;
    property CenterY: Double read Get_CenterY;
    property LineOffset: Double read Get_LineOffset;
    property Name: WideString read Get_Name write Set_Name;
    property DisplayName: WideString read Get_DisplayName;
  end;

// *********************************************************************//
// DispIntf:  IVGArrowHeadDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGArrowHeadDisp = dispinterface
    ['{B058000D-9AA4-44FD-9547-4F91EB757AC4}']
    property Index: Integer readonly dispid 1610743808;
    property Curve: IVGCurve readonly dispid 1610743809;
    property BaseOutlineScale: Double readonly dispid 1610743810;
    property CenterX: Double readonly dispid 1610743811;
    property CenterY: Double readonly dispid 1610743812;
    property LineOffset: Double readonly dispid 1610743813;
    function BindToDocument(const Document: IVGDocument): IVGArrowHead; dispid 1610743814;
    function CompareWith(const ArrowHead: IVGArrowHead): WordBool; dispid 1610743815;
    property Name: WideString dispid 1610743816;
    property DisplayName: WideString readonly dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IVGFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580038-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFill = interface(IDispatch)
    ['{B0580038-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrFillType; safecall;
    function Get_UniformColor: IVGColor; safecall;
    procedure Set_UniformColor(const ppVal: IVGColor); safecall;
    function Get_Fountain: IVGFountainFill; safecall;
    procedure Set_Fountain(const ppVal: IVGFountainFill); safecall;
    function Get_Pattern: IVGPatternFill; safecall;
    procedure Set_Pattern(const ppVal: IVGPatternFill); safecall;
    function Get_Texture: IVGTextureFill; safecall;
    procedure Set_Texture(const ppVal: IVGTextureFill); safecall;
    function Get_PostScript: IVGPostScriptFill; safecall;
    procedure Set_PostScript(const ppVal: IVGPostScriptFill); safecall;
    procedure ApplyNoFill; safecall;
    procedure ApplyUniformFill(const Color: IVGColor); safecall;
    function ApplyFountainFill(const StartColor: IVGColor; const EndColor: IVGColor; 
                               Type_: cdrFountainFillType; Angle: Double; Steps: Integer; 
                               EdgePad: Integer; MidPoint: Integer; 
                               BlendType: cdrFountainFillBlendType; CenterOffsetX: Double; 
                               CenterOffsetY: Double): IVGFountainFill; safecall;
    function ApplyPatternFill(Type_: cdrPatternFillType; const FileName: WideString; 
                              PatternCanvasIndex: Integer; const FrontColor: IVGColor; 
                              const EndColor: IVGColor; TransformWithShape: WordBool): IVGPatternFill; safecall;
    function ApplyTextureFill(const TextureName: WideString; const LibraryName: WideString): IVGTextureFill; safecall;
    function ApplyPostscriptFill(IndexOrName: OleVariant): IVGPostScriptFill; safecall;
    function GetCopy: IVGFill; safecall;
    procedure CopyAssign(const SourceFill: IVGFill); safecall;
    function UserAssign(FillType: cdrFillType; PatternType: cdrPatternFillType; 
                        ParentWindowHandle: Integer): WordBool; safecall;
    function Get_PSScreen: IVGPSScreenOptions; safecall;
    function Get_Hatch: IVGHatchFill; safecall;
    procedure Set_Hatch(const ppVal: IVGHatchFill); safecall;
    function CompareWith(const Fill: IVGFill): WordBool; safecall;
    function ApplyCustomHatchFill(Angle: Double; Spacing: Double; Shift: Double; OriginX: Double; 
                                  OriginY: Double; Width: Double; const Color: IVGColor; 
                                  const Style: IVGOutlineStyle; DashDotLength: Double; 
                                  PenWidth: Double; const BackColor: IVGColor; 
                                  TransformWithShape: WordBool; ScaleLinesWithShape: WordBool; 
                                  UseWorldCoordinates: WordBool; FillScale: Double; 
                                  LineScale: Double; FillAngle: Double; FillSkew: Double): IVGHatchFill; safecall;
    function ApplyHatchFill(const LibraryName: WideString; HatchNameOrIndex: OleVariant; 
                            const BackColor: IVGColor; TransformWithShape: WordBool; 
                            ScaleLinesWithShape: WordBool; UseWorldCoordinates: WordBool; 
                            FillScale: Double; LineScale: Double; FillAngle: Double; 
                            FillSkew: Double): IVGHatchFill; safecall;
    function ToString: WideString; safecall;
    function StringAssign(const FillString: WideString): WordBool; safecall;
    property type_: cdrFillType read Get_type_;
    property UniformColor: IVGColor read Get_UniformColor write Set_UniformColor;
    property Fountain: IVGFountainFill read Get_Fountain write Set_Fountain;
    property Pattern: IVGPatternFill read Get_Pattern write Set_Pattern;
    property Texture: IVGTextureFill read Get_Texture write Set_Texture;
    property PostScript: IVGPostScriptFill read Get_PostScript write Set_PostScript;
    property PSScreen: IVGPSScreenOptions read Get_PSScreen;
    property Hatch: IVGHatchFill read Get_Hatch write Set_Hatch;
  end;

// *********************************************************************//
// DispIntf:  IVGFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580038-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFillDisp = dispinterface
    ['{B0580038-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrFillType readonly dispid 1610743808;
    property UniformColor: IVGColor dispid 1610743809;
    property Fountain: IVGFountainFill dispid 1610743811;
    property Pattern: IVGPatternFill dispid 1610743813;
    property Texture: IVGTextureFill dispid 1610743815;
    property PostScript: IVGPostScriptFill dispid 1610743817;
    procedure ApplyNoFill; dispid 1610743819;
    procedure ApplyUniformFill(const Color: IVGColor); dispid 1610743820;
    function ApplyFountainFill(const StartColor: IVGColor; const EndColor: IVGColor; 
                               Type_: cdrFountainFillType; Angle: Double; Steps: Integer; 
                               EdgePad: Integer; MidPoint: Integer; 
                               BlendType: cdrFountainFillBlendType; CenterOffsetX: Double; 
                               CenterOffsetY: Double): IVGFountainFill; dispid 1610743821;
    function ApplyPatternFill(Type_: cdrPatternFillType; const FileName: WideString; 
                              PatternCanvasIndex: Integer; const FrontColor: IVGColor; 
                              const EndColor: IVGColor; TransformWithShape: WordBool): IVGPatternFill; dispid 1610743822;
    function ApplyTextureFill(const TextureName: WideString; const LibraryName: WideString): IVGTextureFill; dispid 1610743823;
    function ApplyPostscriptFill(IndexOrName: OleVariant): IVGPostScriptFill; dispid 1610743824;
    function GetCopy: IVGFill; dispid 1610743825;
    procedure CopyAssign(const SourceFill: IVGFill); dispid 1610743826;
    function UserAssign(FillType: cdrFillType; PatternType: cdrPatternFillType; 
                        ParentWindowHandle: Integer): WordBool; dispid 1610743827;
    property PSScreen: IVGPSScreenOptions readonly dispid 1610743828;
    property Hatch: IVGHatchFill dispid 1610743829;
    function CompareWith(const Fill: IVGFill): WordBool; dispid 1610743831;
    function ApplyCustomHatchFill(Angle: Double; Spacing: Double; Shift: Double; OriginX: Double; 
                                  OriginY: Double; Width: Double; const Color: IVGColor; 
                                  const Style: IVGOutlineStyle; DashDotLength: Double; 
                                  PenWidth: Double; const BackColor: IVGColor; 
                                  TransformWithShape: WordBool; ScaleLinesWithShape: WordBool; 
                                  UseWorldCoordinates: WordBool; FillScale: Double; 
                                  LineScale: Double; FillAngle: Double; FillSkew: Double): IVGHatchFill; dispid 1610743832;
    function ApplyHatchFill(const LibraryName: WideString; HatchNameOrIndex: OleVariant; 
                            const BackColor: IVGColor; TransformWithShape: WordBool; 
                            ScaleLinesWithShape: WordBool; UseWorldCoordinates: WordBool; 
                            FillScale: Double; LineScale: Double; FillAngle: Double; 
                            FillSkew: Double): IVGHatchFill; dispid 1610743833;
    function ToString: WideString; dispid 1610743834;
    function StringAssign(const FillString: WideString): WordBool; dispid 1610743835;
  end;

// *********************************************************************//
// Interface: IVGFountainFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFountainFill = interface(IDispatch)
    ['{B058003C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrFountainFillType; safecall;
    procedure Set_type_(pVal: cdrFountainFillType); safecall;
    function Get_StartX: Double; safecall;
    procedure Set_StartX(pVal: Double); safecall;
    function Get_StartY: Double; safecall;
    procedure Set_StartY(pVal: Double); safecall;
    function Get_EndX: Double; safecall;
    procedure Set_EndX(pVal: Double); safecall;
    function Get_EndY: Double; safecall;
    procedure Set_EndY(pVal: Double); safecall;
    function Get_Angle: Double; safecall;
    procedure SetAngle(Angle: Double); safecall;
    procedure Translate(x: Double; y: Double); safecall;
    function Get_EdgePad: Integer; safecall;
    function Get_Steps: Integer; safecall;
    procedure Set_Steps(pVal: Integer); safecall;
    function Get_BlendType: cdrFountainFillBlendType; safecall;
    procedure Set_BlendType(pVal: cdrFountainFillBlendType); safecall;
    function Get_MidPoint: Integer; safecall;
    procedure Set_MidPoint(pVal: Integer); safecall;
    function Get_Colors: IVGFountainColors; safecall;
    function Get_StartColor: IVGColor; safecall;
    procedure Set_StartColor(const ppVal: IVGColor); safecall;
    function Get_EndColor: IVGColor; safecall;
    procedure Set_EndColor(const ppVal: IVGColor); safecall;
    procedure Set_Colors(const ppVal: IVGFountainColors); safecall;
    procedure SetEdgePad(EdgePad: Integer); safecall;
    function Get_CenterOffsetX: Double; safecall;
    procedure Set_CenterOffsetX(pVal: Double); safecall;
    function Get_CenterOffsetY: Double; safecall;
    procedure Set_CenterOffsetY(pVal: Double); safecall;
    property type_: cdrFountainFillType read Get_type_ write Set_type_;
    property StartX: Double read Get_StartX write Set_StartX;
    property StartY: Double read Get_StartY write Set_StartY;
    property EndX: Double read Get_EndX write Set_EndX;
    property EndY: Double read Get_EndY write Set_EndY;
    property Angle: Double read Get_Angle;
    property EdgePad: Integer read Get_EdgePad;
    property Steps: Integer read Get_Steps write Set_Steps;
    property BlendType: cdrFountainFillBlendType read Get_BlendType write Set_BlendType;
    property MidPoint: Integer read Get_MidPoint write Set_MidPoint;
    property Colors: IVGFountainColors read Get_Colors write Set_Colors;
    property StartColor: IVGColor read Get_StartColor write Set_StartColor;
    property EndColor: IVGColor read Get_EndColor write Set_EndColor;
    property CenterOffsetX: Double read Get_CenterOffsetX write Set_CenterOffsetX;
    property CenterOffsetY: Double read Get_CenterOffsetY write Set_CenterOffsetY;
  end;

// *********************************************************************//
// DispIntf:  IVGFountainFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFountainFillDisp = dispinterface
    ['{B058003C-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrFountainFillType dispid 1610743808;
    property StartX: Double dispid 1610743810;
    property StartY: Double dispid 1610743812;
    property EndX: Double dispid 1610743814;
    property EndY: Double dispid 1610743816;
    property Angle: Double readonly dispid 1610743818;
    procedure SetAngle(Angle: Double); dispid 1610743819;
    procedure Translate(x: Double; y: Double); dispid 1610743820;
    property EdgePad: Integer readonly dispid 1610743821;
    property Steps: Integer dispid 1610743822;
    property BlendType: cdrFountainFillBlendType dispid 1610743824;
    property MidPoint: Integer dispid 1610743826;
    property Colors: IVGFountainColors dispid 1610743828;
    property StartColor: IVGColor dispid 1610743829;
    property EndColor: IVGColor dispid 1610743831;
    procedure SetEdgePad(EdgePad: Integer); dispid 1610743834;
    property CenterOffsetX: Double dispid 1610743835;
    property CenterOffsetY: Double dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVGFountainColors
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFountainColors = interface(IDispatch)
    ['{B058003B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(Index: Integer): IVGFountainColor; safecall;
    procedure Set_Item(Index: Integer; const ppVal: IVGFountainColor); safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    procedure Add(const Color: IVGColor; Position: Integer); safecall;
    function Get_GrayLevel(Index: Integer): Integer; safecall;
    procedure Set_GrayLevel(Index: Integer; pVal: Integer); safecall;
    procedure AddGrayLevel(GrayLevel: Integer; Position: Integer); safecall;
    function Get_First: IVGFountainColor; safecall;
    function Get_Last: IVGFountainColor; safecall;
    property Item[Index: Integer]: IVGFountainColor read Get_Item write Set_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property GrayLevel[Index: Integer]: Integer read Get_GrayLevel write Set_GrayLevel;
    property First: IVGFountainColor read Get_First;
    property Last: IVGFountainColor read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGFountainColorsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFountainColorsDisp = dispinterface
    ['{B058003B-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[Index: Integer]: IVGFountainColor dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743811;
    procedure Add(const Color: IVGColor; Position: Integer); dispid 1610743812;
    property GrayLevel[Index: Integer]: Integer dispid 1610743813;
    procedure AddGrayLevel(GrayLevel: Integer; Position: Integer); dispid 1610743815;
    property First: IVGFountainColor readonly dispid 1610743816;
    property Last: IVGFountainColor readonly dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGFountainColor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFountainColor = interface(IDispatch)
    ['{B058003A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Position: Integer; safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    procedure Move(NewPosition: Integer); safecall;
    procedure Delete; safecall;
    property Position: Integer read Get_Position;
    property Color: IVGColor read Get_Color write Set_Color;
  end;

// *********************************************************************//
// DispIntf:  IVGFountainColorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFountainColorDisp = dispinterface
    ['{B058003A-9AA4-44FD-9547-4F91EB757AC4}']
    property Position: Integer readonly dispid 1610743808;
    property Color: IVGColor dispid 1610743809;
    procedure Move(NewPosition: Integer); dispid 1610743811;
    procedure Delete; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGPatternFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580050-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPatternFill = interface(IDispatch)
    ['{B0580050-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrPatternFillType; safecall;
    procedure Set_type_(pVal: cdrPatternFillType); safecall;
    function Get_FrontColor: IVGColor; safecall;
    procedure Set_FrontColor(const ppVal: IVGColor); safecall;
    function Get_BackColor: IVGColor; safecall;
    procedure Set_BackColor(const ppVal: IVGColor); safecall;
    function Get_Canvas: IVGPatternCanvas; safecall;
    procedure Set_Canvas(const ppVal: IVGPatternCanvas); safecall;
    function Get_FilePath: WideString; safecall;
    function Get_OriginX: Double; safecall;
    procedure Set_OriginX(pVal: Double); safecall;
    function Get_OriginY: Double; safecall;
    procedure Set_OriginY(pVal: Double); safecall;
    function Get_TileWidth: Double; safecall;
    procedure Set_TileWidth(pVal: Double); safecall;
    function Get_TileHeight: Double; safecall;
    procedure Set_TileHeight(pVal: Double); safecall;
    function Get_TileOffsetType: cdrTileOffsetType; safecall;
    procedure Set_TileOffsetType(pVal: cdrTileOffsetType); safecall;
    function Get_TileOffset: Integer; safecall;
    procedure Set_TileOffset(pVal: Integer); safecall;
    function Get_SkewAngle: Double; safecall;
    procedure Set_SkewAngle(pVal: Double); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_RotationAngle(pVal: Double); safecall;
    function Get_TransformWithShape: WordBool; safecall;
    procedure Set_TransformWithShape(pVal: WordBool); safecall;
    function Load(const FileName: WideString): WordBool; safecall;
    function Get_MirrorFill: WordBool; safecall;
    procedure Set_MirrorFill(pVal: WordBool); safecall;
    property type_: cdrPatternFillType read Get_type_ write Set_type_;
    property FrontColor: IVGColor read Get_FrontColor write Set_FrontColor;
    property BackColor: IVGColor read Get_BackColor write Set_BackColor;
    property Canvas: IVGPatternCanvas read Get_Canvas write Set_Canvas;
    property FilePath: WideString read Get_FilePath;
    property OriginX: Double read Get_OriginX write Set_OriginX;
    property OriginY: Double read Get_OriginY write Set_OriginY;
    property TileWidth: Double read Get_TileWidth write Set_TileWidth;
    property TileHeight: Double read Get_TileHeight write Set_TileHeight;
    property TileOffsetType: cdrTileOffsetType read Get_TileOffsetType write Set_TileOffsetType;
    property TileOffset: Integer read Get_TileOffset write Set_TileOffset;
    property SkewAngle: Double read Get_SkewAngle write Set_SkewAngle;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property TransformWithShape: WordBool read Get_TransformWithShape write Set_TransformWithShape;
    property MirrorFill: WordBool read Get_MirrorFill write Set_MirrorFill;
  end;

// *********************************************************************//
// DispIntf:  IVGPatternFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580050-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPatternFillDisp = dispinterface
    ['{B0580050-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrPatternFillType dispid 1610743808;
    property FrontColor: IVGColor dispid 1610743810;
    property BackColor: IVGColor dispid 1610743812;
    property Canvas: IVGPatternCanvas dispid 1610743814;
    property FilePath: WideString readonly dispid 1610743816;
    property OriginX: Double dispid 1610743817;
    property OriginY: Double dispid 1610743819;
    property TileWidth: Double dispid 1610743821;
    property TileHeight: Double dispid 1610743823;
    property TileOffsetType: cdrTileOffsetType dispid 1610743825;
    property TileOffset: Integer dispid 1610743827;
    property SkewAngle: Double dispid 1610743829;
    property RotationAngle: Double dispid 1610743831;
    property TransformWithShape: WordBool dispid 1610743833;
    function Load(const FileName: WideString): WordBool; dispid 1610743835;
    property MirrorFill: WordBool dispid 1610743836;
  end;

// *********************************************************************//
// Interface: IVGPatternCanvas
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPatternCanvas = interface(IDispatch)
    ['{B058004E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Size: cdrPatternCanvasSize; safecall;
    procedure Set_Size(pVal: cdrPatternCanvasSize); safecall;
    function Get_Pixel(x: Integer; y: Integer): WordBool; safecall;
    procedure Set_Pixel(x: Integer; y: Integer; pVal: WordBool); safecall;
    function Get_Index: Integer; safecall;
    procedure FillArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; State: WordBool); safecall;
    procedure CopyArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; x: Integer; y: Integer); safecall;
    procedure FlipArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; Axes: cdrFlipAxes); safecall;
    procedure RotateArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; Angle: Double); safecall;
    procedure Select(Index: Integer); safecall;
    procedure Clear; safecall;
    procedure PutCopy(const PatternCanvas: IVGPatternCanvas); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_Data: WideString; safecall;
    procedure Set_Data(const pVal: WideString); safecall;
    procedure PSet(Step: Smallint; x: Integer; y: Integer; Color: WordBool); safecall;
    procedure Line(Flags: Smallint; x1: Integer; y1: Integer; x2: Integer; y2: Integer; 
                   Color: WordBool); safecall;
    property Size: cdrPatternCanvasSize read Get_Size write Set_Size;
    property Pixel[x: Integer; y: Integer]: WordBool read Get_Pixel write Set_Pixel;
    property Index: Integer read Get_Index;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Data: WideString read Get_Data write Set_Data;
  end;

// *********************************************************************//
// DispIntf:  IVGPatternCanvasDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPatternCanvasDisp = dispinterface
    ['{B058004E-9AA4-44FD-9547-4F91EB757AC4}']
    property Size: cdrPatternCanvasSize dispid 1610743808;
    property Pixel[x: Integer; y: Integer]: WordBool dispid 1610743810;
    property Index: Integer readonly dispid 1610743812;
    procedure FillArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; State: WordBool); dispid 1610743813;
    procedure CopyArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; x: Integer; y: Integer); dispid 1610743814;
    procedure FlipArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; Axes: cdrFlipAxes); dispid 1610743815;
    procedure RotateArea(x1: Integer; y1: Integer; x2: Integer; y2: Integer; Angle: Double); dispid 1610743816;
    procedure Select(Index: Integer); dispid 1610743817;
    procedure Clear; dispid 1610743818;
    procedure PutCopy(const PatternCanvas: IVGPatternCanvas); dispid 1610743819;
    property Width: Integer dispid 1610743820;
    property Height: Integer dispid 1610743822;
    property Data: WideString dispid 0;
    procedure PSet(Step: Smallint; x: Integer; y: Integer; Color: WordBool); dispid 1610743826;
    procedure Line(Flags: Smallint; x1: Integer; y1: Integer; x2: Integer; y2: Integer; 
                   Color: WordBool); dispid 1610743827;
  end;

// *********************************************************************//
// Interface: IVGTextureFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580079-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextureFill = interface(IDispatch)
    ['{B0580079-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_OriginX: Double; safecall;
    procedure Set_OriginX(pVal: Double); safecall;
    function Get_OriginY: Double; safecall;
    procedure Set_OriginY(pVal: Double); safecall;
    function Get_TileWidth: Double; safecall;
    procedure Set_TileWidth(pVal: Double); safecall;
    function Get_TileHeight: Double; safecall;
    procedure Set_TileHeight(pVal: Double); safecall;
    function Get_TileOffsetType: cdrTileOffsetType; safecall;
    procedure Set_TileOffsetType(pVal: cdrTileOffsetType); safecall;
    function Get_TileOffset: Integer; safecall;
    procedure Set_TileOffset(pVal: Integer); safecall;
    function Get_SkewAngle: Double; safecall;
    procedure Set_SkewAngle(pVal: Double); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_RotationAngle(pVal: Double); safecall;
    function Get_TransformWithShape: WordBool; safecall;
    procedure Set_TransformWithShape(pVal: WordBool); safecall;
    function Get_Resolution: Integer; safecall;
    procedure Set_Resolution(pVal: Integer); safecall;
    function Get_MaximumTileWidth: Integer; safecall;
    procedure Set_MaximumTileWidth(pVal: Integer); safecall;
    function Get_LibraryName: WideString; safecall;
    function Get_TextureName: WideString; safecall;
    function Get_StyleName: WideString; safecall;
    procedure Select(const Texture: WideString; const Library_: WideString); safecall;
    procedure SetProperties(var SettingArray: PSafeArray); safecall;
    function Get_MirrorFill: WordBool; safecall;
    procedure Set_MirrorFill(pVal: WordBool); safecall;
    function Get_Properties: IVGTextureFillProperties; safecall;
    property OriginX: Double read Get_OriginX write Set_OriginX;
    property OriginY: Double read Get_OriginY write Set_OriginY;
    property TileWidth: Double read Get_TileWidth write Set_TileWidth;
    property TileHeight: Double read Get_TileHeight write Set_TileHeight;
    property TileOffsetType: cdrTileOffsetType read Get_TileOffsetType write Set_TileOffsetType;
    property TileOffset: Integer read Get_TileOffset write Set_TileOffset;
    property SkewAngle: Double read Get_SkewAngle write Set_SkewAngle;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property TransformWithShape: WordBool read Get_TransformWithShape write Set_TransformWithShape;
    property Resolution: Integer read Get_Resolution write Set_Resolution;
    property MaximumTileWidth: Integer read Get_MaximumTileWidth write Set_MaximumTileWidth;
    property LibraryName: WideString read Get_LibraryName;
    property TextureName: WideString read Get_TextureName;
    property StyleName: WideString read Get_StyleName;
    property MirrorFill: WordBool read Get_MirrorFill write Set_MirrorFill;
    property Properties: IVGTextureFillProperties read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IVGTextureFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580079-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextureFillDisp = dispinterface
    ['{B0580079-9AA4-44FD-9547-4F91EB757AC4}']
    property OriginX: Double dispid 1610743808;
    property OriginY: Double dispid 1610743810;
    property TileWidth: Double dispid 1610743812;
    property TileHeight: Double dispid 1610743814;
    property TileOffsetType: cdrTileOffsetType dispid 1610743816;
    property TileOffset: Integer dispid 1610743818;
    property SkewAngle: Double dispid 1610743820;
    property RotationAngle: Double dispid 1610743822;
    property TransformWithShape: WordBool dispid 1610743824;
    property Resolution: Integer dispid 1610743826;
    property MaximumTileWidth: Integer dispid 1610743828;
    property LibraryName: WideString readonly dispid 1610743830;
    property TextureName: WideString readonly dispid 1610743831;
    property StyleName: WideString readonly dispid 1610743832;
    procedure Select(const Texture: WideString; const Library_: WideString); dispid 1610743833;
    procedure SetProperties(var SettingArray: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743834;
    property MirrorFill: WordBool dispid 1610743835;
    property Properties: IVGTextureFillProperties readonly dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVGTextureFillProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextureFillProperties = interface(IDispatch)
    ['{B058007A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Count: Integer; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGTextureFillProperty; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[IndexOrName: OleVariant]: IVGTextureFillProperty read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGTextureFillPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextureFillPropertiesDisp = dispinterface
    ['{B058007A-9AA4-44FD-9547-4F91EB757AC4}']
    property Count: Integer readonly dispid 1610743808;
    property Item[IndexOrName: OleVariant]: IVGTextureFillProperty readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IVGTextureFillProperty
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextureFillProperty = interface(IDispatch)
    ['{B058007B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    function Get_type_: cdrTexturePropertyType; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(pVal: OleVariant); safecall;
    property Name: WideString read Get_Name;
    property type_: cdrTexturePropertyType read Get_type_;
    property Value: OleVariant read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  IVGTextureFillPropertyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextureFillPropertyDisp = dispinterface
    ['{B058007B-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString readonly dispid 1610743808;
    property type_: cdrTexturePropertyType readonly dispid 1610743809;
    property Value: OleVariant dispid 0;
  end;

// *********************************************************************//
// Interface: IVGPostScriptFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580052-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPostScriptFill = interface(IDispatch)
    ['{B0580052-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    function Get_Index: Integer; safecall;
    function Get_Properties(Index: Integer): Integer; safecall;
    procedure Set_Properties(Index: Integer; pVal: Integer); safecall;
    procedure Select(IndexOrName: OleVariant); safecall;
    procedure SetProperties(Param1: Integer; Param2: Integer; Param3: Integer; Param4: Integer; 
                            Param5: Integer); safecall;
    property Name: WideString read Get_Name;
    property Index: Integer read Get_Index;
    property Properties[Index: Integer]: Integer read Get_Properties write Set_Properties;
  end;

// *********************************************************************//
// DispIntf:  IVGPostScriptFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580052-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPostScriptFillDisp = dispinterface
    ['{B0580052-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString readonly dispid 1610743808;
    property Index: Integer readonly dispid 1610743809;
    property Properties[Index: Integer]: Integer dispid 1610743810;
    procedure Select(IndexOrName: OleVariant); dispid 1610743812;
    procedure SetProperties(Param1: Integer; Param2: Integer; Param3: Integer; Param4: Integer; 
                            Param5: Integer); dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGPSScreenOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580096-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPSScreenOptions = interface(IDispatch)
    ['{B0580096-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Index: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Angle: Double; safecall;
    procedure Set_Angle(pVal: Double); safecall;
    function Get_Frequency: Integer; safecall;
    procedure Set_Frequency(pVal: Integer); safecall;
    function Select(const Name: WideString): WordBool; safecall;
    function SetProperties(IndexOrName: OleVariant; Angle: Double; Frequency: Integer): WordBool; safecall;
    function NameByIndex(Index: Integer): WideString; safecall;
    procedure Reset; safecall;
    function UserAssign(ParentWindowHandle: Integer): WordBool; safecall;
    property Index: Integer read Get_Index;
    property Name: WideString read Get_Name;
    property Angle: Double read Get_Angle write Set_Angle;
    property Frequency: Integer read Get_Frequency write Set_Frequency;
  end;

// *********************************************************************//
// DispIntf:  IVGPSScreenOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580096-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPSScreenOptionsDisp = dispinterface
    ['{B0580096-9AA4-44FD-9547-4F91EB757AC4}']
    property Index: Integer readonly dispid 0;
    property Name: WideString readonly dispid 1610743809;
    property Angle: Double dispid 1610743810;
    property Frequency: Integer dispid 1610743812;
    function Select(const Name: WideString): WordBool; dispid 1610743814;
    function SetProperties(IndexOrName: OleVariant; Angle: Double; Frequency: Integer): WordBool; dispid 1610743815;
    function NameByIndex(Index: Integer): WideString; dispid 1610743816;
    procedure Reset; dispid 1610743817;
    function UserAssign(ParentWindowHandle: Integer): WordBool; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IVGHatchFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchFill = interface(IDispatch)
    ['{B058009A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_BackColor: IVGColor; safecall;
    procedure Set_BackColor(const ppVal: IVGColor); safecall;
    function Get_HasBackground: WordBool; safecall;
    function Get_TransformWithShape: WordBool; safecall;
    procedure Set_TransformWithShape(pVal: WordBool); safecall;
    function Get_ScaleLinesWithShape: WordBool; safecall;
    procedure Set_ScaleLinesWithShape(pVal: WordBool); safecall;
    function Get_UseWorldCoordinates: WordBool; safecall;
    procedure Set_UseWorldCoordinates(pVal: WordBool); safecall;
    function Get_LibraryName: WideString; safecall;
    function Get_HatchName: WideString; safecall;
    function Get_Patterns: IVGHatchPatterns; safecall;
    function Get_FillScaleX: Double; safecall;
    procedure Set_FillScaleX(pVal: Double); safecall;
    function Get_FillScaleY: Double; safecall;
    procedure Set_FillScaleY(pVal: Double); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_RotationAngle(pVal: Double); safecall;
    function Get_SkewAngle: Double; safecall;
    procedure Set_SkewAngle(pVal: Double); safecall;
    procedure SetNoBackColor; safecall;
    procedure SetFillScale(FillScale: Double); safecall;
    function GetFillScale: Double; safecall;
    procedure SetLineScale(LineScale: Double); safecall;
    function GetLineScale: Double; safecall;
    function AddPattern(Angle: Double; Spacing: Double; Shift: Double; OriginX: Double; 
                        OriginY: Double; Width: Double; const Color: IVGColor; 
                        const Style: IVGOutlineStyle; DashDotLength: Double; PenWidth: Double): IVGHatchPattern; safecall;
    procedure AddToLibrary(const LibraryName: WideString; const HatchName: WideString); safecall;
    procedure Select(const LibraryName: WideString; HatchNameOrIndex: OleVariant; 
                     const BackColor: IVGColor; TransformWithShape: WordBool; 
                     ScaleLinesWithShape: WordBool; UseWorldCoordinates: WordBool; 
                     FillScale: Double; LineScale: Double; FillAngle: Double; FillSkew: Double); safecall;
    function Get_IsFromLibrary: WordBool; safecall;
    function Get_Index: Integer; safecall;
    function Get_Library_: IVGHatchLibrary; safecall;
    property BackColor: IVGColor read Get_BackColor write Set_BackColor;
    property HasBackground: WordBool read Get_HasBackground;
    property TransformWithShape: WordBool read Get_TransformWithShape write Set_TransformWithShape;
    property ScaleLinesWithShape: WordBool read Get_ScaleLinesWithShape write Set_ScaleLinesWithShape;
    property UseWorldCoordinates: WordBool read Get_UseWorldCoordinates write Set_UseWorldCoordinates;
    property LibraryName: WideString read Get_LibraryName;
    property HatchName: WideString read Get_HatchName;
    property Patterns: IVGHatchPatterns read Get_Patterns;
    property FillScaleX: Double read Get_FillScaleX write Set_FillScaleX;
    property FillScaleY: Double read Get_FillScaleY write Set_FillScaleY;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property SkewAngle: Double read Get_SkewAngle write Set_SkewAngle;
    property IsFromLibrary: WordBool read Get_IsFromLibrary;
    property Index: Integer read Get_Index;
    property Library_: IVGHatchLibrary read Get_Library_;
  end;

// *********************************************************************//
// DispIntf:  IVGHatchFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchFillDisp = dispinterface
    ['{B058009A-9AA4-44FD-9547-4F91EB757AC4}']
    property BackColor: IVGColor dispid 1610743808;
    property HasBackground: WordBool readonly dispid 1610743810;
    property TransformWithShape: WordBool dispid 1610743811;
    property ScaleLinesWithShape: WordBool dispid 1610743813;
    property UseWorldCoordinates: WordBool dispid 1610743815;
    property LibraryName: WideString readonly dispid 1610743817;
    property HatchName: WideString readonly dispid 1610743818;
    property Patterns: IVGHatchPatterns readonly dispid 1610743819;
    property FillScaleX: Double dispid 1610743820;
    property FillScaleY: Double dispid 1610743822;
    property RotationAngle: Double dispid 1610743824;
    property SkewAngle: Double dispid 1610743826;
    procedure SetNoBackColor; dispid 1610743828;
    procedure SetFillScale(FillScale: Double); dispid 1610743829;
    function GetFillScale: Double; dispid 1610743830;
    procedure SetLineScale(LineScale: Double); dispid 1610743831;
    function GetLineScale: Double; dispid 1610743832;
    function AddPattern(Angle: Double; Spacing: Double; Shift: Double; OriginX: Double; 
                        OriginY: Double; Width: Double; const Color: IVGColor; 
                        const Style: IVGOutlineStyle; DashDotLength: Double; PenWidth: Double): IVGHatchPattern; dispid 1610743833;
    procedure AddToLibrary(const LibraryName: WideString; const HatchName: WideString); dispid 1610743834;
    procedure Select(const LibraryName: WideString; HatchNameOrIndex: OleVariant; 
                     const BackColor: IVGColor; TransformWithShape: WordBool; 
                     ScaleLinesWithShape: WordBool; UseWorldCoordinates: WordBool; 
                     FillScale: Double; LineScale: Double; FillAngle: Double; FillSkew: Double); dispid 1610743835;
    property IsFromLibrary: WordBool readonly dispid 1610743836;
    property Index: Integer readonly dispid 1610743837;
    property Library_: IVGHatchLibrary readonly dispid 1610743838;
  end;

// *********************************************************************//
// Interface: IVGHatchPatterns
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchPatterns = interface(IDispatch)
    ['{B058009B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IVGHatchPattern; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure Reset; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IVGHatchPattern read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGHatchPatternsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchPatternsDisp = dispinterface
    ['{B058009B-9AA4-44FD-9547-4F91EB757AC4}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: Integer]: IVGHatchPattern readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure Reset; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGHatchPattern
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchPattern = interface(IDispatch)
    ['{B058009C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Angle: Double; safecall;
    procedure Set_Angle(pVal: Double); safecall;
    function Get_OriginX: Double; safecall;
    procedure Set_OriginX(pVal: Double); safecall;
    function Get_OriginY: Double; safecall;
    procedure Set_OriginY(pVal: Double); safecall;
    function Get_Spacing: Double; safecall;
    procedure Set_Spacing(pVal: Double); safecall;
    function Get_Shift: Double; safecall;
    procedure Set_Shift(pVal: Double); safecall;
    function Get_ShiftPercent: Double; safecall;
    procedure Set_ShiftPercent(pVal: Double); safecall;
    function Get_Outline: IVGOutline; safecall;
    function Get_Index: Integer; safecall;
    procedure Delete; safecall;
    procedure SetOrigin(OriginX: Double; OriginY: Double); safecall;
    procedure GetOrigin(out OriginX: Double; out OriginY: Double); safecall;
    procedure SetProperties(Angle: OleVariant; Spacing: Double; Shift: OleVariant; 
                            OriginX: OleVariant; OriginY: OleVariant; Width: Double; 
                            const Color: IVGColor; const Style: IVGOutlineStyle; 
                            DashDotLength: Double; PenWidth: Double); safecall;
    procedure Reset; safecall;
    property Angle: Double read Get_Angle write Set_Angle;
    property OriginX: Double read Get_OriginX write Set_OriginX;
    property OriginY: Double read Get_OriginY write Set_OriginY;
    property Spacing: Double read Get_Spacing write Set_Spacing;
    property Shift: Double read Get_Shift write Set_Shift;
    property ShiftPercent: Double read Get_ShiftPercent write Set_ShiftPercent;
    property Outline: IVGOutline read Get_Outline;
    property Index: Integer read Get_Index;
  end;

// *********************************************************************//
// DispIntf:  IVGHatchPatternDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchPatternDisp = dispinterface
    ['{B058009C-9AA4-44FD-9547-4F91EB757AC4}']
    property Angle: Double dispid 1610743808;
    property OriginX: Double dispid 1610743810;
    property OriginY: Double dispid 1610743812;
    property Spacing: Double dispid 1610743814;
    property Shift: Double dispid 1610743816;
    property ShiftPercent: Double dispid 1610743818;
    property Outline: IVGOutline readonly dispid 1610743820;
    property Index: Integer readonly dispid 1610743821;
    procedure Delete; dispid 1610743822;
    procedure SetOrigin(OriginX: Double; OriginY: Double); dispid 1610743823;
    procedure GetOrigin(out OriginX: Double; out OriginY: Double); dispid 1610743824;
    procedure SetProperties(Angle: OleVariant; Spacing: Double; Shift: OleVariant; 
                            OriginX: OleVariant; OriginY: OleVariant; Width: Double; 
                            const Color: IVGColor; const Style: IVGOutlineStyle; 
                            DashDotLength: Double; PenWidth: Double); dispid 1610743825;
    procedure Reset; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IVGOutline
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580045-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOutline = interface(IDispatch)
    ['{B0580045-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Width: Double; safecall;
    procedure Set_Width(pVal: Double); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    function ConvertToObject: IVGShape; safecall;
    function Get_type_: cdrOutlineType; safecall;
    procedure Set_type_(Type_: cdrOutlineType); safecall;
    function Get_Style: IVGOutlineStyle; safecall;
    procedure Set_Style(const ppStyle: IVGOutlineStyle); safecall;
    function Get_StartArrow: IVGArrowHead; safecall;
    procedure Set_StartArrow(const ppArrowHead: IVGArrowHead); safecall;
    function Get_EndArrow: IVGArrowHead; safecall;
    procedure Set_EndArrow(const ppArrowHead: IVGArrowHead); safecall;
    function Get_NibStretch: Integer; safecall;
    procedure Set_NibStretch(pVal: Integer); safecall;
    function Get_NibAngle: Double; safecall;
    procedure Set_NibAngle(pVal: Double); safecall;
    function Get_BehindFill: WordBool; safecall;
    procedure Set_BehindFill(pVal: WordBool); safecall;
    function Get_LineCaps: cdrOutlineLineCaps; safecall;
    procedure Set_LineCaps(pVal: cdrOutlineLineCaps); safecall;
    function Get_LineJoin: cdrOutlineLineJoin; safecall;
    procedure Set_LineJoin(pVal: cdrOutlineLineJoin); safecall;
    function Get_ScaleWithShape: WordBool; safecall;
    procedure Set_ScaleWithShape(pVal: WordBool); safecall;
    procedure SetProperties(Width: Double; const Style: IVGOutlineStyle; const Color: IVGColor; 
                            const StartArrow: IVGArrowHead; const EndArrow: IVGArrowHead; 
                            BehindFill: cdrTriState; ScaleWithShape: cdrTriState; 
                            LineCaps: cdrOutlineLineCaps; LineJoin: cdrOutlineLineJoin; 
                            NibAngle: Double; NibStretch: Integer; DashDotLength: Double; 
                            PenWidth: Double; MiterLimit: Double); safecall;
    function Get_Size: Double; safecall;
    procedure Set_Size(pVal: Double); safecall;
    function GetCopy: IVGOutline; safecall;
    procedure CopyAssign(const SourceOutline: IVGOutline); safecall;
    function UserAssign(ParentWindowHandle: Integer): WordBool; safecall;
    function Get_PSScreen: IVGPSScreenOptions; safecall;
    function CompareWith(const Outline: IVGOutline): WordBool; safecall;
    function Get_DashDotLength: Double; safecall;
    procedure Set_DashDotLength(pVal: Double); safecall;
    function ToString: WideString; safecall;
    function StringAssign(const OutlineString: WideString): WordBool; safecall;
    function Get_PenWidth: Double; safecall;
    procedure Set_PenWidth(pVal: Double); safecall;
    function Get_MiterLimit: Double; safecall;
    procedure Set_MiterLimit(pVal: Double); safecall;
    procedure SetNoOutline; safecall;
    function Get_StartArrowOptions: IVGArrowHeadOptions; safecall;
    procedure Set_StartArrowOptions(const ppVal: IVGArrowHeadOptions); safecall;
    function Get_EndArrowOptions: IVGArrowHeadOptions; safecall;
    procedure Set_EndArrowOptions(const ppVal: IVGArrowHeadOptions); safecall;
    property Width: Double read Get_Width write Set_Width;
    property Color: IVGColor read Get_Color write Set_Color;
    property type_: cdrOutlineType read Get_type_ write Set_type_;
    property Style: IVGOutlineStyle read Get_Style write Set_Style;
    property StartArrow: IVGArrowHead read Get_StartArrow write Set_StartArrow;
    property EndArrow: IVGArrowHead read Get_EndArrow write Set_EndArrow;
    property NibStretch: Integer read Get_NibStretch write Set_NibStretch;
    property NibAngle: Double read Get_NibAngle write Set_NibAngle;
    property BehindFill: WordBool read Get_BehindFill write Set_BehindFill;
    property LineCaps: cdrOutlineLineCaps read Get_LineCaps write Set_LineCaps;
    property LineJoin: cdrOutlineLineJoin read Get_LineJoin write Set_LineJoin;
    property ScaleWithShape: WordBool read Get_ScaleWithShape write Set_ScaleWithShape;
    property Size: Double read Get_Size write Set_Size;
    property PSScreen: IVGPSScreenOptions read Get_PSScreen;
    property DashDotLength: Double read Get_DashDotLength write Set_DashDotLength;
    property PenWidth: Double read Get_PenWidth write Set_PenWidth;
    property MiterLimit: Double read Get_MiterLimit write Set_MiterLimit;
    property StartArrowOptions: IVGArrowHeadOptions read Get_StartArrowOptions write Set_StartArrowOptions;
    property EndArrowOptions: IVGArrowHeadOptions read Get_EndArrowOptions write Set_EndArrowOptions;
  end;

// *********************************************************************//
// DispIntf:  IVGOutlineDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580045-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOutlineDisp = dispinterface
    ['{B0580045-9AA4-44FD-9547-4F91EB757AC4}']
    property Width: Double dispid 1610743808;
    property Color: IVGColor dispid 1610743810;
    function ConvertToObject: IVGShape; dispid 1610743812;
    property type_: cdrOutlineType dispid 1610743813;
    property Style: IVGOutlineStyle dispid 1610743815;
    property StartArrow: IVGArrowHead dispid 1610743817;
    property EndArrow: IVGArrowHead dispid 1610743819;
    property NibStretch: Integer dispid 1610743821;
    property NibAngle: Double dispid 1610743823;
    property BehindFill: WordBool dispid 1610743825;
    property LineCaps: cdrOutlineLineCaps dispid 1610743827;
    property LineJoin: cdrOutlineLineJoin dispid 1610743829;
    property ScaleWithShape: WordBool dispid 1610743831;
    procedure SetProperties(Width: Double; const Style: IVGOutlineStyle; const Color: IVGColor; 
                            const StartArrow: IVGArrowHead; const EndArrow: IVGArrowHead; 
                            BehindFill: cdrTriState; ScaleWithShape: cdrTriState; 
                            LineCaps: cdrOutlineLineCaps; LineJoin: cdrOutlineLineJoin; 
                            NibAngle: Double; NibStretch: Integer; DashDotLength: Double; 
                            PenWidth: Double; MiterLimit: Double); dispid 1610743833;
    property Size: Double dispid 1610743834;
    function GetCopy: IVGOutline; dispid 1610743836;
    procedure CopyAssign(const SourceOutline: IVGOutline); dispid 1610743837;
    function UserAssign(ParentWindowHandle: Integer): WordBool; dispid 1610743838;
    property PSScreen: IVGPSScreenOptions readonly dispid 1610743839;
    function CompareWith(const Outline: IVGOutline): WordBool; dispid 1610743840;
    property DashDotLength: Double dispid 1610743841;
    function ToString: WideString; dispid 1610743843;
    function StringAssign(const OutlineString: WideString): WordBool; dispid 1610743844;
    property PenWidth: Double dispid 1610743845;
    property MiterLimit: Double dispid 1610743847;
    procedure SetNoOutline; dispid 1610743849;
    property StartArrowOptions: IVGArrowHeadOptions dispid 1610743850;
    property EndArrowOptions: IVGArrowHeadOptions dispid 1610743852;
  end;

// *********************************************************************//
// Interface: IVGArrowHeadOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A7-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGArrowHeadOptions = interface(IDispatch)
    ['{B05800A7-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Length: Double; safecall;
    procedure Set_Length(pVal: Double); safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(pVal: Double); safecall;
    function Get_OffsetX: Double; safecall;
    procedure Set_OffsetX(pVal: Double); safecall;
    function Get_OffsetY: Double; safecall;
    procedure Set_OffsetY(pVal: Double); safecall;
    function Get_FlipHorizontal: WordBool; safecall;
    procedure Set_FlipHorizontal(pVal: WordBool); safecall;
    function Get_FlipVertical: WordBool; safecall;
    procedure Set_FlipVertical(pVal: WordBool); safecall;
    procedure Flip(Axes: cdrFlipAxes); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_RotationAngle(pVal: Double); safecall;
    procedure CopyAssign(const Source: IVGArrowHeadOptions); safecall;
    function GetCopy: IVGArrowHeadOptions; safecall;
    function Get_FlipVerical: WordBool; safecall;
    procedure Set_FlipVerical(pVal: WordBool); safecall;
    property Length: Double read Get_Length write Set_Length;
    property Width: Double read Get_Width write Set_Width;
    property OffsetX: Double read Get_OffsetX write Set_OffsetX;
    property OffsetY: Double read Get_OffsetY write Set_OffsetY;
    property FlipHorizontal: WordBool read Get_FlipHorizontal write Set_FlipHorizontal;
    property FlipVertical: WordBool read Get_FlipVertical write Set_FlipVertical;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property FlipVerical: WordBool read Get_FlipVerical write Set_FlipVerical;
  end;

// *********************************************************************//
// DispIntf:  IVGArrowHeadOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A7-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGArrowHeadOptionsDisp = dispinterface
    ['{B05800A7-9AA4-44FD-9547-4F91EB757AC4}']
    property Length: Double dispid 1610743808;
    property Width: Double dispid 1610743810;
    property OffsetX: Double dispid 1610743812;
    property OffsetY: Double dispid 1610743814;
    property FlipHorizontal: WordBool dispid 1610743816;
    property FlipVertical: WordBool dispid 1610743818;
    procedure Flip(Axes: cdrFlipAxes); dispid 1610743820;
    property RotationAngle: Double dispid 1610743821;
    procedure CopyAssign(const Source: IVGArrowHeadOptions); dispid 1610743823;
    function GetCopy: IVGArrowHeadOptions; dispid 1610743824;
    property FlipVerical: WordBool dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IVGHatchLibrary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchLibrary = interface(IDispatch)
    ['{B058009E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    function Get_Fills: IVGHatchFills; safecall;
    function Get_Active: WordBool; safecall;
    function Get_Index: Integer; safecall;
    procedure Activate; safecall;
    function Get_DisplayName: WideString; safecall;
    property Name: WideString read Get_Name;
    property Fills: IVGHatchFills read Get_Fills;
    property Active: WordBool read Get_Active;
    property Index: Integer read Get_Index;
    property DisplayName: WideString read Get_DisplayName;
  end;

// *********************************************************************//
// DispIntf:  IVGHatchLibraryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchLibraryDisp = dispinterface
    ['{B058009E-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString readonly dispid 1610743808;
    property Fills: IVGHatchFills readonly dispid 1610743809;
    property Active: WordBool readonly dispid 1610743810;
    property Index: Integer readonly dispid 1610743811;
    procedure Activate; dispid 1610743812;
    property DisplayName: WideString readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGHatchFills
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchFills = interface(IDispatch)
    ['{B058009F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(IndexOrName: OleVariant): IVGFill; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Find(const Name: WideString): IVGFill; safecall;
    property Item[IndexOrName: OleVariant]: IVGFill read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGHatchFillsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchFillsDisp = dispinterface
    ['{B058009F-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[IndexOrName: OleVariant]: IVGFill readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
    function Find(const Name: WideString): IVGFill; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGText
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580071-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGText = interface(IDispatch)
    ['{B0580071-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrTextType; safecall;
    function Get_FramesInLink: Integer; safecall;
    function Get_UnusedFramesInLink: Integer; safecall;
    function Get_Overflow: WordBool; safecall;
    function Get_FontProperties(Frames: cdrTextFrames): IVGStructFontProperties; safecall;
    procedure Set_FontProperties(Frames: cdrTextFrames; const ppVal: IVGStructFontProperties); safecall;
    function Get_FontPropertiesInRange(StartIndex: Integer; Count: Integer; 
                                       IndexingType: cdrTextIndexingType): IVGStructFontProperties; safecall;
    procedure Set_FontPropertiesInRange(StartIndex: Integer; Count: Integer; 
                                        IndexingType: cdrTextIndexingType; 
                                        const ppVal: IVGStructFontProperties); safecall;
    function Get_AlignProperties(Frames: cdrTextFrames): IVGStructAlignProperties; safecall;
    procedure Set_AlignProperties(Frames: cdrTextFrames; const ppVal: IVGStructAlignProperties); safecall;
    function Get_AlignPropertiesInRange(StartIndex: Integer; Count: Integer; 
                                        IndexingType: cdrTextIndexingType): IVGStructAlignProperties; safecall;
    procedure Set_AlignPropertiesInRange(StartIndex: Integer; Count: Integer; 
                                         IndexingType: cdrTextIndexingType; 
                                         const ppVal: IVGStructAlignProperties); safecall;
    function Get_SpaceProperties(Frames: cdrTextFrames): IVGStructSpaceProperties; safecall;
    procedure Set_SpaceProperties(Frames: cdrTextFrames; const ppVal: IVGStructSpaceProperties); safecall;
    function Get_SpacePropertiesInRange(StartIndex: Integer; Count: Integer; 
                                        IndexingType: cdrTextIndexingType): IVGStructSpaceProperties; safecall;
    procedure Set_SpacePropertiesInRange(StartIndex: Integer; Count: Integer; 
                                         IndexingType: cdrTextIndexingType; 
                                         const ppVal: IVGStructSpaceProperties); safecall;
    function Get_HyphenationSettings(Frames: cdrTextFrames): IVGStructHyphenationSettings; safecall;
    procedure Set_HyphenationSettings(Frames: cdrTextFrames; 
                                      const ppVal: IVGStructHyphenationSettings); safecall;
    function Get_HyphenationSettingsInRange(StartIndex: Integer; Count: Integer; 
                                            IndexingType: cdrTextIndexingType): IVGStructHyphenationSettings; safecall;
    procedure Set_HyphenationSettingsInRange(StartIndex: Integer; Count: Integer; 
                                             IndexingType: cdrTextIndexingType; 
                                             const ppVal: IVGStructHyphenationSettings); safecall;
    function Get_Contents(Frames: cdrTextFrames): WideString; safecall;
    procedure Set_Contents(Frames: cdrTextFrames; const pVal: WideString); safecall;
    function FitToPath(const Path: IVGShape): IVGEffect; safecall;
    function Find(const Text: WideString; CaseSensitive: WordBool; StartIndex: Integer; 
                  WrapAround: WordBool; IndexingType: cdrTextIndexingType): Integer; safecall;
    procedure Replace(const OldText: WideString; const NewText: WideString; 
                      CaseSensitive: WordBool; StartIndex: Integer; ReplaceAll: WordBool; 
                      WrapAround: WordBool; IndexingType: cdrTextIndexingType); safecall;
    procedure ImportFromFile(const FileName: WideString; StartIndex: Integer; 
                             IndexingType: cdrTextIndexingType); safecall;
    procedure ExportToFile(const FileName: WideString; StartIndex: Integer; Count: Integer; 
                           IndexingType: cdrTextIndexingType); safecall;
    procedure ConvertToArtistic; safecall;
    procedure ConvertToParagraph; safecall;
    function Get_IsHTMLCompatible: WordBool; safecall;
    function MakeHTMLCompatible(HTML: WordBool): WordBool; safecall;
    function Get_Story: IVGTextRange; safecall;
    function Get_Selection: IVGTextRange; safecall;
    function Range(Start: Integer; End_: Integer): IVGTextRange; safecall;
    function Get_IsEditing: WordBool; safecall;
    procedure BeginEdit; safecall;
    function Get_Frame: IVGTextFrame; safecall;
    function Get_Frames: IVGTextFrames; safecall;
    function Get_IsArtisticText: WordBool; safecall;
    procedure FitTextToFrame; safecall;
    property type_: cdrTextType read Get_type_;
    property FramesInLink: Integer read Get_FramesInLink;
    property UnusedFramesInLink: Integer read Get_UnusedFramesInLink;
    property Overflow: WordBool read Get_Overflow;
    property FontProperties[Frames: cdrTextFrames]: IVGStructFontProperties read Get_FontProperties write Set_FontProperties;
    property FontPropertiesInRange[StartIndex: Integer; Count: Integer; 
                                   IndexingType: cdrTextIndexingType]: IVGStructFontProperties read Get_FontPropertiesInRange write Set_FontPropertiesInRange;
    property AlignProperties[Frames: cdrTextFrames]: IVGStructAlignProperties read Get_AlignProperties write Set_AlignProperties;
    property AlignPropertiesInRange[StartIndex: Integer; Count: Integer; 
                                    IndexingType: cdrTextIndexingType]: IVGStructAlignProperties read Get_AlignPropertiesInRange write Set_AlignPropertiesInRange;
    property SpaceProperties[Frames: cdrTextFrames]: IVGStructSpaceProperties read Get_SpaceProperties write Set_SpaceProperties;
    property SpacePropertiesInRange[StartIndex: Integer; Count: Integer; 
                                    IndexingType: cdrTextIndexingType]: IVGStructSpaceProperties read Get_SpacePropertiesInRange write Set_SpacePropertiesInRange;
    property HyphenationSettings[Frames: cdrTextFrames]: IVGStructHyphenationSettings read Get_HyphenationSettings write Set_HyphenationSettings;
    property HyphenationSettingsInRange[StartIndex: Integer; Count: Integer; 
                                        IndexingType: cdrTextIndexingType]: IVGStructHyphenationSettings read Get_HyphenationSettingsInRange write Set_HyphenationSettingsInRange;
    property Contents[Frames: cdrTextFrames]: WideString read Get_Contents write Set_Contents;
    property IsHTMLCompatible: WordBool read Get_IsHTMLCompatible;
    property Story: IVGTextRange read Get_Story;
    property Selection: IVGTextRange read Get_Selection;
    property IsEditing: WordBool read Get_IsEditing;
    property Frame: IVGTextFrame read Get_Frame;
    property Frames: IVGTextFrames read Get_Frames;
    property IsArtisticText: WordBool read Get_IsArtisticText;
  end;

// *********************************************************************//
// DispIntf:  IVGTextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580071-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextDisp = dispinterface
    ['{B0580071-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrTextType readonly dispid 1610743808;
    property FramesInLink: Integer readonly dispid 1610743809;
    property UnusedFramesInLink: Integer readonly dispid 1610743810;
    property Overflow: WordBool readonly dispid 1610743811;
    property FontProperties[Frames: cdrTextFrames]: IVGStructFontProperties dispid 1610743812;
    property FontPropertiesInRange[StartIndex: Integer; Count: Integer; 
                                   IndexingType: cdrTextIndexingType]: IVGStructFontProperties dispid 1610743814;
    property AlignProperties[Frames: cdrTextFrames]: IVGStructAlignProperties dispid 1610743816;
    property AlignPropertiesInRange[StartIndex: Integer; Count: Integer; 
                                    IndexingType: cdrTextIndexingType]: IVGStructAlignProperties dispid 1610743818;
    property SpaceProperties[Frames: cdrTextFrames]: IVGStructSpaceProperties dispid 1610743820;
    property SpacePropertiesInRange[StartIndex: Integer; Count: Integer; 
                                    IndexingType: cdrTextIndexingType]: IVGStructSpaceProperties dispid 1610743822;
    property HyphenationSettings[Frames: cdrTextFrames]: IVGStructHyphenationSettings dispid 1610743824;
    property HyphenationSettingsInRange[StartIndex: Integer; Count: Integer; 
                                        IndexingType: cdrTextIndexingType]: IVGStructHyphenationSettings dispid 1610743826;
    property Contents[Frames: cdrTextFrames]: WideString dispid 1610743828;
    function FitToPath(const Path: IVGShape): IVGEffect; dispid 1610743830;
    function Find(const Text: WideString; CaseSensitive: WordBool; StartIndex: Integer; 
                  WrapAround: WordBool; IndexingType: cdrTextIndexingType): Integer; dispid 1610743831;
    procedure Replace(const OldText: WideString; const NewText: WideString; 
                      CaseSensitive: WordBool; StartIndex: Integer; ReplaceAll: WordBool; 
                      WrapAround: WordBool; IndexingType: cdrTextIndexingType); dispid 1610743832;
    procedure ImportFromFile(const FileName: WideString; StartIndex: Integer; 
                             IndexingType: cdrTextIndexingType); dispid 1610743833;
    procedure ExportToFile(const FileName: WideString; StartIndex: Integer; Count: Integer; 
                           IndexingType: cdrTextIndexingType); dispid 1610743834;
    procedure ConvertToArtistic; dispid 1610743835;
    procedure ConvertToParagraph; dispid 1610743836;
    property IsHTMLCompatible: WordBool readonly dispid 1610743837;
    function MakeHTMLCompatible(HTML: WordBool): WordBool; dispid 1610743838;
    property Story: IVGTextRange readonly dispid 1610743839;
    property Selection: IVGTextRange readonly dispid 1610743840;
    function Range(Start: Integer; End_: Integer): IVGTextRange; dispid 1610743841;
    property IsEditing: WordBool readonly dispid 1610743842;
    procedure BeginEdit; dispid 1610743843;
    property Frame: IVGTextFrame readonly dispid 1610743844;
    property Frames: IVGTextFrames readonly dispid 1610743845;
    property IsArtisticText: WordBool readonly dispid 1610743846;
    procedure FitTextToFrame; dispid 1610743847;
  end;

// *********************************************************************//
// Interface: IVGStructFontProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580064-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructFontProperties = interface(IDispatch)
    ['{B0580064-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Style(pVal: cdrFontStyle); safecall;
    function Get_Style: cdrFontStyle; safecall;
    procedure Set_Size(pVal: Single); safecall;
    function Get_Size: Single; safecall;
    procedure Set_Underline(pVal: cdrFontLine); safecall;
    function Get_Underline: cdrFontLine; safecall;
    procedure Set_Overscore(pVal: cdrFontLine); safecall;
    function Get_Overscore: cdrFontLine; safecall;
    procedure Set_Strikethru(pVal: cdrFontLine); safecall;
    function Get_Strikethru: cdrFontLine; safecall;
    procedure Set_Uppercase(pVal: cdrFontCase); safecall;
    function Get_Uppercase: cdrFontCase; safecall;
    procedure Set_Position(pVal: cdrFontPosition); safecall;
    function Get_Position: cdrFontPosition; safecall;
    procedure Set_RangeKerning(pVal: Integer); safecall;
    function Get_RangeKerning: Integer; safecall;
    procedure Set_Fill(const ppVal: IVGFill); safecall;
    function Get_Fill: IVGFill; safecall;
    procedure Set_Outline(const ppVal: IVGOutline); safecall;
    function Get_Outline: IVGOutline; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Style: cdrFontStyle read Get_Style write Set_Style;
    property Size: Single read Get_Size write Set_Size;
    property Underline: cdrFontLine read Get_Underline write Set_Underline;
    property Overscore: cdrFontLine read Get_Overscore write Set_Overscore;
    property Strikethru: cdrFontLine read Get_Strikethru write Set_Strikethru;
    property Uppercase: cdrFontCase read Get_Uppercase write Set_Uppercase;
    property Position: cdrFontPosition read Get_Position write Set_Position;
    property RangeKerning: Integer read Get_RangeKerning write Set_RangeKerning;
    property Fill: IVGFill read Get_Fill write Set_Fill;
    property Outline: IVGOutline read Get_Outline write Set_Outline;
  end;

// *********************************************************************//
// DispIntf:  IVGStructFontPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580064-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructFontPropertiesDisp = dispinterface
    ['{B0580064-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString dispid 1610743808;
    property Style: cdrFontStyle dispid 1610743810;
    property Size: Single dispid 1610743812;
    property Underline: cdrFontLine dispid 1610743814;
    property Overscore: cdrFontLine dispid 1610743816;
    property Strikethru: cdrFontLine dispid 1610743818;
    property Uppercase: cdrFontCase dispid 1610743820;
    property Position: cdrFontPosition dispid 1610743822;
    property RangeKerning: Integer dispid 1610743824;
    property Fill: IVGFill dispid 1610743826;
    property Outline: IVGOutline dispid 1610743828;
  end;

// *********************************************************************//
// Interface: IVGStructAlignProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580062-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructAlignProperties = interface(IDispatch)
    ['{B0580062-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_Alignment(pVal: cdrAlignment); safecall;
    function Get_Alignment: cdrAlignment; safecall;
    procedure Set_FirstLineIndent(pVal: Double); safecall;
    function Get_FirstLineIndent: Double; safecall;
    procedure Set_LeftIndent(pVal: Double); safecall;
    function Get_LeftIndent: Double; safecall;
    procedure Set_RightIndent(pVal: Double); safecall;
    function Get_RightIndent: Double; safecall;
    procedure Set_MaxWordSpacing(pVal: Single); safecall;
    function Get_MaxWordSpacing: Single; safecall;
    procedure Set_MinWordSpacing(pVal: Single); safecall;
    function Get_MinWordSpacing: Single; safecall;
    procedure Set_MaxCharacterSpacing(pVal: Single); safecall;
    function Get_MaxCharacterSpacing: Single; safecall;
    procedure Set_HorizontalCharacterShift(pVal: Integer); safecall;
    function Get_HorizontalCharacterShift: Integer; safecall;
    procedure Set_VerticalCharacterShift(pVal: Integer); safecall;
    function Get_VerticalCharacterShift: Integer; safecall;
    procedure Set_CharacterRotation(pVal: Single); safecall;
    function Get_CharacterRotation: Single; safecall;
    property Alignment: cdrAlignment read Get_Alignment write Set_Alignment;
    property FirstLineIndent: Double read Get_FirstLineIndent write Set_FirstLineIndent;
    property LeftIndent: Double read Get_LeftIndent write Set_LeftIndent;
    property RightIndent: Double read Get_RightIndent write Set_RightIndent;
    property MaxWordSpacing: Single read Get_MaxWordSpacing write Set_MaxWordSpacing;
    property MinWordSpacing: Single read Get_MinWordSpacing write Set_MinWordSpacing;
    property MaxCharacterSpacing: Single read Get_MaxCharacterSpacing write Set_MaxCharacterSpacing;
    property HorizontalCharacterShift: Integer read Get_HorizontalCharacterShift write Set_HorizontalCharacterShift;
    property VerticalCharacterShift: Integer read Get_VerticalCharacterShift write Set_VerticalCharacterShift;
    property CharacterRotation: Single read Get_CharacterRotation write Set_CharacterRotation;
  end;

// *********************************************************************//
// DispIntf:  IVGStructAlignPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580062-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructAlignPropertiesDisp = dispinterface
    ['{B0580062-9AA4-44FD-9547-4F91EB757AC4}']
    property Alignment: cdrAlignment dispid 1610743808;
    property FirstLineIndent: Double dispid 1610743810;
    property LeftIndent: Double dispid 1610743812;
    property RightIndent: Double dispid 1610743814;
    property MaxWordSpacing: Single dispid 1610743816;
    property MinWordSpacing: Single dispid 1610743818;
    property MaxCharacterSpacing: Single dispid 1610743820;
    property HorizontalCharacterShift: Integer dispid 1610743822;
    property VerticalCharacterShift: Integer dispid 1610743824;
    property CharacterRotation: Single dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IVGStructSpaceProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580069-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructSpaceProperties = interface(IDispatch)
    ['{B0580069-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_CharacterSpacing(pVal: Single); safecall;
    function Get_CharacterSpacing: Single; safecall;
    procedure Set_WordSpacing(pVal: Single); safecall;
    function Get_WordSpacing: Single; safecall;
    procedure Set_LineSpacing(pVal: Single); safecall;
    function Get_LineSpacing: Single; safecall;
    procedure Set_LineSpacingType(pVal: cdrLineSpacingType); safecall;
    function Get_LineSpacingType: cdrLineSpacingType; safecall;
    procedure Set_BeforeParagraphSpacing(pVal: Single); safecall;
    function Get_BeforeParagraphSpacing: Single; safecall;
    procedure Set_AfterParagraphSpacing(pVal: Single); safecall;
    function Get_AfterParagraphSpacing: Single; safecall;
    property CharacterSpacing: Single read Get_CharacterSpacing write Set_CharacterSpacing;
    property WordSpacing: Single read Get_WordSpacing write Set_WordSpacing;
    property LineSpacing: Single read Get_LineSpacing write Set_LineSpacing;
    property LineSpacingType: cdrLineSpacingType read Get_LineSpacingType write Set_LineSpacingType;
    property BeforeParagraphSpacing: Single read Get_BeforeParagraphSpacing write Set_BeforeParagraphSpacing;
    property AfterParagraphSpacing: Single read Get_AfterParagraphSpacing write Set_AfterParagraphSpacing;
  end;

// *********************************************************************//
// DispIntf:  IVGStructSpacePropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580069-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructSpacePropertiesDisp = dispinterface
    ['{B0580069-9AA4-44FD-9547-4F91EB757AC4}']
    property CharacterSpacing: Single dispid 1610743808;
    property WordSpacing: Single dispid 1610743810;
    property LineSpacing: Single dispid 1610743812;
    property LineSpacingType: cdrLineSpacingType dispid 1610743814;
    property BeforeParagraphSpacing: Single dispid 1610743816;
    property AfterParagraphSpacing: Single dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IVGStructHyphenationSettings
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580066-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructHyphenationSettings = interface(IDispatch)
    ['{B0580066-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_UseAutomaticHyphenation(pVal: WordBool); safecall;
    function Get_UseAutomaticHyphenation: WordBool; safecall;
    procedure Set_BreakCapitalized(pVal: WordBool); safecall;
    function Get_BreakCapitalized: WordBool; safecall;
    procedure Set_HotZone(pVal: Double); safecall;
    function Get_HotZone: Double; safecall;
    procedure Set_MinWordLength(pVal: Integer); safecall;
    function Get_MinWordLength: Integer; safecall;
    procedure Set_MinCharactersBefore(pVal: Integer); safecall;
    function Get_MinCharactersBefore: Integer; safecall;
    procedure Set_MinCharactersAfter(pVal: Integer); safecall;
    function Get_MinCharactersAfter: Integer; safecall;
    procedure Set_BreakAllCapWords(pVal: WordBool); safecall;
    function Get_BreakAllCapWords: WordBool; safecall;
    property UseAutomaticHyphenation: WordBool read Get_UseAutomaticHyphenation write Set_UseAutomaticHyphenation;
    property BreakCapitalized: WordBool read Get_BreakCapitalized write Set_BreakCapitalized;
    property HotZone: Double read Get_HotZone write Set_HotZone;
    property MinWordLength: Integer read Get_MinWordLength write Set_MinWordLength;
    property MinCharactersBefore: Integer read Get_MinCharactersBefore write Set_MinCharactersBefore;
    property MinCharactersAfter: Integer read Get_MinCharactersAfter write Set_MinCharactersAfter;
    property BreakAllCapWords: WordBool read Get_BreakAllCapWords write Set_BreakAllCapWords;
  end;

// *********************************************************************//
// DispIntf:  IVGStructHyphenationSettingsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580066-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructHyphenationSettingsDisp = dispinterface
    ['{B0580066-9AA4-44FD-9547-4F91EB757AC4}']
    property UseAutomaticHyphenation: WordBool dispid 1610743808;
    property BreakCapitalized: WordBool dispid 1610743810;
    property HotZone: Double dispid 1610743812;
    property MinWordLength: Integer dispid 1610743814;
    property MinCharactersBefore: Integer dispid 1610743816;
    property MinCharactersAfter: Integer dispid 1610743818;
    property BreakAllCapWords: WordBool dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IVGEffect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580026-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffect = interface(IDispatch)
    ['{B0580026-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffects; safecall;
    function Get_type_: cdrEffectType; safecall;
    function Get_Blend: IVGEffectBlend; safecall;
    function Get_ControlPath: IVGEffectControlPath; safecall;
    function Get_Extrude: IVGEffectExtrude; safecall;
    function Get_Envelope: IVGEffectEnvelope; safecall;
    function Get_TextOnPath: IVGEffectTextOnPath; safecall;
    function Get_DropShadow: IVGEffectDropShadow; safecall;
    function Get_Contour: IVGEffectContour; safecall;
    function Get_Distortion: IVGEffectDistortion; safecall;
    function Get_Lens: IVGEffectLens; safecall;
    function Get_Perspective: IVGEffectPerspective; safecall;
    function Get_Clones: IVGEffects; safecall;
    function Get_CloneParent: IVGEffect; safecall;
    procedure Clear; safecall;
    function Separate: IVGShapeRange; safecall;
    function Get_Custom: IVGCustomEffect; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffects read Get_Parent;
    property type_: cdrEffectType read Get_type_;
    property Blend: IVGEffectBlend read Get_Blend;
    property ControlPath: IVGEffectControlPath read Get_ControlPath;
    property Extrude: IVGEffectExtrude read Get_Extrude;
    property Envelope: IVGEffectEnvelope read Get_Envelope;
    property TextOnPath: IVGEffectTextOnPath read Get_TextOnPath;
    property DropShadow: IVGEffectDropShadow read Get_DropShadow;
    property Contour: IVGEffectContour read Get_Contour;
    property Distortion: IVGEffectDistortion read Get_Distortion;
    property Lens: IVGEffectLens read Get_Lens;
    property Perspective: IVGEffectPerspective read Get_Perspective;
    property Clones: IVGEffects read Get_Clones;
    property CloneParent: IVGEffect read Get_CloneParent;
    property Custom: IVGCustomEffect read Get_Custom;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580026-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectDisp = dispinterface
    ['{B0580026-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffects readonly dispid 1610743809;
    property type_: cdrEffectType readonly dispid 1610743810;
    property Blend: IVGEffectBlend readonly dispid 1610743811;
    property ControlPath: IVGEffectControlPath readonly dispid 1610743812;
    property Extrude: IVGEffectExtrude readonly dispid 1610743813;
    property Envelope: IVGEffectEnvelope readonly dispid 1610743814;
    property TextOnPath: IVGEffectTextOnPath readonly dispid 1610743815;
    property DropShadow: IVGEffectDropShadow readonly dispid 1610743816;
    property Contour: IVGEffectContour readonly dispid 1610743817;
    property Distortion: IVGEffectDistortion readonly dispid 1610743818;
    property Lens: IVGEffectLens readonly dispid 1610743819;
    property Perspective: IVGEffectPerspective readonly dispid 1610743820;
    property Clones: IVGEffects readonly dispid 1610743821;
    property CloneParent: IVGEffect readonly dispid 1610743822;
    procedure Clear; dispid 1610743823;
    function Separate: IVGShapeRange; dispid 1610743824;
    property Custom: IVGCustomEffect readonly dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IVGEffects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580036-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffects = interface(IDispatch)
    ['{B0580036-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGShape; safecall;
    function Get_Item(Index: Integer): IVGEffect; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_BlendEffects: IVGEffects; safecall;
    function Get_CustomEffects: IVGEffects; safecall;
    function Get_DistortionEffects: IVGEffects; safecall;
    function Get_EnvelopeEffects: IVGEffects; safecall;
    function Get_PerspectiveEffects: IVGEffects; safecall;
    function Get_ContourEffect: IVGEffect; safecall;
    function Get_ControlPathEffect: IVGEffect; safecall;
    function Get_DropShadowEffect: IVGEffect; safecall;
    function Get_ExtrudeEffect: IVGEffect; safecall;
    function Get_LensEffect: IVGEffect; safecall;
    function Get_TextOnPathEffect: IVGEffect; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGShape read Get_Parent;
    property Item[Index: Integer]: IVGEffect read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property BlendEffects: IVGEffects read Get_BlendEffects;
    property CustomEffects: IVGEffects read Get_CustomEffects;
    property DistortionEffects: IVGEffects read Get_DistortionEffects;
    property EnvelopeEffects: IVGEffects read Get_EnvelopeEffects;
    property PerspectiveEffects: IVGEffects read Get_PerspectiveEffects;
    property ContourEffect: IVGEffect read Get_ContourEffect;
    property ControlPathEffect: IVGEffect read Get_ControlPathEffect;
    property DropShadowEffect: IVGEffect read Get_DropShadowEffect;
    property ExtrudeEffect: IVGEffect read Get_ExtrudeEffect;
    property LensEffect: IVGEffect read Get_LensEffect;
    property TextOnPathEffect: IVGEffect read Get_TextOnPathEffect;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580036-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectsDisp = dispinterface
    ['{B0580036-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGShape readonly dispid 1610743809;
    property Item[Index: Integer]: IVGEffect readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    property BlendEffects: IVGEffects readonly dispid 1610743813;
    property CustomEffects: IVGEffects readonly dispid 1610743814;
    property DistortionEffects: IVGEffects readonly dispid 1610743815;
    property EnvelopeEffects: IVGEffects readonly dispid 1610743816;
    property PerspectiveEffects: IVGEffects readonly dispid 1610743817;
    property ContourEffect: IVGEffect readonly dispid 1610743818;
    property ControlPathEffect: IVGEffect readonly dispid 1610743819;
    property DropShadowEffect: IVGEffect readonly dispid 1610743820;
    property ExtrudeEffect: IVGEffect readonly dispid 1610743821;
    property LensEffect: IVGEffect readonly dispid 1610743822;
    property TextOnPathEffect: IVGEffect readonly dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IVGEffectBlend
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580027-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectBlend = interface(IDispatch)
    ['{B0580027-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_StartShape: IVGShape; safecall;
    procedure Set_StartShape(const ppVal: IVGShape); safecall;
    function Get_EndShape: IVGShape; safecall;
    procedure Set_EndShape(const ppVal: IVGShape); safecall;
    function Get_BlendGroup: IVGShape; safecall;
    function Get_Path: IVGShape; safecall;
    procedure Set_Path(const ppVal: IVGShape); safecall;
    function Get_StartShapeOffset: Double; safecall;
    procedure Set_StartShapeOffset(pVal: Double); safecall;
    function Get_EndShapeOffset: Double; safecall;
    procedure Set_EndShapeOffset(pVal: Double); safecall;
    function Get_Mode: cdrBlendMode; safecall;
    procedure Set_Mode(pVal: cdrBlendMode); safecall;
    function Get_Steps: Integer; safecall;
    procedure Set_Steps(pVal: Integer); safecall;
    function Get_Spacing: Double; safecall;
    procedure Set_Spacing(pVal: Double); safecall;
    function Get_Angle: Double; safecall;
    procedure Set_Angle(pVal: Double); safecall;
    function Get_Loop: WordBool; safecall;
    procedure Set_Loop(pVal: WordBool); safecall;
    function Get_FullPath: WordBool; safecall;
    procedure Set_FullPath(pVal: WordBool); safecall;
    function Get_RotateShapes: WordBool; safecall;
    procedure Set_RotateShapes(pVal: WordBool); safecall;
    function Get_ColorBlendType: cdrFountainFillBlendType; safecall;
    procedure Set_ColorBlendType(pVal: cdrFountainFillBlendType); safecall;
    function Get_SpacingAcceleration: Integer; safecall;
    procedure Set_SpacingAcceleration(pVal: Integer); safecall;
    function Get_ColorAcceleration: Integer; safecall;
    procedure Set_ColorAcceleration(pVal: Integer); safecall;
    function Get_LinkAcceleration: WordBool; safecall;
    procedure Set_LinkAcceleration(pVal: WordBool); safecall;
    function Get_AccelerateSize: WordBool; safecall;
    procedure Set_AccelerateSize(pVal: WordBool); safecall;
    function Get_MapNodes: WordBool; safecall;
    procedure Set_MapNodes(pVal: WordBool); safecall;
    function Get_StartPoint: IVGSnapPoint; safecall;
    procedure Set_StartPoint(const ppVal: IVGSnapPoint); safecall;
    function Get_EndPoint: IVGSnapPoint; safecall;
    procedure Set_EndPoint(const ppVal: IVGSnapPoint); safecall;
    function Split(StepNo: Integer): IVGShape; safecall;
    function FuseStart: WordBool; safecall;
    function FuseEnd: WordBool; safecall;
    function CopyFrom(const Source: IVGEffectBlend): WordBool; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property StartShape: IVGShape read Get_StartShape write Set_StartShape;
    property EndShape: IVGShape read Get_EndShape write Set_EndShape;
    property BlendGroup: IVGShape read Get_BlendGroup;
    property Path: IVGShape read Get_Path write Set_Path;
    property StartShapeOffset: Double read Get_StartShapeOffset write Set_StartShapeOffset;
    property EndShapeOffset: Double read Get_EndShapeOffset write Set_EndShapeOffset;
    property Mode: cdrBlendMode read Get_Mode write Set_Mode;
    property Steps: Integer read Get_Steps write Set_Steps;
    property Spacing: Double read Get_Spacing write Set_Spacing;
    property Angle: Double read Get_Angle write Set_Angle;
    property Loop: WordBool read Get_Loop write Set_Loop;
    property FullPath: WordBool read Get_FullPath write Set_FullPath;
    property RotateShapes: WordBool read Get_RotateShapes write Set_RotateShapes;
    property ColorBlendType: cdrFountainFillBlendType read Get_ColorBlendType write Set_ColorBlendType;
    property SpacingAcceleration: Integer read Get_SpacingAcceleration write Set_SpacingAcceleration;
    property ColorAcceleration: Integer read Get_ColorAcceleration write Set_ColorAcceleration;
    property LinkAcceleration: WordBool read Get_LinkAcceleration write Set_LinkAcceleration;
    property AccelerateSize: WordBool read Get_AccelerateSize write Set_AccelerateSize;
    property MapNodes: WordBool read Get_MapNodes write Set_MapNodes;
    property StartPoint: IVGSnapPoint read Get_StartPoint write Set_StartPoint;
    property EndPoint: IVGSnapPoint read Get_EndPoint write Set_EndPoint;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectBlendDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580027-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectBlendDisp = dispinterface
    ['{B0580027-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property StartShape: IVGShape dispid 1610743810;
    property EndShape: IVGShape dispid 1610743812;
    property BlendGroup: IVGShape readonly dispid 1610743814;
    property Path: IVGShape dispid 1610743815;
    property StartShapeOffset: Double dispid 1610743817;
    property EndShapeOffset: Double dispid 1610743819;
    property Mode: cdrBlendMode dispid 1610743821;
    property Steps: Integer dispid 1610743823;
    property Spacing: Double dispid 1610743825;
    property Angle: Double dispid 1610743827;
    property Loop: WordBool dispid 1610743829;
    property FullPath: WordBool dispid 1610743831;
    property RotateShapes: WordBool dispid 1610743833;
    property ColorBlendType: cdrFountainFillBlendType dispid 1610743835;
    property SpacingAcceleration: Integer dispid 1610743837;
    property ColorAcceleration: Integer dispid 1610743839;
    property LinkAcceleration: WordBool dispid 1610743841;
    property AccelerateSize: WordBool dispid 1610743843;
    property MapNodes: WordBool dispid 1610743845;
    property StartPoint: IVGSnapPoint dispid 1610743847;
    property EndPoint: IVGSnapPoint dispid 1610743849;
    function Split(StepNo: Integer): IVGShape; dispid 1610743851;
    function FuseStart: WordBool; dispid 1610743852;
    function FuseEnd: WordBool; dispid 1610743853;
    function CopyFrom(const Source: IVGEffectBlend): WordBool; dispid 1610743854;
  end;

// *********************************************************************//
// Interface: IVGSnapPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580060-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSnapPoint = interface(IDispatch)
    ['{B0580060-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGShape; safecall;
    function Get_PositionX: Double; safecall;
    procedure Set_PositionX(pVal: Double); safecall;
    function Get_PositionY: Double; safecall;
    procedure Set_PositionY(pVal: Double); safecall;
    function Get_type_: cdrPointType; safecall;
    function Get_Node: IVGNode; safecall;
    function Get_IsDeletable: WordBool; safecall;
    function Get_IsMovable: WordBool; safecall;
    function Get_CanChangeDirection: WordBool; safecall;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); safecall;
    function Get_UsesDirection: WordBool; safecall;
    procedure Set_UsesDirection(pVal: WordBool); safecall;
    function Get_IsSelectable: WordBool; safecall;
    function Get_Direction: Double; safecall;
    procedure Set_Direction(pVal: Double); safecall;
    procedure SetPosition(PositionX: Double; PositionY: Double); safecall;
    function Get_Selected: WordBool; safecall;
    procedure Set_Selected(pVal: WordBool); safecall;
    procedure CreateSelection; safecall;
    function Get_User: IVGUserSnapPoint; safecall;
    function Get_Object_: IVGObjectSnapPoint; safecall;
    function Get_Shape: IVGShape; safecall;
    function Get_BBox: IVGBBoxSnapPoint; safecall;
    function Get_ReferenceData: WideString; safecall;
    procedure Delete; safecall;
    procedure Move(OffsetX: Double; OffsetY: Double); safecall;
    function Get_Edge: IVGEdgeSnapPoint; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGShape read Get_Parent;
    property PositionX: Double read Get_PositionX write Set_PositionX;
    property PositionY: Double read Get_PositionY write Set_PositionY;
    property type_: cdrPointType read Get_type_;
    property Node: IVGNode read Get_Node;
    property IsDeletable: WordBool read Get_IsDeletable;
    property IsMovable: WordBool read Get_IsMovable;
    property CanChangeDirection: WordBool read Get_CanChangeDirection;
    property UsesDirection: WordBool read Get_UsesDirection write Set_UsesDirection;
    property IsSelectable: WordBool read Get_IsSelectable;
    property Direction: Double read Get_Direction write Set_Direction;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property User: IVGUserSnapPoint read Get_User;
    property Object_: IVGObjectSnapPoint read Get_Object_;
    property Shape: IVGShape read Get_Shape;
    property BBox: IVGBBoxSnapPoint read Get_BBox;
    property ReferenceData: WideString read Get_ReferenceData;
    property Edge: IVGEdgeSnapPoint read Get_Edge;
  end;

// *********************************************************************//
// DispIntf:  IVGSnapPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580060-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSnapPointDisp = dispinterface
    ['{B0580060-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGShape readonly dispid 1610743809;
    property PositionX: Double dispid 1610743810;
    property PositionY: Double dispid 1610743812;
    property type_: cdrPointType readonly dispid 1610743814;
    property Node: IVGNode readonly dispid 1610743815;
    property IsDeletable: WordBool readonly dispid 1610743816;
    property IsMovable: WordBool readonly dispid 1610743817;
    property CanChangeDirection: WordBool readonly dispid 1610743818;
    procedure GetPosition(out PositionX: Double; out PositionY: Double); dispid 1610743819;
    property UsesDirection: WordBool dispid 1610743820;
    property IsSelectable: WordBool readonly dispid 1610743822;
    property Direction: Double dispid 1610743823;
    procedure SetPosition(PositionX: Double; PositionY: Double); dispid 1610743825;
    property Selected: WordBool dispid 1610743826;
    procedure CreateSelection; dispid 1610743828;
    property User: IVGUserSnapPoint readonly dispid 1610743829;
    property Object_: IVGObjectSnapPoint readonly dispid 1610743830;
    property Shape: IVGShape readonly dispid 1610743831;
    property BBox: IVGBBoxSnapPoint readonly dispid 1610743832;
    property ReferenceData: WideString readonly dispid 1610743833;
    procedure Delete; dispid 1610743834;
    procedure Move(OffsetX: Double; OffsetY: Double); dispid 1610743835;
    property Edge: IVGEdgeSnapPoint readonly dispid 1610743836;
  end;

// *********************************************************************//
// Interface: IVGUserSnapPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A8-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGUserSnapPoint = interface(IDispatch)
    ['{B05800A8-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Id: WideString; safecall;
    function Get_AutoSnap: WordBool; safecall;
    procedure Set_AutoSnap(pVal: WordBool); safecall;
    property Id: WideString read Get_Id;
    property AutoSnap: WordBool read Get_AutoSnap write Set_AutoSnap;
  end;

// *********************************************************************//
// DispIntf:  IVGUserSnapPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A8-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGUserSnapPointDisp = dispinterface
    ['{B05800A8-9AA4-44FD-9547-4F91EB757AC4}']
    property Id: WideString readonly dispid 1610743808;
    property AutoSnap: WordBool dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IVGObjectSnapPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A9-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGObjectSnapPoint = interface(IDispatch)
    ['{B05800A9-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrObjectSnapPointType; safecall;
    property type_: cdrObjectSnapPointType read Get_type_;
  end;

// *********************************************************************//
// DispIntf:  IVGObjectSnapPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A9-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGObjectSnapPointDisp = dispinterface
    ['{B05800A9-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrObjectSnapPointType readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IVGBBoxSnapPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AA-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBBoxSnapPoint = interface(IDispatch)
    ['{B05800AA-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrReferencePoint; safecall;
    property type_: cdrReferencePoint read Get_type_;
  end;

// *********************************************************************//
// DispIntf:  IVGBBoxSnapPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AA-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBBoxSnapPointDisp = dispinterface
    ['{B05800AA-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrReferencePoint readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IVGEdgeSnapPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AC-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEdgeSnapPoint = interface(IDispatch)
    ['{B05800AC-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_SegmentIndex: Integer; safecall;
    function Get_SegmentOffset: Double; safecall;
    property SegmentIndex: Integer read Get_SegmentIndex;
    property SegmentOffset: Double read Get_SegmentOffset;
  end;

// *********************************************************************//
// DispIntf:  IVGEdgeSnapPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AC-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEdgeSnapPointDisp = dispinterface
    ['{B05800AC-9AA4-44FD-9547-4F91EB757AC4}']
    property SegmentIndex: Integer readonly dispid 1610743808;
    property SegmentOffset: Double readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IVGEffectControlPath
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580029-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectControlPath = interface(IDispatch)
    ['{B0580029-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_Effects: IVGEffects; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property Effects: IVGEffects read Get_Effects;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectControlPathDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580029-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectControlPathDisp = dispinterface
    ['{B0580029-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property Effects: IVGEffects readonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IVGEffectExtrude
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectExtrude = interface(IDispatch)
    ['{B058002D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_type_: cdrExtrudeType; safecall;
    procedure Set_type_(pVal: cdrExtrudeType); safecall;
    function Get_VanishingPoint: IVGExtrudeVanishingPoint; safecall;
    procedure Set_VanishingPoint(const ppVal: IVGExtrudeVanishingPoint); safecall;
    function Get_Depth: Integer; safecall;
    procedure Set_Depth(pVal: Integer); safecall;
    function Get_AngleX: Double; safecall;
    procedure Set_AngleX(pVal: Double); safecall;
    function Get_AngleY: Double; safecall;
    procedure Set_AngleY(pVal: Double); safecall;
    function Get_AngleZ: Double; safecall;
    procedure Set_AngleZ(pVal: Double); safecall;
    function Get_Shading: cdrExtrudeShading; safecall;
    procedure Set_Shading(pVal: cdrExtrudeShading); safecall;
    function Get_BaseColor: IVGColor; safecall;
    procedure Set_BaseColor(const ppVal: IVGColor); safecall;
    function Get_ShadingColor: IVGColor; safecall;
    procedure Set_ShadingColor(const ppVal: IVGColor); safecall;
    function Get_UseBevel: WordBool; safecall;
    procedure Set_UseBevel(pVal: WordBool); safecall;
    function Get_ShowBevelOnly: WordBool; safecall;
    procedure Set_ShowBevelOnly(pVal: WordBool); safecall;
    function Get_BevelDepth: Double; safecall;
    procedure Set_BevelDepth(pVal: Double); safecall;
    function Get_BevelAngle: Double; safecall;
    procedure Set_BevelAngle(pVal: Double); safecall;
    function Get_UseExtrudeColorForBevel: WordBool; safecall;
    procedure Set_UseExtrudeColorForBevel(pVal: WordBool); safecall;
    function Get_BevelColor: IVGColor; safecall;
    procedure Set_BevelColor(const ppVal: IVGColor); safecall;
    function Get_LightPresent(Index: Integer): WordBool; safecall;
    procedure Set_LightPresent(Index: Integer; pVal: WordBool); safecall;
    function Get_LightPosition(Index: Integer): cdrExtrudeLightPosition; safecall;
    procedure Set_LightPosition(Index: Integer; pVal: cdrExtrudeLightPosition); safecall;
    function Get_LightIntensity(Index: Integer): Integer; safecall;
    procedure Set_LightIntensity(Index: Integer; pVal: Integer); safecall;
    function Get_UseFullColorRange: WordBool; safecall;
    procedure Set_UseFullColorRange(pVal: WordBool); safecall;
    function Get_FaceVisible: WordBool; safecall;
    function Get_FaceShape: IVGShape; safecall;
    function Get_BevelGroup: IVGShape; safecall;
    function Get_ExtrudeGroup: IVGShape; safecall;
    procedure Rotate(AngleX: Double; AngleY: Double; AngleZ: Double); safecall;
    procedure SetBevel(Depth: Double; Angle: Double; ShowBevelOnly: WordBool); safecall;
    procedure SetLight(Index: Integer; Position: cdrExtrudeLightPosition; LightIntensity: Integer); safecall;
    procedure CopyFrom(const Source: IVGEffectExtrude); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property type_: cdrExtrudeType read Get_type_ write Set_type_;
    property VanishingPoint: IVGExtrudeVanishingPoint read Get_VanishingPoint write Set_VanishingPoint;
    property Depth: Integer read Get_Depth write Set_Depth;
    property AngleX: Double read Get_AngleX write Set_AngleX;
    property AngleY: Double read Get_AngleY write Set_AngleY;
    property AngleZ: Double read Get_AngleZ write Set_AngleZ;
    property Shading: cdrExtrudeShading read Get_Shading write Set_Shading;
    property BaseColor: IVGColor read Get_BaseColor write Set_BaseColor;
    property ShadingColor: IVGColor read Get_ShadingColor write Set_ShadingColor;
    property UseBevel: WordBool read Get_UseBevel write Set_UseBevel;
    property ShowBevelOnly: WordBool read Get_ShowBevelOnly write Set_ShowBevelOnly;
    property BevelDepth: Double read Get_BevelDepth write Set_BevelDepth;
    property BevelAngle: Double read Get_BevelAngle write Set_BevelAngle;
    property UseExtrudeColorForBevel: WordBool read Get_UseExtrudeColorForBevel write Set_UseExtrudeColorForBevel;
    property BevelColor: IVGColor read Get_BevelColor write Set_BevelColor;
    property LightPresent[Index: Integer]: WordBool read Get_LightPresent write Set_LightPresent;
    property LightPosition[Index: Integer]: cdrExtrudeLightPosition read Get_LightPosition write Set_LightPosition;
    property LightIntensity[Index: Integer]: Integer read Get_LightIntensity write Set_LightIntensity;
    property UseFullColorRange: WordBool read Get_UseFullColorRange write Set_UseFullColorRange;
    property FaceVisible: WordBool read Get_FaceVisible;
    property FaceShape: IVGShape read Get_FaceShape;
    property BevelGroup: IVGShape read Get_BevelGroup;
    property ExtrudeGroup: IVGShape read Get_ExtrudeGroup;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectExtrudeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectExtrudeDisp = dispinterface
    ['{B058002D-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property type_: cdrExtrudeType dispid 1610743810;
    property VanishingPoint: IVGExtrudeVanishingPoint dispid 1610743812;
    property Depth: Integer dispid 1610743814;
    property AngleX: Double dispid 1610743816;
    property AngleY: Double dispid 1610743818;
    property AngleZ: Double dispid 1610743820;
    property Shading: cdrExtrudeShading dispid 1610743822;
    property BaseColor: IVGColor dispid 1610743824;
    property ShadingColor: IVGColor dispid 1610743826;
    property UseBevel: WordBool dispid 1610743828;
    property ShowBevelOnly: WordBool dispid 1610743830;
    property BevelDepth: Double dispid 1610743832;
    property BevelAngle: Double dispid 1610743834;
    property UseExtrudeColorForBevel: WordBool dispid 1610743836;
    property BevelColor: IVGColor dispid 1610743838;
    property LightPresent[Index: Integer]: WordBool dispid 1610743840;
    property LightPosition[Index: Integer]: cdrExtrudeLightPosition dispid 1610743842;
    property LightIntensity[Index: Integer]: Integer dispid 1610743844;
    property UseFullColorRange: WordBool dispid 1610743846;
    property FaceVisible: WordBool readonly dispid 1610743848;
    property FaceShape: IVGShape readonly dispid 1610743849;
    property BevelGroup: IVGShape readonly dispid 1610743850;
    property ExtrudeGroup: IVGShape readonly dispid 1610743851;
    procedure Rotate(AngleX: Double; AngleY: Double; AngleZ: Double); dispid 1610743852;
    procedure SetBevel(Depth: Double; Angle: Double; ShowBevelOnly: WordBool); dispid 1610743853;
    procedure SetLight(Index: Integer; Position: cdrExtrudeLightPosition; LightIntensity: Integer); dispid 1610743854;
    procedure CopyFrom(const Source: IVGEffectExtrude); dispid 1610743855;
  end;

// *********************************************************************//
// Interface: IVGExtrudeVanishingPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGExtrudeVanishingPoint = interface(IDispatch)
    ['{B058002E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffectExtrude; safecall;
    function Get_type_: cdrExtrudeVPType; safecall;
    procedure Set_type_(pVal: cdrExtrudeVPType); safecall;
    function Get_PositionX: Double; safecall;
    procedure Set_PositionX(pVal: Double); safecall;
    function Get_PositionY: Double; safecall;
    procedure Set_PositionY(pVal: Double); safecall;
    function Get_Effects: IVGEffects; safecall;
    function Share(const Source: IVGEffectExtrude): WordBool; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffectExtrude read Get_Parent;
    property type_: cdrExtrudeVPType read Get_type_ write Set_type_;
    property PositionX: Double read Get_PositionX write Set_PositionX;
    property PositionY: Double read Get_PositionY write Set_PositionY;
    property Effects: IVGEffects read Get_Effects;
  end;

// *********************************************************************//
// DispIntf:  IVGExtrudeVanishingPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGExtrudeVanishingPointDisp = dispinterface
    ['{B058002E-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffectExtrude readonly dispid 1610743809;
    property type_: cdrExtrudeVPType dispid 1610743810;
    property PositionX: Double dispid 1610743812;
    property PositionY: Double dispid 1610743814;
    property Effects: IVGEffects readonly dispid 1610743816;
    function Share(const Source: IVGEffectExtrude): WordBool; dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGEffectEnvelope
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectEnvelope = interface(IDispatch)
    ['{B058002C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_Container: IVGCurve; safecall;
    procedure Set_Container(const pVal: IVGCurve); safecall;
    function Get_Mode: cdrEnvelopeMode; safecall;
    procedure Set_Mode(pVal: cdrEnvelopeMode); safecall;
    function Get_KeepLines: WordBool; safecall;
    procedure Set_KeepLines(pVal: WordBool); safecall;
    procedure Select(PresetIndex: Integer); safecall;
    procedure CopyFrom(const Source: IVGEffectEnvelope); safecall;
    function CreateFrom(const Shape: IVGShape): WordBool; safecall;
    function CopyFromShape(const Source: IVGShape; Mode: cdrEnvelopeMode; KeepLines: WordBool; 
                           CopyMode: cdrEnvelopeCopyMode; CornerIndices: OleVariant): WordBool; safecall;
    function CopyFromCurve(const Source: IVGCurve; Mode: cdrEnvelopeMode; KeepLines: WordBool; 
                           CopyMode: cdrEnvelopeCopyMode; CornerIndices: OleVariant): WordBool; safecall;
    function Get_CornerIndices: OleVariant; safecall;
    procedure Set_CornerIndices(pVal: OleVariant); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property Container: IVGCurve read Get_Container write Set_Container;
    property Mode: cdrEnvelopeMode read Get_Mode write Set_Mode;
    property KeepLines: WordBool read Get_KeepLines write Set_KeepLines;
    property CornerIndices: OleVariant read Get_CornerIndices write Set_CornerIndices;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectEnvelopeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectEnvelopeDisp = dispinterface
    ['{B058002C-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property Container: IVGCurve dispid 1610743810;
    property Mode: cdrEnvelopeMode dispid 1610743812;
    property KeepLines: WordBool dispid 1610743814;
    procedure Select(PresetIndex: Integer); dispid 1610743816;
    procedure CopyFrom(const Source: IVGEffectEnvelope); dispid 1610743817;
    function CreateFrom(const Shape: IVGShape): WordBool; dispid 1610743818;
    function CopyFromShape(const Source: IVGShape; Mode: cdrEnvelopeMode; KeepLines: WordBool; 
                           CopyMode: cdrEnvelopeCopyMode; CornerIndices: OleVariant): WordBool; dispid 1610743819;
    function CopyFromCurve(const Source: IVGCurve; Mode: cdrEnvelopeMode; KeepLines: WordBool; 
                           CopyMode: cdrEnvelopeCopyMode; CornerIndices: OleVariant): WordBool; dispid 1610743820;
    property CornerIndices: OleVariant dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IVGEffectTextOnPath
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580033-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectTextOnPath = interface(IDispatch)
    ['{B0580033-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_Text: IVGShape; safecall;
    procedure Set_Text(const ppVal: IVGShape); safecall;
    function Get_Path: IVGShape; safecall;
    procedure Set_Path(const ppVal: IVGShape); safecall;
    function Get_DistanceFromPath: Double; safecall;
    procedure Set_DistanceFromPath(pVal: Double); safecall;
    function Get_Offset: Double; safecall;
    procedure Set_Offset(pVal: Double); safecall;
    function Get_Orientation: cdrFittedOrientation; safecall;
    procedure Set_Orientation(pVal: cdrFittedOrientation); safecall;
    function Get_Placement: cdrFittedPlacement; safecall;
    procedure Set_Placement(pVal: cdrFittedPlacement); safecall;
    function Get_PlaceOnOtherSide: WordBool; safecall;
    procedure Set_PlaceOnOtherSide(pVal: WordBool); safecall;
    function Get_Quadrant: cdrFittedQuadrant; safecall;
    procedure Set_Quadrant(pVal: cdrFittedQuadrant); safecall;
    function Get_VertPlacement: cdrFittedVertPlacement; safecall;
    procedure Set_VertPlacement(pVal: cdrFittedVertPlacement); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property Text: IVGShape read Get_Text write Set_Text;
    property Path: IVGShape read Get_Path write Set_Path;
    property DistanceFromPath: Double read Get_DistanceFromPath write Set_DistanceFromPath;
    property Offset: Double read Get_Offset write Set_Offset;
    property Orientation: cdrFittedOrientation read Get_Orientation write Set_Orientation;
    property Placement: cdrFittedPlacement read Get_Placement write Set_Placement;
    property PlaceOnOtherSide: WordBool read Get_PlaceOnOtherSide write Set_PlaceOnOtherSide;
    property Quadrant: cdrFittedQuadrant read Get_Quadrant write Set_Quadrant;
    property VertPlacement: cdrFittedVertPlacement read Get_VertPlacement write Set_VertPlacement;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectTextOnPathDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580033-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectTextOnPathDisp = dispinterface
    ['{B0580033-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property Text: IVGShape dispid 1610743810;
    property Path: IVGShape dispid 1610743812;
    property DistanceFromPath: Double dispid 1610743814;
    property Offset: Double dispid 1610743816;
    property Orientation: cdrFittedOrientation dispid 1610743818;
    property Placement: cdrFittedPlacement dispid 1610743820;
    property PlaceOnOtherSide: WordBool dispid 1610743822;
    property Quadrant: cdrFittedQuadrant dispid 1610743824;
    property VertPlacement: cdrFittedVertPlacement dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IVGEffectDropShadow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectDropShadow = interface(IDispatch)
    ['{B058002B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_OffsetX: Double; safecall;
    procedure Set_OffsetX(pVal: Double); safecall;
    function Get_OffsetY: Double; safecall;
    procedure Set_OffsetY(pVal: Double); safecall;
    function Get_Opacity: Integer; safecall;
    procedure Set_Opacity(pVal: Integer); safecall;
    function Get_Feather: Integer; safecall;
    procedure Set_Feather(pVal: Integer); safecall;
    function Get_FeatherType: cdrFeatherType; safecall;
    procedure Set_FeatherType(pVal: cdrFeatherType); safecall;
    function Get_FeatherEdge: cdrEdgeType; safecall;
    procedure Set_FeatherEdge(pVal: cdrEdgeType); safecall;
    function Get_type_: cdrDropShadowType; safecall;
    procedure Set_type_(pVal: cdrDropShadowType); safecall;
    function Get_PerspectiveAngle: Double; safecall;
    procedure Set_PerspectiveAngle(pVal: Double); safecall;
    function Get_PerspectiveStretch: Double; safecall;
    procedure Set_PerspectiveStretch(pVal: Double); safecall;
    function Get_Fade: Integer; safecall;
    procedure Set_Fade(pVal: Integer); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    procedure SetOffset(OffsetX: Double; OffsetY: Double); safecall;
    function Get_ShadowGroup: IVGShape; safecall;
    function Get_MergeMode: cdrMergeMode; safecall;
    procedure Set_MergeMode(pVal: cdrMergeMode); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property OffsetX: Double read Get_OffsetX write Set_OffsetX;
    property OffsetY: Double read Get_OffsetY write Set_OffsetY;
    property Opacity: Integer read Get_Opacity write Set_Opacity;
    property Feather: Integer read Get_Feather write Set_Feather;
    property FeatherType: cdrFeatherType read Get_FeatherType write Set_FeatherType;
    property FeatherEdge: cdrEdgeType read Get_FeatherEdge write Set_FeatherEdge;
    property type_: cdrDropShadowType read Get_type_ write Set_type_;
    property PerspectiveAngle: Double read Get_PerspectiveAngle write Set_PerspectiveAngle;
    property PerspectiveStretch: Double read Get_PerspectiveStretch write Set_PerspectiveStretch;
    property Fade: Integer read Get_Fade write Set_Fade;
    property Color: IVGColor read Get_Color write Set_Color;
    property ShadowGroup: IVGShape read Get_ShadowGroup;
    property MergeMode: cdrMergeMode read Get_MergeMode write Set_MergeMode;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectDropShadowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectDropShadowDisp = dispinterface
    ['{B058002B-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property OffsetX: Double dispid 1610743810;
    property OffsetY: Double dispid 1610743812;
    property Opacity: Integer dispid 1610743814;
    property Feather: Integer dispid 1610743816;
    property FeatherType: cdrFeatherType dispid 1610743818;
    property FeatherEdge: cdrEdgeType dispid 1610743820;
    property type_: cdrDropShadowType dispid 1610743822;
    property PerspectiveAngle: Double dispid 1610743824;
    property PerspectiveStretch: Double dispid 1610743826;
    property Fade: Integer dispid 1610743828;
    property Color: IVGColor dispid 1610743830;
    procedure SetOffset(OffsetX: Double; OffsetY: Double); dispid 1610743832;
    property ShadowGroup: IVGShape readonly dispid 1610743833;
    property MergeMode: cdrMergeMode dispid 1610743834;
  end;

// *********************************************************************//
// Interface: IVGEffectContour
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580028-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectContour = interface(IDispatch)
    ['{B0580028-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_Direction: cdrContourDirection; safecall;
    procedure Set_Direction(pVal: cdrContourDirection); safecall;
    function Get_Offset: Double; safecall;
    procedure Set_Offset(pVal: Double); safecall;
    function Get_Steps: Integer; safecall;
    procedure Set_Steps(pVal: Integer); safecall;
    function Get_ColorBlendType: cdrFountainFillBlendType; safecall;
    procedure Set_ColorBlendType(pVal: cdrFountainFillBlendType); safecall;
    function Get_OutlineColor: IVGColor; safecall;
    procedure Set_OutlineColor(const ppVal: IVGColor); safecall;
    function Get_FillColor: IVGColor; safecall;
    procedure Set_FillColor(const ppVal: IVGColor); safecall;
    function Get_FillColorTo: IVGColor; safecall;
    procedure Set_FillColorTo(const ppVal: IVGColor); safecall;
    function Get_LinkAcceleration: WordBool; safecall;
    procedure Set_LinkAcceleration(pVal: WordBool); safecall;
    function Get_ColorAcceleration: Integer; safecall;
    procedure Set_ColorAcceleration(pVal: Integer); safecall;
    function Get_SpacingAcceleration: Integer; safecall;
    procedure Set_SpacingAcceleration(pVal: Integer); safecall;
    function Get_ContourGroup: IVGShape; safecall;
    function Get_EndCapType: cdrContourEndCapType; safecall;
    procedure Set_EndCapType(pVal: cdrContourEndCapType); safecall;
    function Get_CornerType: cdrContourCornerType; safecall;
    procedure Set_CornerType(pVal: cdrContourCornerType); safecall;
    function Get_MiterLimit: Double; safecall;
    procedure Set_MiterLimit(pVal: Double); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property Direction: cdrContourDirection read Get_Direction write Set_Direction;
    property Offset: Double read Get_Offset write Set_Offset;
    property Steps: Integer read Get_Steps write Set_Steps;
    property ColorBlendType: cdrFountainFillBlendType read Get_ColorBlendType write Set_ColorBlendType;
    property OutlineColor: IVGColor read Get_OutlineColor write Set_OutlineColor;
    property FillColor: IVGColor read Get_FillColor write Set_FillColor;
    property FillColorTo: IVGColor read Get_FillColorTo write Set_FillColorTo;
    property LinkAcceleration: WordBool read Get_LinkAcceleration write Set_LinkAcceleration;
    property ColorAcceleration: Integer read Get_ColorAcceleration write Set_ColorAcceleration;
    property SpacingAcceleration: Integer read Get_SpacingAcceleration write Set_SpacingAcceleration;
    property ContourGroup: IVGShape read Get_ContourGroup;
    property EndCapType: cdrContourEndCapType read Get_EndCapType write Set_EndCapType;
    property CornerType: cdrContourCornerType read Get_CornerType write Set_CornerType;
    property MiterLimit: Double read Get_MiterLimit write Set_MiterLimit;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectContourDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580028-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectContourDisp = dispinterface
    ['{B0580028-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property Direction: cdrContourDirection dispid 1610743810;
    property Offset: Double dispid 1610743812;
    property Steps: Integer dispid 1610743814;
    property ColorBlendType: cdrFountainFillBlendType dispid 1610743816;
    property OutlineColor: IVGColor dispid 1610743818;
    property FillColor: IVGColor dispid 1610743820;
    property FillColorTo: IVGColor dispid 1610743822;
    property LinkAcceleration: WordBool dispid 1610743824;
    property ColorAcceleration: Integer dispid 1610743826;
    property SpacingAcceleration: Integer dispid 1610743828;
    property ContourGroup: IVGShape readonly dispid 1610743830;
    property EndCapType: cdrContourEndCapType dispid 1610743831;
    property CornerType: cdrContourCornerType dispid 1610743833;
    property MiterLimit: Double dispid 1610743835;
  end;

// *********************************************************************//
// Interface: IVGEffectDistortion
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectDistortion = interface(IDispatch)
    ['{B058002A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_type_: cdrDistortionType; safecall;
    procedure Set_type_(pVal: cdrDistortionType); safecall;
    function Get_OriginX: Double; safecall;
    procedure Set_OriginX(pVal: Double); safecall;
    function Get_OriginY: Double; safecall;
    procedure Set_OriginY(pVal: Double); safecall;
    function Get_PushPull: IVGEffectPushPullDistortion; safecall;
    procedure Set_PushPull(const ppVal: IVGEffectPushPullDistortion); safecall;
    function Get_Zipper: IVGEffectZipperDistortion; safecall;
    procedure Set_Zipper(const ppVal: IVGEffectZipperDistortion); safecall;
    function Get_Twister: IVGEffectTwisterDistortion; safecall;
    procedure Set_Twister(const ppVal: IVGEffectTwisterDistortion); safecall;
    procedure CenterDistortion; safecall;
    function Get_Custom: IVGEffectCustomDistortion; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property type_: cdrDistortionType read Get_type_ write Set_type_;
    property OriginX: Double read Get_OriginX write Set_OriginX;
    property OriginY: Double read Get_OriginY write Set_OriginY;
    property PushPull: IVGEffectPushPullDistortion read Get_PushPull write Set_PushPull;
    property Zipper: IVGEffectZipperDistortion read Get_Zipper write Set_Zipper;
    property Twister: IVGEffectTwisterDistortion read Get_Twister write Set_Twister;
    property Custom: IVGEffectCustomDistortion read Get_Custom;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectDistortionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058002A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectDistortionDisp = dispinterface
    ['{B058002A-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property type_: cdrDistortionType dispid 1610743810;
    property OriginX: Double dispid 1610743812;
    property OriginY: Double dispid 1610743814;
    property PushPull: IVGEffectPushPullDistortion dispid 1610743816;
    property Zipper: IVGEffectZipperDistortion dispid 1610743818;
    property Twister: IVGEffectTwisterDistortion dispid 1610743820;
    procedure CenterDistortion; dispid 1610743822;
    property Custom: IVGEffectCustomDistortion readonly dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IVGEffectPushPullDistortion
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580032-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectPushPullDistortion = interface(IDispatch)
    ['{B0580032-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffectDistortion; safecall;
    function Get_Amplitude: Integer; safecall;
    procedure Set_Amplitude(pVal: Integer); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffectDistortion read Get_Parent;
    property Amplitude: Integer read Get_Amplitude write Set_Amplitude;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectPushPullDistortionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580032-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectPushPullDistortionDisp = dispinterface
    ['{B0580032-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffectDistortion readonly dispid 1610743809;
    property Amplitude: Integer dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IVGEffectZipperDistortion
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580035-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectZipperDistortion = interface(IDispatch)
    ['{B0580035-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffectDistortion; safecall;
    function Get_Amplitude: Integer; safecall;
    procedure Set_Amplitude(pVal: Integer); safecall;
    function Get_Frequency: Integer; safecall;
    procedure Set_Frequency(pVal: Integer); safecall;
    function Get_Random: WordBool; safecall;
    procedure Set_Random(pVal: WordBool); safecall;
    function Get_Smooth: WordBool; safecall;
    procedure Set_Smooth(pVal: WordBool); safecall;
    function Get_Local: WordBool; safecall;
    procedure Set_Local(pVal: WordBool); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffectDistortion read Get_Parent;
    property Amplitude: Integer read Get_Amplitude write Set_Amplitude;
    property Frequency: Integer read Get_Frequency write Set_Frequency;
    property Random: WordBool read Get_Random write Set_Random;
    property Smooth: WordBool read Get_Smooth write Set_Smooth;
    property Local: WordBool read Get_Local write Set_Local;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectZipperDistortionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580035-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectZipperDistortionDisp = dispinterface
    ['{B0580035-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffectDistortion readonly dispid 1610743809;
    property Amplitude: Integer dispid 1610743810;
    property Frequency: Integer dispid 1610743812;
    property Random: WordBool dispid 1610743814;
    property Smooth: WordBool dispid 1610743816;
    property Local: WordBool dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IVGEffectTwisterDistortion
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580034-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectTwisterDistortion = interface(IDispatch)
    ['{B0580034-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffectDistortion; safecall;
    function Get_Angle: Double; safecall;
    procedure Set_Angle(pVal: Double); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffectDistortion read Get_Parent;
    property Angle: Double read Get_Angle write Set_Angle;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectTwisterDistortionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580034-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectTwisterDistortionDisp = dispinterface
    ['{B0580034-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffectDistortion readonly dispid 1610743809;
    property Angle: Double dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IVGEffectCustomDistortion
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectCustomDistortion = interface(IDispatch)
    ['{B058001B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_DistortionID: WideString; safecall;
    property DistortionID: WideString read Get_DistortionID;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectCustomDistortionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectCustomDistortionDisp = dispinterface
    ['{B058001B-9AA4-44FD-9547-4F91EB757AC4}']
    property DistortionID: WideString readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IVGEffectLens
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580030-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectLens = interface(IDispatch)
    ['{B0580030-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    procedure Freeze; safecall;
    procedure Unfreeze; safecall;
    function Ungroup: IVGShapeRange; safecall;
    function Get_Shapes: IVGShapes; safecall;
    function Get_Frozen: WordBool; safecall;
    function Get_type_: cdrLensType; safecall;
    procedure Set_type_(pVal: cdrLensType); safecall;
    function Get_Rate: Integer; safecall;
    procedure Set_Rate(pVal: Integer); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    function Get_OutlineColor: IVGColor; safecall;
    procedure Set_OutlineColor(const ppVal: IVGColor); safecall;
    function Get_FillColor: IVGColor; safecall;
    procedure Set_FillColor(const ppVal: IVGColor); safecall;
    function Get_FromColor: IVGColor; safecall;
    procedure Set_FromColor(const ppVal: IVGColor); safecall;
    function Get_ToColor: IVGColor; safecall;
    procedure Set_ToColor(const ppVal: IVGColor); safecall;
    function Get_UseOutlineColor: WordBool; safecall;
    procedure Set_UseOutlineColor(pVal: WordBool); safecall;
    function Get_UseFillColor: WordBool; safecall;
    procedure Set_UseFillColor(pVal: WordBool); safecall;
    function Get_ColorMapPalette: cdrFountainFillBlendType; safecall;
    procedure Set_ColorMapPalette(pVal: cdrFountainFillBlendType); safecall;
    function Get_Magnification: Double; safecall;
    procedure Set_Magnification(pVal: Double); safecall;
    function Get_UseViewPoint: WordBool; safecall;
    procedure Set_UseViewPoint(pVal: WordBool); safecall;
    function Get_ViewPointX: Double; safecall;
    procedure Set_ViewPointX(pVal: Double); safecall;
    function Get_ViewPointY: Double; safecall;
    procedure Set_ViewPointY(pVal: Double); safecall;
    function Get_RemoveFace: WordBool; safecall;
    procedure Set_RemoveFace(pVal: WordBool); safecall;
    function Get_PaletteRotation: Integer; safecall;
    procedure Set_PaletteRotation(pVal: Integer); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property Shapes: IVGShapes read Get_Shapes;
    property Frozen: WordBool read Get_Frozen;
    property type_: cdrLensType read Get_type_ write Set_type_;
    property Rate: Integer read Get_Rate write Set_Rate;
    property Color: IVGColor read Get_Color write Set_Color;
    property OutlineColor: IVGColor read Get_OutlineColor write Set_OutlineColor;
    property FillColor: IVGColor read Get_FillColor write Set_FillColor;
    property FromColor: IVGColor read Get_FromColor write Set_FromColor;
    property ToColor: IVGColor read Get_ToColor write Set_ToColor;
    property UseOutlineColor: WordBool read Get_UseOutlineColor write Set_UseOutlineColor;
    property UseFillColor: WordBool read Get_UseFillColor write Set_UseFillColor;
    property ColorMapPalette: cdrFountainFillBlendType read Get_ColorMapPalette write Set_ColorMapPalette;
    property Magnification: Double read Get_Magnification write Set_Magnification;
    property UseViewPoint: WordBool read Get_UseViewPoint write Set_UseViewPoint;
    property ViewPointX: Double read Get_ViewPointX write Set_ViewPointX;
    property ViewPointY: Double read Get_ViewPointY write Set_ViewPointY;
    property RemoveFace: WordBool read Get_RemoveFace write Set_RemoveFace;
    property PaletteRotation: Integer read Get_PaletteRotation write Set_PaletteRotation;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectLensDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580030-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectLensDisp = dispinterface
    ['{B0580030-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    procedure Freeze; dispid 1610743810;
    procedure Unfreeze; dispid 1610743811;
    function Ungroup: IVGShapeRange; dispid 1610743812;
    property Shapes: IVGShapes readonly dispid 1610743813;
    property Frozen: WordBool readonly dispid 1610743814;
    property type_: cdrLensType dispid 1610743815;
    property Rate: Integer dispid 1610743817;
    property Color: IVGColor dispid 1610743819;
    property OutlineColor: IVGColor dispid 1610743821;
    property FillColor: IVGColor dispid 1610743823;
    property FromColor: IVGColor dispid 1610743825;
    property ToColor: IVGColor dispid 1610743827;
    property UseOutlineColor: WordBool dispid 1610743829;
    property UseFillColor: WordBool dispid 1610743831;
    property ColorMapPalette: cdrFountainFillBlendType dispid 1610743833;
    property Magnification: Double dispid 1610743835;
    property UseViewPoint: WordBool dispid 1610743837;
    property ViewPointX: Double dispid 1610743839;
    property ViewPointY: Double dispid 1610743841;
    property RemoveFace: WordBool dispid 1610743843;
    property PaletteRotation: Integer dispid 1610743845;
  end;

// *********************************************************************//
// Interface: IVGEffectPerspective
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580031-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectPerspective = interface(IDispatch)
    ['{B0580031-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGEffect; safecall;
    function Get_UseHorizVanishingPoint: WordBool; safecall;
    procedure Set_UseHorizVanishingPoint(pVal: WordBool); safecall;
    function Get_UseVertVanishingPoint: WordBool; safecall;
    procedure Set_UseVertVanishingPoint(pVal: WordBool); safecall;
    function Get_HorizVanishingPointX: Double; safecall;
    procedure Set_HorizVanishingPointX(pVal: Double); safecall;
    function Get_HorizVanishingPointY: Double; safecall;
    procedure Set_HorizVanishingPointY(pVal: Double); safecall;
    function Get_VertVanishingPointX: Double; safecall;
    procedure Set_VertVanishingPointX(pVal: Double); safecall;
    function Get_VertVanishingPointY: Double; safecall;
    procedure Set_VertVanishingPointY(pVal: Double); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGEffect read Get_Parent;
    property UseHorizVanishingPoint: WordBool read Get_UseHorizVanishingPoint write Set_UseHorizVanishingPoint;
    property UseVertVanishingPoint: WordBool read Get_UseVertVanishingPoint write Set_UseVertVanishingPoint;
    property HorizVanishingPointX: Double read Get_HorizVanishingPointX write Set_HorizVanishingPointX;
    property HorizVanishingPointY: Double read Get_HorizVanishingPointY write Set_HorizVanishingPointY;
    property VertVanishingPointX: Double read Get_VertVanishingPointX write Set_VertVanishingPointX;
    property VertVanishingPointY: Double read Get_VertVanishingPointY write Set_VertVanishingPointY;
  end;

// *********************************************************************//
// DispIntf:  IVGEffectPerspectiveDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580031-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEffectPerspectiveDisp = dispinterface
    ['{B0580031-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGEffect readonly dispid 1610743809;
    property UseHorizVanishingPoint: WordBool dispid 1610743810;
    property UseVertVanishingPoint: WordBool dispid 1610743812;
    property HorizVanishingPointX: Double dispid 1610743814;
    property HorizVanishingPointY: Double dispid 1610743816;
    property VertVanishingPointX: Double dispid 1610743818;
    property VertVanishingPointY: Double dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IVGCustomEffect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCustomEffect = interface(IDispatch)
    ['{B058001A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_EffectID: WideString; safecall;
    function Get_EffectGroup: IVGShape; safecall;
    property EffectID: WideString read Get_EffectID;
    property EffectGroup: IVGShape read Get_EffectGroup;
  end;

// *********************************************************************//
// DispIntf:  IVGCustomEffectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCustomEffectDisp = dispinterface
    ['{B058001A-9AA4-44FD-9547-4F91EB757AC4}']
    property EffectID: WideString readonly dispid 1;
    property EffectGroup: IVGShape readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IVGTextRange
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580078-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextRange = interface(IDispatch)
    ['{B0580078-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const ppVal: WideString); safecall;
    function Get_WideText: WideString; safecall;
    procedure Set_WideText(const ppVal: WideString); safecall;
    function Get_Characters: IVGTextCharacters; safecall;
    function Get_Words: IVGTextWords; safecall;
    function Get_Lines: IVGTextLines; safecall;
    function Get_Paragraphs: IVGTextParagraphs; safecall;
    function Get_Start: Integer; safecall;
    procedure Set_Start(pVal: Integer); safecall;
    function Get_End_: Integer; safecall;
    procedure Set_End_(pVal: Integer); safecall;
    function Get_Length: Integer; safecall;
    procedure Set_Length(pVal: Integer); safecall;
    function Duplicate: IVGTextRange; safecall;
    function Get_Style: cdrFontStyle; safecall;
    procedure Set_Style(pVal: cdrFontStyle); safecall;
    function Get_Bold: WordBool; safecall;
    procedure Set_Bold(pVal: WordBool); safecall;
    function Get_Italic: WordBool; safecall;
    procedure Set_Italic(pVal: WordBool); safecall;
    function Get_Underline: cdrFontLine; safecall;
    procedure Set_Underline(pVal: cdrFontLine); safecall;
    function Get_Strikethru: cdrFontLine; safecall;
    procedure Set_Strikethru(pVal: cdrFontLine); safecall;
    function Get_Overscore: cdrFontLine; safecall;
    procedure Set_Overscore(pVal: cdrFontLine); safecall;
    function Get_Font: WideString; safecall;
    procedure Set_Font(const pVal: WideString); safecall;
    function Get_Size: Single; safecall;
    procedure Set_Size(pVal: Single); safecall;
    function Get_Position: cdrFontPosition; safecall;
    procedure Set_Position(pVal: cdrFontPosition); safecall;
    function Get_Case_: cdrFontCase; safecall;
    procedure Set_Case_(pVal: cdrFontCase); safecall;
    function Get_CharAngle: Single; safecall;
    procedure Set_CharAngle(pVal: Single); safecall;
    function Get_Alignment: cdrAlignment; safecall;
    procedure Set_Alignment(pVal: cdrAlignment); safecall;
    function Get_FirstLineIndent: Double; safecall;
    procedure Set_FirstLineIndent(pVal: Double); safecall;
    function Get_HorizShift: Integer; safecall;
    procedure Set_HorizShift(pVal: Integer); safecall;
    function Get_VertShift: Integer; safecall;
    procedure Set_VertShift(pVal: Integer); safecall;
    function Get_LeftIndent: Double; safecall;
    procedure Set_LeftIndent(pVal: Double); safecall;
    function Get_RightIndent: Double; safecall;
    procedure Set_RightIndent(pVal: Double); safecall;
    function Get_MinWordSpacing: Single; safecall;
    procedure Set_MinWordSpacing(pVal: Single); safecall;
    function Get_MaxWordSpacing: Single; safecall;
    procedure Set_MaxWordSpacing(pVal: Single); safecall;
    function Get_MaxCharSpacing: Single; safecall;
    procedure Set_MaxCharSpacing(pVal: Single); safecall;
    function Get_ParaSpacingBefore: Single; safecall;
    procedure Set_ParaSpacingBefore(pVal: Single); safecall;
    function Get_ParaSpacingAfter: Single; safecall;
    procedure Set_ParaSpacingAfter(pVal: Single); safecall;
    function Get_CharSpacing: Single; safecall;
    procedure Set_CharSpacing(pVal: Single); safecall;
    function Get_LineSpacing: Single; safecall;
    procedure Set_LineSpacing(pVal: Single); safecall;
    function Get_LineSpacingType: cdrLineSpacingType; safecall;
    function Get_WordSpacing: Single; safecall;
    procedure Set_WordSpacing(pVal: Single); safecall;
    function Get_AutoHyphenate: cdrTriState; safecall;
    procedure Set_AutoHyphenate(pVal: cdrTriState); safecall;
    function Get_HyphenHotZone: Double; safecall;
    procedure Set_HyphenHotZone(pVal: Double); safecall;
    function Get_HyphenMinCharsBefore: Integer; safecall;
    procedure Set_HyphenMinCharsBefore(pVal: Integer); safecall;
    function Get_HyphenMinCharsAfter: Integer; safecall;
    procedure Set_HyphenMinCharsAfter(pVal: Integer); safecall;
    function Get_HyphenMinWordLength: Integer; safecall;
    procedure Set_HyphenMinWordLength(pVal: Integer); safecall;
    function Get_HyphenateCapitals: WordBool; safecall;
    procedure Set_HyphenateCapitals(pVal: WordBool); safecall;
    procedure Delete; safecall;
    procedure Select; safecall;
    procedure Copy; safecall;
    function Paste: IVGTextRange; safecall;
    procedure ChangeCase(Case_: cdrTextChangeCase); safecall;
    procedure SetRange(Start: Integer; End_: Integer); safecall;
    function Get_LanguageID: cdrTextLanguage; safecall;
    procedure Set_LanguageID(pVal: cdrTextLanguage); safecall;
    function Get_CharSet: cdrTextCharSet; safecall;
    procedure Set_CharSet(pVal: cdrTextCharSet); safecall;
    function InsertBefore(const Text: WideString; LanguageID: cdrTextLanguage; 
                          CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; safecall;
    function InsertBeforeWide(const Text: WideString; LanguageID: cdrTextLanguage; 
                              CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; safecall;
    function InsertAfter(const Text: WideString; LanguageID: cdrTextLanguage; 
                         CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; safecall;
    function InsertAfterWide(const Text: WideString; LanguageID: cdrTextLanguage; 
                             CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; safecall;
    function Replace(const Text: WideString; LanguageID: cdrTextLanguage; CharSet: cdrTextCharSet; 
                     const Font: WideString): IVGTextRange; safecall;
    function ReplaceWide(const Text: WideString; LanguageID: cdrTextLanguage; 
                         CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; safecall;
    function Range(Start: Integer; End_: Integer): IVGTextRange; safecall;
    procedure SetLineSpacing(Type_: cdrLineSpacingType; LineSpacing: Single; ParaBefore: Single; 
                             ParaAfter: Single); safecall;
    function Get_Columns: IVGTextColumns; safecall;
    function Get_Frames: IVGTextFrames; safecall;
    procedure Collapse(ToEnd: WordBool); safecall;
    procedure Combine(const Range: IVGTextRange); safecall;
    function InRange(const Range: IVGTextRange): WordBool; safecall;
    function IsSame(const Range: IVGTextRange): WordBool; safecall;
    function Get_Fill: IVGFill; safecall;
    function Get_Outline: IVGOutline; safecall;
    function Get_RangeKerning: Integer; safecall;
    procedure Set_RangeKerning(pVal: Integer); safecall;
    function Get_Tabs: IVGTextTabPositions; safecall;
    function Get_Effect: cdrTextEffect; safecall;
    function Get_DropCapLinesDropped: Integer; safecall;
    procedure Set_DropCapLinesDropped(pVal: Integer); safecall;
    function Get_DropCapDistanceFromText: Double; safecall;
    procedure Set_DropCapDistanceFromText(pVal: Double); safecall;
    function Get_DropCapHangingIndent: WordBool; safecall;
    procedure Set_DropCapHangingIndent(pVal: WordBool); safecall;
    function Get_BulletFont: WideString; safecall;
    procedure Set_BulletFont(const pVal: WideString); safecall;
    function Get_BulletSymbol: WideString; safecall;
    procedure Set_BulletSymbol(const pVal: WideString); safecall;
    function Get_BulletSize: Single; safecall;
    procedure Set_BulletSize(pVal: Single); safecall;
    function Get_BulletBaselineShift: Single; safecall;
    procedure Set_BulletBaselineShift(pVal: Single); safecall;
    function Get_BulletHorizontalPosition: Double; safecall;
    procedure Set_BulletHorizontalPosition(pVal: Double); safecall;
    function Get_BulletHangingIndent: WordBool; safecall;
    procedure Set_BulletHangingIndent(pVal: WordBool); safecall;
    function Get_IsEmpty: WordBool; safecall;
    procedure ApplyNoEffect; safecall;
    procedure ApplyBulletEffect(const Symbol: WideString; const Font: WideString; Size: Single; 
                                BaselineShift: Single; HorizontalPosition: Double; 
                                HangingIndent: WordBool); safecall;
    procedure ApplyDropCapEffect(LinesDropped: Integer; DistanceFromText: Double; 
                                 HangingIndent: WordBool); safecall;
    function Get_HyphenateAllCapWords: WordBool; safecall;
    procedure Set_HyphenateAllCapWords(pVal: WordBool); safecall;
    function EnumRanges(PropertyFilter: cdrTextPropertySet): IVGTextRanges; safecall;
    function Evaluate(const Expression: WideString): OleVariant; safecall;
    function FindRanges(const Query: WideString): IVGTextRanges; safecall;
    function Get_Baselines: IVGCurve; safecall;
    procedure Straighten; safecall;
    procedure AlignToBaseline; safecall;
    function Get_TextLineRects: IVGCurve; safecall;
    function Get_CharBackFill: IVGFill; safecall;
    procedure CopyAttributes(const SourceRange: IVGTextRange); safecall;
    function GetOpenTypeFeature(const Feature: WideString): Integer; safecall;
    procedure SetOpenTypeFeature(const Feature: WideString; State: Integer); safecall;
    function Get_TextFormatter: Integer; safecall;
    procedure Set_TextFormatter(pVal: Integer); safecall;
    procedure ApplyStyle(const StyleName: WideString); safecall;
    function Get_ObjectStyle: IVGStyle; safecall;
    property Text: WideString read Get_Text write Set_Text;
    property WideText: WideString read Get_WideText write Set_WideText;
    property Characters: IVGTextCharacters read Get_Characters;
    property Words: IVGTextWords read Get_Words;
    property Lines: IVGTextLines read Get_Lines;
    property Paragraphs: IVGTextParagraphs read Get_Paragraphs;
    property Start: Integer read Get_Start write Set_Start;
    property End_: Integer read Get_End_ write Set_End_;
    property Length: Integer read Get_Length write Set_Length;
    property Style: cdrFontStyle read Get_Style write Set_Style;
    property Bold: WordBool read Get_Bold write Set_Bold;
    property Italic: WordBool read Get_Italic write Set_Italic;
    property Underline: cdrFontLine read Get_Underline write Set_Underline;
    property Strikethru: cdrFontLine read Get_Strikethru write Set_Strikethru;
    property Overscore: cdrFontLine read Get_Overscore write Set_Overscore;
    property Font: WideString read Get_Font write Set_Font;
    property Size: Single read Get_Size write Set_Size;
    property Position: cdrFontPosition read Get_Position write Set_Position;
    property Case_: cdrFontCase read Get_Case_ write Set_Case_;
    property CharAngle: Single read Get_CharAngle write Set_CharAngle;
    property Alignment: cdrAlignment read Get_Alignment write Set_Alignment;
    property FirstLineIndent: Double read Get_FirstLineIndent write Set_FirstLineIndent;
    property HorizShift: Integer read Get_HorizShift write Set_HorizShift;
    property VertShift: Integer read Get_VertShift write Set_VertShift;
    property LeftIndent: Double read Get_LeftIndent write Set_LeftIndent;
    property RightIndent: Double read Get_RightIndent write Set_RightIndent;
    property MinWordSpacing: Single read Get_MinWordSpacing write Set_MinWordSpacing;
    property MaxWordSpacing: Single read Get_MaxWordSpacing write Set_MaxWordSpacing;
    property MaxCharSpacing: Single read Get_MaxCharSpacing write Set_MaxCharSpacing;
    property ParaSpacingBefore: Single read Get_ParaSpacingBefore write Set_ParaSpacingBefore;
    property ParaSpacingAfter: Single read Get_ParaSpacingAfter write Set_ParaSpacingAfter;
    property CharSpacing: Single read Get_CharSpacing write Set_CharSpacing;
    property LineSpacing: Single read Get_LineSpacing write Set_LineSpacing;
    property LineSpacingType: cdrLineSpacingType read Get_LineSpacingType;
    property WordSpacing: Single read Get_WordSpacing write Set_WordSpacing;
    property AutoHyphenate: cdrTriState read Get_AutoHyphenate write Set_AutoHyphenate;
    property HyphenHotZone: Double read Get_HyphenHotZone write Set_HyphenHotZone;
    property HyphenMinCharsBefore: Integer read Get_HyphenMinCharsBefore write Set_HyphenMinCharsBefore;
    property HyphenMinCharsAfter: Integer read Get_HyphenMinCharsAfter write Set_HyphenMinCharsAfter;
    property HyphenMinWordLength: Integer read Get_HyphenMinWordLength write Set_HyphenMinWordLength;
    property HyphenateCapitals: WordBool read Get_HyphenateCapitals write Set_HyphenateCapitals;
    property LanguageID: cdrTextLanguage read Get_LanguageID write Set_LanguageID;
    property CharSet: cdrTextCharSet read Get_CharSet write Set_CharSet;
    property Columns: IVGTextColumns read Get_Columns;
    property Frames: IVGTextFrames read Get_Frames;
    property Fill: IVGFill read Get_Fill;
    property Outline: IVGOutline read Get_Outline;
    property RangeKerning: Integer read Get_RangeKerning write Set_RangeKerning;
    property Tabs: IVGTextTabPositions read Get_Tabs;
    property Effect: cdrTextEffect read Get_Effect;
    property DropCapLinesDropped: Integer read Get_DropCapLinesDropped write Set_DropCapLinesDropped;
    property DropCapDistanceFromText: Double read Get_DropCapDistanceFromText write Set_DropCapDistanceFromText;
    property DropCapHangingIndent: WordBool read Get_DropCapHangingIndent write Set_DropCapHangingIndent;
    property BulletFont: WideString read Get_BulletFont write Set_BulletFont;
    property BulletSymbol: WideString read Get_BulletSymbol write Set_BulletSymbol;
    property BulletSize: Single read Get_BulletSize write Set_BulletSize;
    property BulletBaselineShift: Single read Get_BulletBaselineShift write Set_BulletBaselineShift;
    property BulletHorizontalPosition: Double read Get_BulletHorizontalPosition write Set_BulletHorizontalPosition;
    property BulletHangingIndent: WordBool read Get_BulletHangingIndent write Set_BulletHangingIndent;
    property IsEmpty: WordBool read Get_IsEmpty;
    property HyphenateAllCapWords: WordBool read Get_HyphenateAllCapWords write Set_HyphenateAllCapWords;
    property Baselines: IVGCurve read Get_Baselines;
    property TextLineRects: IVGCurve read Get_TextLineRects;
    property CharBackFill: IVGFill read Get_CharBackFill;
    property TextFormatter: Integer read Get_TextFormatter write Set_TextFormatter;
    property ObjectStyle: IVGStyle read Get_ObjectStyle;
  end;

// *********************************************************************//
// DispIntf:  IVGTextRangeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580078-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextRangeDisp = dispinterface
    ['{B0580078-9AA4-44FD-9547-4F91EB757AC4}']
    property Text: WideString dispid 0;
    property WideText: WideString dispid 1610743810;
    property Characters: IVGTextCharacters readonly dispid 1610743812;
    property Words: IVGTextWords readonly dispid 1610743813;
    property Lines: IVGTextLines readonly dispid 1610743814;
    property Paragraphs: IVGTextParagraphs readonly dispid 1610743815;
    property Start: Integer dispid 1610743816;
    property End_: Integer dispid 1610743818;
    property Length: Integer dispid 1610743820;
    function Duplicate: IVGTextRange; dispid 1610743822;
    property Style: cdrFontStyle dispid 1610743823;
    property Bold: WordBool dispid 1610743825;
    property Italic: WordBool dispid 1610743827;
    property Underline: cdrFontLine dispid 1610743829;
    property Strikethru: cdrFontLine dispid 1610743831;
    property Overscore: cdrFontLine dispid 1610743833;
    property Font: WideString dispid 1610743835;
    property Size: Single dispid 1610743837;
    property Position: cdrFontPosition dispid 1610743839;
    property Case_: cdrFontCase dispid 1610743841;
    property CharAngle: Single dispid 1610743843;
    property Alignment: cdrAlignment dispid 1610743845;
    property FirstLineIndent: Double dispid 1610743847;
    property HorizShift: Integer dispid 1610743849;
    property VertShift: Integer dispid 1610743851;
    property LeftIndent: Double dispid 1610743853;
    property RightIndent: Double dispid 1610743855;
    property MinWordSpacing: Single dispid 1610743857;
    property MaxWordSpacing: Single dispid 1610743859;
    property MaxCharSpacing: Single dispid 1610743861;
    property ParaSpacingBefore: Single dispid 1610743863;
    property ParaSpacingAfter: Single dispid 1610743865;
    property CharSpacing: Single dispid 1610743867;
    property LineSpacing: Single dispid 1610743869;
    property LineSpacingType: cdrLineSpacingType readonly dispid 1610743871;
    property WordSpacing: Single dispid 1610743872;
    property AutoHyphenate: cdrTriState dispid 1610743874;
    property HyphenHotZone: Double dispid 1610743876;
    property HyphenMinCharsBefore: Integer dispid 1610743878;
    property HyphenMinCharsAfter: Integer dispid 1610743880;
    property HyphenMinWordLength: Integer dispid 1610743882;
    property HyphenateCapitals: WordBool dispid 1610743884;
    procedure Delete; dispid 1610743886;
    procedure Select; dispid 1610743887;
    procedure Copy; dispid 1610743888;
    function Paste: IVGTextRange; dispid 1610743889;
    procedure ChangeCase(Case_: cdrTextChangeCase); dispid 1610743890;
    procedure SetRange(Start: Integer; End_: Integer); dispid 1610743891;
    property LanguageID: cdrTextLanguage dispid 1610743892;
    property CharSet: cdrTextCharSet dispid 1610743894;
    function InsertBefore(const Text: WideString; LanguageID: cdrTextLanguage; 
                          CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; dispid 1610743896;
    function InsertBeforeWide(const Text: WideString; LanguageID: cdrTextLanguage; 
                              CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; dispid 1610743897;
    function InsertAfter(const Text: WideString; LanguageID: cdrTextLanguage; 
                         CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; dispid 1610743898;
    function InsertAfterWide(const Text: WideString; LanguageID: cdrTextLanguage; 
                             CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; dispid 1610743899;
    function Replace(const Text: WideString; LanguageID: cdrTextLanguage; CharSet: cdrTextCharSet; 
                     const Font: WideString): IVGTextRange; dispid 1610743900;
    function ReplaceWide(const Text: WideString; LanguageID: cdrTextLanguage; 
                         CharSet: cdrTextCharSet; const Font: WideString): IVGTextRange; dispid 1610743901;
    function Range(Start: Integer; End_: Integer): IVGTextRange; dispid 1610743902;
    procedure SetLineSpacing(Type_: cdrLineSpacingType; LineSpacing: Single; ParaBefore: Single; 
                             ParaAfter: Single); dispid 1610743903;
    property Columns: IVGTextColumns readonly dispid 1610743904;
    property Frames: IVGTextFrames readonly dispid 1610743905;
    procedure Collapse(ToEnd: WordBool); dispid 1610743906;
    procedure Combine(const Range: IVGTextRange); dispid 1610743907;
    function InRange(const Range: IVGTextRange): WordBool; dispid 1610743908;
    function IsSame(const Range: IVGTextRange): WordBool; dispid 1610743909;
    property Fill: IVGFill readonly dispid 1610743910;
    property Outline: IVGOutline readonly dispid 1610743911;
    property RangeKerning: Integer dispid 1610743912;
    property Tabs: IVGTextTabPositions readonly dispid 1610743914;
    property Effect: cdrTextEffect readonly dispid 1610743915;
    property DropCapLinesDropped: Integer dispid 1610743916;
    property DropCapDistanceFromText: Double dispid 1610743918;
    property DropCapHangingIndent: WordBool dispid 1610743920;
    property BulletFont: WideString dispid 1610743922;
    property BulletSymbol: WideString dispid 1610743924;
    property BulletSize: Single dispid 1610743926;
    property BulletBaselineShift: Single dispid 1610743928;
    property BulletHorizontalPosition: Double dispid 1610743930;
    property BulletHangingIndent: WordBool dispid 1610743932;
    property IsEmpty: WordBool readonly dispid 1610743934;
    procedure ApplyNoEffect; dispid 1610743935;
    procedure ApplyBulletEffect(const Symbol: WideString; const Font: WideString; Size: Single; 
                                BaselineShift: Single; HorizontalPosition: Double; 
                                HangingIndent: WordBool); dispid 1610743936;
    procedure ApplyDropCapEffect(LinesDropped: Integer; DistanceFromText: Double; 
                                 HangingIndent: WordBool); dispid 1610743937;
    property HyphenateAllCapWords: WordBool dispid 1610743938;
    function EnumRanges(PropertyFilter: cdrTextPropertySet): IVGTextRanges; dispid 1610743940;
    function Evaluate(const Expression: WideString): OleVariant; dispid 1610743941;
    function FindRanges(const Query: WideString): IVGTextRanges; dispid 1610743942;
    property Baselines: IVGCurve readonly dispid 1610743943;
    procedure Straighten; dispid 1610743944;
    procedure AlignToBaseline; dispid 1610743945;
    property TextLineRects: IVGCurve readonly dispid 1610743946;
    property CharBackFill: IVGFill readonly dispid 1610743947;
    procedure CopyAttributes(const SourceRange: IVGTextRange); dispid 1610743948;
    function GetOpenTypeFeature(const Feature: WideString): Integer; dispid 1610743949;
    procedure SetOpenTypeFeature(const Feature: WideString; State: Integer); dispid 1610743950;
    property TextFormatter: Integer dispid 1610743951;
    procedure ApplyStyle(const StyleName: WideString); dispid 1610743953;
    property ObjectStyle: IVGStyle readonly dispid 1610743954;
  end;

// *********************************************************************//
// Interface: IVGTextCharacters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580072-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextCharacters = interface(IDispatch)
    ['{B0580072-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer; Count: Integer): IVGTextRange; safecall;
    function Get_Count: Integer; safecall;
    function Get_All: IVGTextRange; safecall;
    function Get_First: IVGTextRange; safecall;
    function Get_Last: IVGTextRange; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer; Count: Integer]: IVGTextRange read Get_Item;
    property Count: Integer read Get_Count;
    property All: IVGTextRange read Get_All;
    property First: IVGTextRange read Get_First;
    property Last: IVGTextRange read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextCharactersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580072-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextCharactersDisp = dispinterface
    ['{B0580072-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer; Count: Integer]: IVGTextRange readonly dispid 0;
    property Count: Integer readonly dispid 1610743810;
    property All: IVGTextRange readonly dispid 1610743811;
    property First: IVGTextRange readonly dispid 1610743812;
    property Last: IVGTextRange readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGTextWords
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextWords = interface(IDispatch)
    ['{B058007C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer; Count: Integer): IVGTextRange; safecall;
    function Get_Count: Integer; safecall;
    function Get_All: IVGTextRange; safecall;
    function Get_First: IVGTextRange; safecall;
    function Get_Last: IVGTextRange; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer; Count: Integer]: IVGTextRange read Get_Item;
    property Count: Integer read Get_Count;
    property All: IVGTextRange read Get_All;
    property First: IVGTextRange read Get_First;
    property Last: IVGTextRange read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextWordsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextWordsDisp = dispinterface
    ['{B058007C-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer; Count: Integer]: IVGTextRange readonly dispid 0;
    property Count: Integer readonly dispid 1610743810;
    property All: IVGTextRange readonly dispid 1610743811;
    property First: IVGTextRange readonly dispid 1610743812;
    property Last: IVGTextRange readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGTextLines
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580076-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextLines = interface(IDispatch)
    ['{B0580076-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer; Count: Integer): IVGTextRange; safecall;
    function Get_Count: Integer; safecall;
    function Get_All: IVGTextRange; safecall;
    function Get_First: IVGTextRange; safecall;
    function Get_Last: IVGTextRange; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer; Count: Integer]: IVGTextRange read Get_Item;
    property Count: Integer read Get_Count;
    property All: IVGTextRange read Get_All;
    property First: IVGTextRange read Get_First;
    property Last: IVGTextRange read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextLinesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580076-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextLinesDisp = dispinterface
    ['{B0580076-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer; Count: Integer]: IVGTextRange readonly dispid 0;
    property Count: Integer readonly dispid 1610743810;
    property All: IVGTextRange readonly dispid 1610743811;
    property First: IVGTextRange readonly dispid 1610743812;
    property Last: IVGTextRange readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGTextParagraphs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580077-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextParagraphs = interface(IDispatch)
    ['{B0580077-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer; Count: Integer): IVGTextRange; safecall;
    function Get_Count: Integer; safecall;
    function Get_All: IVGTextRange; safecall;
    function Get_First: IVGTextRange; safecall;
    function Get_Last: IVGTextRange; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer; Count: Integer]: IVGTextRange read Get_Item;
    property Count: Integer read Get_Count;
    property All: IVGTextRange read Get_All;
    property First: IVGTextRange read Get_First;
    property Last: IVGTextRange read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextParagraphsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580077-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextParagraphsDisp = dispinterface
    ['{B0580077-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer; Count: Integer]: IVGTextRange readonly dispid 0;
    property Count: Integer readonly dispid 1610743810;
    property All: IVGTextRange readonly dispid 1610743811;
    property First: IVGTextRange readonly dispid 1610743812;
    property Last: IVGTextRange readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGTextColumns
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580073-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextColumns = interface(IDispatch)
    ['{B0580073-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer; Count: Integer): IVGTextRange; safecall;
    function Get_Count: Integer; safecall;
    function Get_All: IVGTextRange; safecall;
    function Get_First: IVGTextRange; safecall;
    function Get_Last: IVGTextRange; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer; Count: Integer]: IVGTextRange read Get_Item;
    property Count: Integer read Get_Count;
    property All: IVGTextRange read Get_All;
    property First: IVGTextRange read Get_First;
    property Last: IVGTextRange read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextColumnsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580073-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextColumnsDisp = dispinterface
    ['{B0580073-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer; Count: Integer]: IVGTextRange readonly dispid 0;
    property Count: Integer readonly dispid 1610743810;
    property All: IVGTextRange readonly dispid 1610743811;
    property First: IVGTextRange readonly dispid 1610743812;
    property Last: IVGTextRange readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGTextFrames
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580075-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextFrames = interface(IDispatch)
    ['{B0580075-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IVGTextFrame; safecall;
    function Get_Count: Integer; safecall;
    function Get_Range(Index: Integer; Count: Integer): IVGTextRange; safecall;
    function Get_All: IVGTextRange; safecall;
    function Get_First: IVGTextFrame; safecall;
    function Get_Last: IVGTextFrame; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IVGTextFrame read Get_Item; default;
    property Count: Integer read Get_Count;
    property Range[Index: Integer; Count: Integer]: IVGTextRange read Get_Range;
    property All: IVGTextRange read Get_All;
    property First: IVGTextFrame read Get_First;
    property Last: IVGTextFrame read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextFramesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580075-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextFramesDisp = dispinterface
    ['{B0580075-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IVGTextFrame readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743810;
    property Range[Index: Integer; Count: Integer]: IVGTextRange readonly dispid 1610743811;
    property All: IVGTextRange readonly dispid 1610743812;
    property First: IVGTextFrame readonly dispid 1610743813;
    property Last: IVGTextFrame readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGTextFrame
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580074-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextFrame = interface(IDispatch)
    ['{B0580074-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Range: IVGTextRange; safecall;
    function Get_Previous: IVGTextFrame; safecall;
    function Get_Next: IVGTextFrame; safecall;
    function Get_Index: Integer; safecall;
    function Get_Empty: WordBool; safecall;
    function Get_IsFirst: WordBool; safecall;
    function Get_IsLast: WordBool; safecall;
    function Get_VerticalAlignment: cdrVerticalAlignment; safecall;
    procedure Set_VerticalAlignment(pVal: cdrVerticalAlignment); safecall;
    function Get_Multicolumn: WordBool; safecall;
    function Get_ColumnCount: Integer; safecall;
    function Get_ColumnWidth(Index: Integer): Double; safecall;
    function Get_ColumnGutter(Index: Integer): Double; safecall;
    procedure SetColumns(NumColumns: Integer; EqualColumns: WordBool; 
                         var WidthsAndGutters: PSafeArray); safecall;
    procedure LinkTo(const Shape: IVGShape); safecall;
    procedure UnLink; safecall;
    function Get_Container: IVGShape; safecall;
    function Get_IsInsideContainer: WordBool; safecall;
    function Get_IsFittedToPath: WordBool; safecall;
    function Get_Path: IVGShape; safecall;
    function Get_FrameShape: IVGShape; safecall;
    function Get_Fill: IVGFill; safecall;
    procedure Set_Fill(const ppVal: IVGFill); safecall;
    function Get_Outline: IVGOutline; safecall;
    procedure Set_Outline(const ppVal: IVGOutline); safecall;
    property Range: IVGTextRange read Get_Range;
    property Previous: IVGTextFrame read Get_Previous;
    property Next: IVGTextFrame read Get_Next;
    property Index: Integer read Get_Index;
    property Empty: WordBool read Get_Empty;
    property IsFirst: WordBool read Get_IsFirst;
    property IsLast: WordBool read Get_IsLast;
    property VerticalAlignment: cdrVerticalAlignment read Get_VerticalAlignment write Set_VerticalAlignment;
    property Multicolumn: WordBool read Get_Multicolumn;
    property ColumnCount: Integer read Get_ColumnCount;
    property ColumnWidth[Index: Integer]: Double read Get_ColumnWidth;
    property ColumnGutter[Index: Integer]: Double read Get_ColumnGutter;
    property Container: IVGShape read Get_Container;
    property IsInsideContainer: WordBool read Get_IsInsideContainer;
    property IsFittedToPath: WordBool read Get_IsFittedToPath;
    property Path: IVGShape read Get_Path;
    property FrameShape: IVGShape read Get_FrameShape;
    property Fill: IVGFill read Get_Fill write Set_Fill;
    property Outline: IVGOutline read Get_Outline write Set_Outline;
  end;

// *********************************************************************//
// DispIntf:  IVGTextFrameDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580074-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextFrameDisp = dispinterface
    ['{B0580074-9AA4-44FD-9547-4F91EB757AC4}']
    property Range: IVGTextRange readonly dispid 0;
    property Previous: IVGTextFrame readonly dispid 1610743809;
    property Next: IVGTextFrame readonly dispid 1610743810;
    property Index: Integer readonly dispid 1610743811;
    property Empty: WordBool readonly dispid 1610743812;
    property IsFirst: WordBool readonly dispid 1610743813;
    property IsLast: WordBool readonly dispid 1610743814;
    property VerticalAlignment: cdrVerticalAlignment dispid 1610743815;
    property Multicolumn: WordBool readonly dispid 1610743817;
    property ColumnCount: Integer readonly dispid 1610743818;
    property ColumnWidth[Index: Integer]: Double readonly dispid 1610743819;
    property ColumnGutter[Index: Integer]: Double readonly dispid 1610743820;
    procedure SetColumns(NumColumns: Integer; EqualColumns: WordBool; 
                         var WidthsAndGutters: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743821;
    procedure LinkTo(const Shape: IVGShape); dispid 1610743822;
    procedure UnLink; dispid 1610743823;
    property Container: IVGShape readonly dispid 1610743824;
    property IsInsideContainer: WordBool readonly dispid 1610743825;
    property IsFittedToPath: WordBool readonly dispid 1610743826;
    property Path: IVGShape readonly dispid 1610743827;
    property FrameShape: IVGShape readonly dispid 1610743828;
    property Fill: IVGFill dispid 1610743829;
    property Outline: IVGOutline dispid 1610743831;
  end;

// *********************************************************************//
// Interface: IVGTextTabPositions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580095-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextTabPositions = interface(IDispatch)
    ['{B0580095-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(Index: Integer): IVGTextTabPosition; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_LeaderSpacing: Integer; safecall;
    procedure Set_LeaderSpacing(pVal: Integer); safecall;
    function Get_LeaderCharacter: WideString; safecall;
    procedure Set_LeaderCharacter(const pVal: WideString); safecall;
    procedure Clear; safecall;
    function Add(Position: Double; Alignment: cdrTextTabAlignment; Leadered: WordBool): IVGTextTabPosition; safecall;
    procedure AddEvery(Position: Double; Alignment: cdrTextTabAlignment; Leadered: WordBool); safecall;
    property Item[Index: Integer]: IVGTextTabPosition read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property LeaderSpacing: Integer read Get_LeaderSpacing write Set_LeaderSpacing;
    property LeaderCharacter: WideString read Get_LeaderCharacter write Set_LeaderCharacter;
  end;

// *********************************************************************//
// DispIntf:  IVGTextTabPositionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580095-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextTabPositionsDisp = dispinterface
    ['{B0580095-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[Index: Integer]: IVGTextTabPosition readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
    property LeaderSpacing: Integer dispid 1610743811;
    property LeaderCharacter: WideString dispid 1610743813;
    procedure Clear; dispid 1610743815;
    function Add(Position: Double; Alignment: cdrTextTabAlignment; Leadered: WordBool): IVGTextTabPosition; dispid 1610743816;
    procedure AddEvery(Position: Double; Alignment: cdrTextTabAlignment; Leadered: WordBool); dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGTextTabPosition
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580094-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextTabPosition = interface(IDispatch)
    ['{B0580094-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Position: Double; safecall;
    procedure Set_Position(pVal: Double); safecall;
    function Get_Index: Integer; safecall;
    function Get_Alignment: cdrTextTabAlignment; safecall;
    procedure Set_Alignment(pVal: cdrTextTabAlignment); safecall;
    function Get_Leadered: WordBool; safecall;
    procedure Set_Leadered(pVal: WordBool); safecall;
    procedure Delete; safecall;
    property Position: Double read Get_Position write Set_Position;
    property Index: Integer read Get_Index;
    property Alignment: cdrTextTabAlignment read Get_Alignment write Set_Alignment;
    property Leadered: WordBool read Get_Leadered write Set_Leadered;
  end;

// *********************************************************************//
// DispIntf:  IVGTextTabPositionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580094-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextTabPositionDisp = dispinterface
    ['{B0580094-9AA4-44FD-9547-4F91EB757AC4}']
    property Position: Double dispid 0;
    property Index: Integer readonly dispid 1610743810;
    property Alignment: cdrTextTabAlignment dispid 1610743811;
    property Leadered: WordBool dispid 1610743813;
    procedure Delete; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IVGTextRanges
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A4-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextRanges = interface(IDispatch)
    ['{B05800A4-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IVGTextRange; safecall;
    function Get_Count: Integer; safecall;
    function Get_First: IVGTextRange; safecall;
    function Get_Last: IVGTextRange; safecall;
    function Reverse: IVGTextRanges; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IVGTextRange read Get_Item; default;
    property Count: Integer read Get_Count;
    property First: IVGTextRange read Get_First;
    property Last: IVGTextRange read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGTextRangesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A4-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTextRangesDisp = dispinterface
    ['{B05800A4-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IVGTextRange readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743810;
    property First: IVGTextRange readonly dispid 1610743811;
    property Last: IVGTextRange readonly dispid 1610743812;
    function Reverse: IVGTextRanges; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGStyle
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B8-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyle = interface(IDispatch)
    ['{B05800B8-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_CategoryName: WideString; safecall;
    function GetAllPropertyNames: PSafeArray; safecall;
    function GetOverridePropertyNames: PSafeArray; safecall;
    function IsPropertyInherited(const Name: WideString): WordBool; safecall;
    function GetProperty(const Name: WideString): OleVariant; safecall;
    procedure SetProperty(const Name: WideString; Value: OleVariant); safecall;
    function ClearProperty(const Name: WideString): WordBool; safecall;
    function Get_Outline: IVGStyleOutline; safecall;
    function Get_Fill: IVGStyleFill; safecall;
    function Get_Character: IVGStyleCharacter; safecall;
    function Get_Paragraph: IVGStyleParagraph; safecall;
    function Get_Frame: IVGStyleFrame; safecall;
    function Get_Name: WideString; safecall;
    function Get_DisplayName: WideString; safecall;
    function Get_IsStyleSet: WordBool; safecall;
    function Get_IsObjectDefaults: WordBool; safecall;
    function Get_DisplayCategoryName: WideString; safecall;
    function Get_BasedOn: IVGStyle; safecall;
    function Get_DerivedStyles: IVGStyles; safecall;
    function ToString: WideString; safecall;
    function StringAssign(const StyleString: WideString): WordBool; safecall;
    function GetPropertyAsString(const Name: WideString): WideString; safecall;
    function SetPropertyAsString(const Name: WideString; const Value: WideString): WordBool; safecall;
    function Rename(const NewName: WideString): WordBool; safecall;
    function SetBasedOn(const NewParent: WideString): WordBool; safecall;
    function Delete: WordBool; safecall;
    property CategoryName: WideString read Get_CategoryName;
    property Outline: IVGStyleOutline read Get_Outline;
    property Fill: IVGStyleFill read Get_Fill;
    property Character: IVGStyleCharacter read Get_Character;
    property Paragraph: IVGStyleParagraph read Get_Paragraph;
    property Frame: IVGStyleFrame read Get_Frame;
    property Name: WideString read Get_Name;
    property DisplayName: WideString read Get_DisplayName;
    property IsStyleSet: WordBool read Get_IsStyleSet;
    property IsObjectDefaults: WordBool read Get_IsObjectDefaults;
    property DisplayCategoryName: WideString read Get_DisplayCategoryName;
    property BasedOn: IVGStyle read Get_BasedOn;
    property DerivedStyles: IVGStyles read Get_DerivedStyles;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B8-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleDisp = dispinterface
    ['{B05800B8-9AA4-44FD-9547-4F91EB757AC4}']
    property CategoryName: WideString readonly dispid 1610743808;
    function GetAllPropertyNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743809;
    function GetOverridePropertyNames: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743810;
    function IsPropertyInherited(const Name: WideString): WordBool; dispid 1610743811;
    function GetProperty(const Name: WideString): OleVariant; dispid 1610743812;
    procedure SetProperty(const Name: WideString; Value: OleVariant); dispid 1610743813;
    function ClearProperty(const Name: WideString): WordBool; dispid 1610743814;
    property Outline: IVGStyleOutline readonly dispid 1610743815;
    property Fill: IVGStyleFill readonly dispid 1610743816;
    property Character: IVGStyleCharacter readonly dispid 1610743817;
    property Paragraph: IVGStyleParagraph readonly dispid 1610743818;
    property Frame: IVGStyleFrame readonly dispid 1610743819;
    property Name: WideString readonly dispid 1610743820;
    property DisplayName: WideString readonly dispid 1610743821;
    property IsStyleSet: WordBool readonly dispid 1610743822;
    property IsObjectDefaults: WordBool readonly dispid 1610743823;
    property DisplayCategoryName: WideString readonly dispid 1610743824;
    property BasedOn: IVGStyle readonly dispid 1610743825;
    property DerivedStyles: IVGStyles readonly dispid 1610743826;
    function ToString: WideString; dispid 1610743827;
    function StringAssign(const StyleString: WideString): WordBool; dispid 1610743828;
    function GetPropertyAsString(const Name: WideString): WideString; dispid 1610743829;
    function SetPropertyAsString(const Name: WideString; const Value: WideString): WordBool; dispid 1610743830;
    function Rename(const NewName: WideString): WordBool; dispid 1610743831;
    function SetBasedOn(const NewParent: WideString): WordBool; dispid 1610743832;
    function Delete: WordBool; dispid 1610743833;
  end;

// *********************************************************************//
// Interface: IVGStyleOutline
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BB-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleOutline = interface(IDispatch)
    ['{B05800BB-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Style: IVGStyle; safecall;
    function Get_type_: cdrOutlineType; safecall;
    procedure Set_type_(pVal: cdrOutlineType); safecall;
    function Get_Overprint: WordBool; safecall;
    procedure Set_Overprint(pVal: WordBool); safecall;
    function Get_BehindFill: WordBool; safecall;
    procedure Set_BehindFill(pVal: WordBool); safecall;
    function Get_ScaleWithShape: WordBool; safecall;
    procedure Set_ScaleWithShape(pVal: WordBool); safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(pVal: Double); safecall;
    function Get_Color: IVGColor; safecall;
    procedure Set_Color(const ppVal: IVGColor); safecall;
    function Get_OverlapArrow: WordBool; safecall;
    procedure Set_OverlapArrow(pVal: WordBool); safecall;
    function Get_ShareArrow: WordBool; safecall;
    procedure Set_ShareArrow(pVal: WordBool); safecall;
    function Get_MiterLimit: Double; safecall;
    procedure Set_MiterLimit(pVal: Double); safecall;
    function Get_NibStretch: Integer; safecall;
    procedure Set_NibStretch(pVal: Integer); safecall;
    function Get_NibAngle: Double; safecall;
    procedure Set_NibAngle(pVal: Double); safecall;
    function Get_WidelineWidth: Double; safecall;
    procedure Set_WidelineWidth(pVal: Double); safecall;
    function Get_LineCaps: cdrOutlineLineCaps; safecall;
    procedure Set_LineCaps(pVal: cdrOutlineLineCaps); safecall;
    function Get_LineJoin: cdrOutlineLineJoin; safecall;
    procedure Set_LineJoin(pVal: cdrOutlineLineJoin); safecall;
    function Get_Justification: cdrOutlineJustification; safecall;
    procedure Set_Justification(pVal: cdrOutlineJustification); safecall;
    property Style: IVGStyle read Get_Style;
    property type_: cdrOutlineType read Get_type_ write Set_type_;
    property Overprint: WordBool read Get_Overprint write Set_Overprint;
    property BehindFill: WordBool read Get_BehindFill write Set_BehindFill;
    property ScaleWithShape: WordBool read Get_ScaleWithShape write Set_ScaleWithShape;
    property Width: Double read Get_Width write Set_Width;
    property Color: IVGColor read Get_Color write Set_Color;
    property OverlapArrow: WordBool read Get_OverlapArrow write Set_OverlapArrow;
    property ShareArrow: WordBool read Get_ShareArrow write Set_ShareArrow;
    property MiterLimit: Double read Get_MiterLimit write Set_MiterLimit;
    property NibStretch: Integer read Get_NibStretch write Set_NibStretch;
    property NibAngle: Double read Get_NibAngle write Set_NibAngle;
    property WidelineWidth: Double read Get_WidelineWidth write Set_WidelineWidth;
    property LineCaps: cdrOutlineLineCaps read Get_LineCaps write Set_LineCaps;
    property LineJoin: cdrOutlineLineJoin read Get_LineJoin write Set_LineJoin;
    property Justification: cdrOutlineJustification read Get_Justification write Set_Justification;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleOutlineDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BB-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleOutlineDisp = dispinterface
    ['{B05800BB-9AA4-44FD-9547-4F91EB757AC4}']
    property Style: IVGStyle readonly dispid 1610743808;
    property type_: cdrOutlineType dispid 1610743809;
    property Overprint: WordBool dispid 1610743811;
    property BehindFill: WordBool dispid 1610743813;
    property ScaleWithShape: WordBool dispid 1610743815;
    property Width: Double dispid 1610743817;
    property Color: IVGColor dispid 1610743819;
    property OverlapArrow: WordBool dispid 1610743821;
    property ShareArrow: WordBool dispid 1610743823;
    property MiterLimit: Double dispid 1610743825;
    property NibStretch: Integer dispid 1610743827;
    property NibAngle: Double dispid 1610743829;
    property WidelineWidth: Double dispid 1610743831;
    property LineCaps: cdrOutlineLineCaps dispid 1610743833;
    property LineJoin: cdrOutlineLineJoin dispid 1610743835;
    property Justification: cdrOutlineJustification dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVGStyleFill
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BC-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleFill = interface(IDispatch)
    ['{B05800BC-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Style: IVGStyle; safecall;
    function Get_type_: cdrFillStyleType; safecall;
    procedure Set_type_(pVal: cdrFillStyleType); safecall;
    function Get_Overprint: WordBool; safecall;
    procedure Set_Overprint(pVal: WordBool); safecall;
    function Get_WindingFill: WordBool; safecall;
    procedure Set_WindingFill(pVal: WordBool); safecall;
    function Get_FountainFillType: cdrFountainFillType; safecall;
    procedure Set_FountainFillType(pVal: cdrFountainFillType); safecall;
    function Get_EdgePad: Integer; safecall;
    procedure Set_EdgePad(pVal: Integer); safecall;
    function Get_FountainCenterOffsetX: Integer; safecall;
    procedure Set_FountainCenterOffsetX(pVal: Integer); safecall;
    function Get_FountainCenterOffsetY: Integer; safecall;
    procedure Set_FountainCenterOffsetY(pVal: Integer); safecall;
    function Get_FountainSteps: Integer; safecall;
    procedure Set_FountainSteps(pVal: Integer); safecall;
    function Get_FountainBlendType: cdrFountainFillBlendType; safecall;
    procedure Set_FountainBlendType(pVal: cdrFountainFillBlendType); safecall;
    function Get_MidPoint: Integer; safecall;
    procedure Set_MidPoint(pVal: Integer); safecall;
    function Get_FlipColors: WordBool; safecall;
    procedure Set_FlipColors(pVal: WordBool); safecall;
    function Get_PostScriptName: WideString; safecall;
    procedure Set_PostScriptName(const pVal: WideString); safecall;
    function Get_TileWidth: Double; safecall;
    procedure Set_TileWidth(pVal: Double); safecall;
    function Get_TileHeight: Double; safecall;
    procedure Set_TileHeight(pVal: Double); safecall;
    function Get_TileOriginX: Double; safecall;
    procedure Set_TileOriginX(pVal: Double); safecall;
    function Get_TileOriginY: Double; safecall;
    procedure Set_TileOriginY(pVal: Double); safecall;
    function Get_TileOffsetType: cdrTileOffsetType; safecall;
    procedure Set_TileOffsetType(pVal: cdrTileOffsetType); safecall;
    function Get_TileOffset: Integer; safecall;
    procedure Set_TileOffset(pVal: Integer); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_RotationAngle(pVal: Double); safecall;
    function Get_SkewAngle: Double; safecall;
    procedure Set_SkewAngle(pVal: Double); safecall;
    function Get_MirrorFill: WordBool; safecall;
    procedure Set_MirrorFill(pVal: WordBool); safecall;
    function Get_TransformWithShape: WordBool; safecall;
    procedure Set_TransformWithShape(pVal: WordBool); safecall;
    function Get_PrimaryColor: IVGColor; safecall;
    function Get_SecondaryColor: IVGColor; safecall;
    property Style: IVGStyle read Get_Style;
    property type_: cdrFillStyleType read Get_type_ write Set_type_;
    property Overprint: WordBool read Get_Overprint write Set_Overprint;
    property WindingFill: WordBool read Get_WindingFill write Set_WindingFill;
    property FountainFillType: cdrFountainFillType read Get_FountainFillType write Set_FountainFillType;
    property EdgePad: Integer read Get_EdgePad write Set_EdgePad;
    property FountainCenterOffsetX: Integer read Get_FountainCenterOffsetX write Set_FountainCenterOffsetX;
    property FountainCenterOffsetY: Integer read Get_FountainCenterOffsetY write Set_FountainCenterOffsetY;
    property FountainSteps: Integer read Get_FountainSteps write Set_FountainSteps;
    property FountainBlendType: cdrFountainFillBlendType read Get_FountainBlendType write Set_FountainBlendType;
    property MidPoint: Integer read Get_MidPoint write Set_MidPoint;
    property FlipColors: WordBool read Get_FlipColors write Set_FlipColors;
    property PostScriptName: WideString read Get_PostScriptName write Set_PostScriptName;
    property TileWidth: Double read Get_TileWidth write Set_TileWidth;
    property TileHeight: Double read Get_TileHeight write Set_TileHeight;
    property TileOriginX: Double read Get_TileOriginX write Set_TileOriginX;
    property TileOriginY: Double read Get_TileOriginY write Set_TileOriginY;
    property TileOffsetType: cdrTileOffsetType read Get_TileOffsetType write Set_TileOffsetType;
    property TileOffset: Integer read Get_TileOffset write Set_TileOffset;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property SkewAngle: Double read Get_SkewAngle write Set_SkewAngle;
    property MirrorFill: WordBool read Get_MirrorFill write Set_MirrorFill;
    property TransformWithShape: WordBool read Get_TransformWithShape write Set_TransformWithShape;
    property PrimaryColor: IVGColor read Get_PrimaryColor;
    property SecondaryColor: IVGColor read Get_SecondaryColor;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleFillDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BC-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleFillDisp = dispinterface
    ['{B05800BC-9AA4-44FD-9547-4F91EB757AC4}']
    property Style: IVGStyle readonly dispid 1610743808;
    property type_: cdrFillStyleType dispid 1610743809;
    property Overprint: WordBool dispid 1610743811;
    property WindingFill: WordBool dispid 1610743813;
    property FountainFillType: cdrFountainFillType dispid 1610743815;
    property EdgePad: Integer dispid 1610743817;
    property FountainCenterOffsetX: Integer dispid 1610743819;
    property FountainCenterOffsetY: Integer dispid 1610743821;
    property FountainSteps: Integer dispid 1610743823;
    property FountainBlendType: cdrFountainFillBlendType dispid 1610743825;
    property MidPoint: Integer dispid 1610743827;
    property FlipColors: WordBool dispid 1610743829;
    property PostScriptName: WideString dispid 1610743831;
    property TileWidth: Double dispid 1610743833;
    property TileHeight: Double dispid 1610743835;
    property TileOriginX: Double dispid 1610743837;
    property TileOriginY: Double dispid 1610743839;
    property TileOffsetType: cdrTileOffsetType dispid 1610743841;
    property TileOffset: Integer dispid 1610743843;
    property RotationAngle: Double dispid 1610743845;
    property SkewAngle: Double dispid 1610743847;
    property MirrorFill: WordBool dispid 1610743849;
    property TransformWithShape: WordBool dispid 1610743851;
    property PrimaryColor: IVGColor readonly dispid 1610743853;
    property SecondaryColor: IVGColor readonly dispid 1610743854;
  end;

// *********************************************************************//
// Interface: IVGStyleCharacter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BD-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleCharacter = interface(IDispatch)
    ['{B05800BD-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Style: IVGStyle; safecall;
    property Style: IVGStyle read Get_Style;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleCharacterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BD-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleCharacterDisp = dispinterface
    ['{B05800BD-9AA4-44FD-9547-4F91EB757AC4}']
    property Style: IVGStyle readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IVGStyleParagraph
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BE-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleParagraph = interface(IDispatch)
    ['{B05800BE-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Style: IVGStyle; safecall;
    property Style: IVGStyle read Get_Style;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleParagraphDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BE-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleParagraphDisp = dispinterface
    ['{B05800BE-9AA4-44FD-9547-4F91EB757AC4}']
    property Style: IVGStyle readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IVGStyleFrame
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BF-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleFrame = interface(IDispatch)
    ['{B05800BF-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Style: IVGStyle; safecall;
    property Style: IVGStyle read Get_Style;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleFrameDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BF-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleFrameDisp = dispinterface
    ['{B05800BF-9AA4-44FD-9547-4F91EB757AC4}']
    property Style: IVGStyle readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IVGStyles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B9-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyles = interface(IDispatch)
    ['{B05800B9-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IVGStyle; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Find(const Name: WideString): IVGStyle; safecall;
    function Get_First: IVGStyle; safecall;
    function Get_Last: IVGStyle; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IVGStyle read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property First: IVGStyle read Get_First;
    property Last: IVGStyle read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGStylesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B9-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStylesDisp = dispinterface
    ['{B05800B9-9AA4-44FD-9547-4F91EB757AC4}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: Integer]: IVGStyle readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function Find(const Name: WideString): IVGStyle; dispid 1610743811;
    property First: IVGStyle readonly dispid 1610743812;
    property Last: IVGStyle readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGSnapPoints
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580061-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSnapPoints = interface(IDispatch)
    ['{B0580061-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGShape; safecall;
    function Get_Item(Index: Integer): IVGSnapPoint; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function User(const Id: WideString): IVGSnapPoint; safecall;
    function BBox(Type_: cdrReferencePoint): IVGSnapPoint; safecall;
    function Object_(Type_: cdrObjectSnapPointType): IVGSnapPoint; safecall;
    function FindClosest(TypeSet: cdrPointType; PositionX: Double; PositionY: Double): IVGSnapPoint; safecall;
    function Range(var References: PSafeArray): IVGSnapPointRange; safecall;
    function AddUserSnapPoint(PositionX: Double; PositionY: Double; Direction: Double; 
                              UseDirection: WordBool): IVGSnapPoint; safecall;
    function AddUserSnapPointEx(const Id: WideString; PositionX: Double; PositionY: Double; 
                                Direction: Double; UseDirection: WordBool): IVGSnapPoint; safecall;
    function Get_Selection: IVGSnapPointRange; safecall;
    procedure ClearSelection; safecall;
    function Get_All: IVGSnapPointRange; safecall;
    function Edge(SegmentIndex: Integer; SegmentOffset: Double): IVGSnapPoint; safecall;
    function Auto: IVGSnapPoint; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGShape read Get_Parent;
    property Item[Index: Integer]: IVGSnapPoint read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Selection: IVGSnapPointRange read Get_Selection;
    property All: IVGSnapPointRange read Get_All;
  end;

// *********************************************************************//
// DispIntf:  IVGSnapPointsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580061-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSnapPointsDisp = dispinterface
    ['{B0580061-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGShape readonly dispid 1610743809;
    property Item[Index: Integer]: IVGSnapPoint readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function User(const Id: WideString): IVGSnapPoint; dispid 1610743813;
    function BBox(Type_: cdrReferencePoint): IVGSnapPoint; dispid 1610743814;
    function Object_(Type_: cdrObjectSnapPointType): IVGSnapPoint; dispid 1610743815;
    function FindClosest(TypeSet: cdrPointType; PositionX: Double; PositionY: Double): IVGSnapPoint; dispid 1610743816;
    function Range(var References: {NOT_OLEAUTO(PSafeArray)}OleVariant): IVGSnapPointRange; dispid 1610743817;
    function AddUserSnapPoint(PositionX: Double; PositionY: Double; Direction: Double; 
                              UseDirection: WordBool): IVGSnapPoint; dispid 1610743818;
    function AddUserSnapPointEx(const Id: WideString; PositionX: Double; PositionY: Double; 
                                Direction: Double; UseDirection: WordBool): IVGSnapPoint; dispid 1610743819;
    property Selection: IVGSnapPointRange readonly dispid 1610743820;
    procedure ClearSelection; dispid 1610743821;
    property All: IVGSnapPointRange readonly dispid 1610743822;
    function Edge(SegmentIndex: Integer; SegmentOffset: Double): IVGSnapPoint; dispid 1610743823;
    function Auto: IVGSnapPoint; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: IVGSnapPointRange
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AB-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSnapPointRange = interface(IDispatch)
    ['{B05800AB-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IVGSnapPoint; safecall;
    procedure Move(OffsetX: Double; OffsetY: Double); safecall;
    procedure Delete; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const SnapPoint: IVGSnapPoint): WordBool; safecall;
    function Remove(Index: Integer): WordBool; safecall;
    function RemoveByReference(const ReferenceData: WideString): WordBool; safecall;
    function Find(const ReferenceData: WideString): IVGSnapPoint; safecall;
    procedure CreateSelection; safecall;
    procedure AddToSelection; safecall;
    procedure RemoveFromSelection; safecall;
    procedure ChangeDirection(Direction: Double; UsesDirection: cdrTriState); safecall;
    procedure SetAutoSnap(AutoSnap: WordBool); safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IVGSnapPoint read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGSnapPointRangeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AB-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSnapPointRangeDisp = dispinterface
    ['{B05800AB-9AA4-44FD-9547-4F91EB757AC4}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: Integer]: IVGSnapPoint readonly dispid 0; default;
    procedure Move(OffsetX: Double; OffsetY: Double); dispid 1610743810;
    procedure Delete; dispid 1610743811;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const SnapPoint: IVGSnapPoint): WordBool; dispid 1610743813;
    function Remove(Index: Integer): WordBool; dispid 1610743814;
    function RemoveByReference(const ReferenceData: WideString): WordBool; dispid 1610743815;
    function Find(const ReferenceData: WideString): IVGSnapPoint; dispid 1610743816;
    procedure CreateSelection; dispid 1610743817;
    procedure AddToSelection; dispid 1610743818;
    procedure RemoveFromSelection; dispid 1610743819;
    procedure ChangeDirection(Direction: Double; UsesDirection: cdrTriState); dispid 1610743820;
    procedure SetAutoSnap(AutoSnap: WordBool); dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IVGConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580016-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGConnector = interface(IDispatch)
    ['{B0580016-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_StartPoint: IVGSnapPoint; safecall;
    procedure Set_StartPoint(const ppVal: IVGSnapPoint); safecall;
    function Get_EndPoint: IVGSnapPoint; safecall;
    procedure Set_EndPoint(const ppVal: IVGSnapPoint); safecall;
    function Get_type_: cdrConnectorType; safecall;
    property StartPoint: IVGSnapPoint read Get_StartPoint write Set_StartPoint;
    property EndPoint: IVGSnapPoint read Get_EndPoint write Set_EndPoint;
    property type_: cdrConnectorType read Get_type_;
  end;

// *********************************************************************//
// DispIntf:  IVGConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580016-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGConnectorDisp = dispinterface
    ['{B0580016-9AA4-44FD-9547-4F91EB757AC4}']
    property StartPoint: IVGSnapPoint dispid 1610743808;
    property EndPoint: IVGSnapPoint dispid 1610743810;
    property type_: cdrConnectorType readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580054-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGProperties = interface(IDispatch)
    ['{B0580054-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(const Name: WideString; Id: Integer): OleVariant; safecall;
    procedure Set_Item(const Name: WideString; Id: Integer; pVal: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Index(const Name: WideString; Id: Integer): Integer; safecall;
    function Get_ItemByIndex(Index: Integer): OleVariant; safecall;
    procedure Delete(const Name: WideString; Id: Integer); safecall;
    procedure DeleteByIndex(Index: Integer); safecall;
    function Get_Count: Integer; safecall;
    procedure Description(Index: Integer; out Name: WideString; out Id: Integer); safecall;
    procedure PutFile(const Name: WideString; Id: Integer; const FileName: WideString); safecall;
    procedure GetFile(const Name: WideString; Id: Integer; const FileName: WideString); safecall;
    function Exists(const Name: WideString; Id: Integer): WordBool; safecall;
    function DeleteAll(const Name: WideString): WordBool; safecall;
    property Item[const Name: WideString; Id: Integer]: OleVariant read Get_Item write Set_Item;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Index[const Name: WideString; Id: Integer]: Integer read Get_Index;
    property ItemByIndex[Index: Integer]: OleVariant read Get_ItemByIndex;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580054-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPropertiesDisp = dispinterface
    ['{B0580054-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[const Name: WideString; Id: Integer]: OleVariant dispid 0;
    property _NewEnum: IUnknown readonly dispid -4;
    property Index[const Name: WideString; Id: Integer]: Integer readonly dispid 1610743811;
    property ItemByIndex[Index: Integer]: OleVariant readonly dispid 1610743812;
    procedure Delete(const Name: WideString; Id: Integer); dispid 1610743813;
    procedure DeleteByIndex(Index: Integer); dispid 1610743814;
    property Count: Integer readonly dispid 1610743815;
    procedure Description(Index: Integer; out Name: WideString; out Id: Integer); dispid 1610743816;
    procedure PutFile(const Name: WideString; Id: Integer; const FileName: WideString); dispid 1610743817;
    procedure GetFile(const Name: WideString; Id: Integer; const FileName: WideString); dispid 1610743818;
    function Exists(const Name: WideString; Id: Integer): WordBool; dispid 1610743819;
    function DeleteAll(const Name: WideString): WordBool; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IVGGuide
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGuide = interface(IDispatch)
    ['{B058003F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrGuideType; safecall;
    function Get_Preset: WordBool; safecall;
    procedure MakeEditable; safecall;
    property type_: cdrGuideType read Get_type_;
    property Preset: WordBool read Get_Preset;
  end;

// *********************************************************************//
// DispIntf:  IVGGuideDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGuideDisp = dispinterface
    ['{B058003F-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrGuideType readonly dispid 1610743808;
    property Preset: WordBool readonly dispid 1610743809;
    procedure MakeEditable; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IVGPowerClip
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580053-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPowerClip = interface(IDispatch)
    ['{B0580053-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGShape; safecall;
    function Get_Shapes: IVGShapes; safecall;
    function Get_ContentsLocked: WordBool; safecall;
    procedure Set_ContentsLocked(pVal: WordBool); safecall;
    procedure EnterEditMode; safecall;
    procedure LeaveEditMode; safecall;
    function ExtractShapes: IVGShapeRange; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGShape read Get_Parent;
    property Shapes: IVGShapes read Get_Shapes;
    property ContentsLocked: WordBool read Get_ContentsLocked write Set_ContentsLocked;
  end;

// *********************************************************************//
// DispIntf:  IVGPowerClipDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580053-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPowerClipDisp = dispinterface
    ['{B0580053-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGShape readonly dispid 1610743809;
    property Shapes: IVGShapes readonly dispid 1610743810;
    property ContentsLocked: WordBool dispid 1610743811;
    procedure EnterEditMode; dispid 1610743813;
    procedure LeaveEditMode; dispid 1610743814;
    function ExtractShapes: IVGShapeRange; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IVGURL
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGURL = interface(IDispatch)
    ['{B058007E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Address: WideString; safecall;
    procedure Set_Address(const pVal: WideString); safecall;
    function Get_TargetFrame: WideString; safecall;
    procedure Set_TargetFrame(const pVal: WideString); safecall;
    function Get_AltComment: WideString; safecall;
    procedure Set_AltComment(const pVal: WideString); safecall;
    function Get_BookMark: WideString; safecall;
    procedure Set_BookMark(const pVal: WideString); safecall;
    function Get_Region: cdrURLRegion; safecall;
    procedure Set_Region(pVal: cdrURLRegion); safecall;
    property Address: WideString read Get_Address write Set_Address;
    property TargetFrame: WideString read Get_TargetFrame write Set_TargetFrame;
    property AltComment: WideString read Get_AltComment write Set_AltComment;
    property BookMark: WideString read Get_BookMark write Set_BookMark;
    property Region: cdrURLRegion read Get_Region write Set_Region;
  end;

// *********************************************************************//
// DispIntf:  IVGURLDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGURLDisp = dispinterface
    ['{B058007E-9AA4-44FD-9547-4F91EB757AC4}']
    property Address: WideString dispid 1610743808;
    property TargetFrame: WideString dispid 1610743810;
    property AltComment: WideString dispid 1610743812;
    property BookMark: WideString dispid 1610743814;
    property Region: cdrURLRegion dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IVGDataItems
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580020-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataItems = interface(IDispatch)
    ['{B0580020-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGShape; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGDataItem; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const DataField: IVGDataField; Value: OleVariant): IVGDataItem; safecall;
    procedure CopyFrom(const Shape: IVGShape); safecall;
    procedure Clear; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGShape read Get_Parent;
    property Count: Integer read Get_Count;
    property Item[IndexOrName: OleVariant]: IVGDataItem read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGDataItemsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580020-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataItemsDisp = dispinterface
    ['{B0580020-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGShape readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[IndexOrName: OleVariant]: IVGDataItem readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const DataField: IVGDataField; Value: OleVariant): IVGDataItem; dispid 1610743813;
    procedure CopyFrom(const Shape: IVGShape); dispid 1610743814;
    procedure Clear; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IVGDataItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataItem = interface(IDispatch)
    ['{B058001F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDataItems; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(pVal: OleVariant); safecall;
    function Get_DataField: IVGDataField; safecall;
    procedure Clear; safecall;
    function Get_FormattedValue: WideString; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDataItems read Get_Parent;
    property Value: OleVariant read Get_Value write Set_Value;
    property DataField: IVGDataField read Get_DataField;
    property FormattedValue: WideString read Get_FormattedValue;
  end;

// *********************************************************************//
// DispIntf:  IVGDataItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataItemDisp = dispinterface
    ['{B058001F-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDataItems readonly dispid 1610743809;
    property Value: OleVariant dispid 0;
    property DataField: IVGDataField readonly dispid 1610743812;
    procedure Clear; dispid 1610743813;
    property FormattedValue: WideString readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGDataField
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataField = interface(IDispatch)
    ['{B058001D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDataFields; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_FormatType: cdrDataFormatType; safecall;
    function Get_Format: WideString; safecall;
    procedure Set_Format(const pVal: WideString); safecall;
    function Get_FieldWidth: Integer; safecall;
    procedure Set_FieldWidth(pVal: Integer); safecall;
    function Get_AppDefault: WordBool; safecall;
    procedure Set_AppDefault(pVal: WordBool); safecall;
    function Get_DocDefault: WordBool; safecall;
    procedure Set_DocDefault(pVal: WordBool); safecall;
    function Get_SummarizeGroup: WordBool; safecall;
    procedure Set_SummarizeGroup(pVal: WordBool); safecall;
    procedure Delete; safecall;
    procedure Reorder(NewIndex: Integer); safecall;
    function Get_Index: Integer; safecall;
    function Get_Target: WideString; safecall;
    procedure Set_Target(const pVal: WideString); safecall;
    function Get_DefaultValue: WideString; safecall;
    procedure Set_DefaultValue(const pVal: WideString); safecall;
    function Get_Constraint: WideString; safecall;
    procedure Set_Constraint(const pVal: WideString); safecall;
    function Get_DataType: cdrDataType; safecall;
    procedure Set_DataType(pVal: cdrDataType); safecall;
    function Get_ParentName: WideString; safecall;
    procedure Set_ParentName(const pVal: WideString); safecall;
    function Get_ElementName: WideString; safecall;
    procedure Set_ElementName(const pVal: WideString); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDataFields read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property FormatType: cdrDataFormatType read Get_FormatType;
    property Format: WideString read Get_Format write Set_Format;
    property FieldWidth: Integer read Get_FieldWidth write Set_FieldWidth;
    property AppDefault: WordBool read Get_AppDefault write Set_AppDefault;
    property DocDefault: WordBool read Get_DocDefault write Set_DocDefault;
    property SummarizeGroup: WordBool read Get_SummarizeGroup write Set_SummarizeGroup;
    property Index: Integer read Get_Index;
    property Target: WideString read Get_Target write Set_Target;
    property DefaultValue: WideString read Get_DefaultValue write Set_DefaultValue;
    property Constraint: WideString read Get_Constraint write Set_Constraint;
    property DataType: cdrDataType read Get_DataType write Set_DataType;
    property ParentName: WideString read Get_ParentName write Set_ParentName;
    property ElementName: WideString read Get_ElementName write Set_ElementName;
  end;

// *********************************************************************//
// DispIntf:  IVGDataFieldDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataFieldDisp = dispinterface
    ['{B058001D-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDataFields readonly dispid 1610743809;
    property Name: WideString dispid 1610743810;
    property FormatType: cdrDataFormatType readonly dispid 1610743812;
    property Format: WideString dispid 1610743813;
    property FieldWidth: Integer dispid 1610743815;
    property AppDefault: WordBool dispid 1610743817;
    property DocDefault: WordBool dispid 1610743819;
    property SummarizeGroup: WordBool dispid 1610743821;
    procedure Delete; dispid 1610743823;
    procedure Reorder(NewIndex: Integer); dispid 1610743824;
    property Index: Integer readonly dispid 1610743825;
    property Target: WideString dispid 1610743826;
    property DefaultValue: WideString dispid 1610743828;
    property Constraint: WideString dispid 1610743830;
    property DataType: cdrDataType dispid 1610743832;
    property ParentName: WideString dispid 1610743834;
    property ElementName: WideString dispid 1610743836;
  end;

// *********************************************************************//
// Interface: IVGDataFields
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataFields = interface(IDispatch)
    ['{B058001E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocument; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGDataField; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const Name: WideString; const Format: WideString; AppDefault: WordBool; 
                 DocDefault: WordBool; SummarizeGroup: WordBool): IVGDataField; safecall;
    function AddEx(const Name: WideString; DataType: cdrDataType; const DefaultValue: WideString; 
                   const Constraint: WideString; const Target: WideString; 
                   const Format: WideString; AppDefault: WordBool; DocDefault: WordBool; 
                   SummarizeGroup: WordBool; FieldWidth: Integer): IVGDataField; safecall;
    function IsPresent(const FieldName: WideString): WordBool; safecall;
    function AddEx2(const ParentName: WideString; const ElementName: WideString; 
                    const Name: WideString; DataType: cdrDataType; const DefaultValue: WideString; 
                    const Constraint: WideString; const Target: WideString; 
                    const Format: WideString; AppDefault: WordBool; DocDefault: WordBool; 
                    SummarizeGroup: WordBool; FieldWidth: Integer): IVGDataField; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocument read Get_Parent;
    property Count: Integer read Get_Count;
    property Item[IndexOrName: OleVariant]: IVGDataField read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGDataFieldsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDataFieldsDisp = dispinterface
    ['{B058001E-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocument readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[IndexOrName: OleVariant]: IVGDataField readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const Name: WideString; const Format: WideString; AppDefault: WordBool; 
                 DocDefault: WordBool; SummarizeGroup: WordBool): IVGDataField; dispid 1610743813;
    function AddEx(const Name: WideString; DataType: cdrDataType; const DefaultValue: WideString; 
                   const Constraint: WideString; const Target: WideString; 
                   const Format: WideString; AppDefault: WordBool; DocDefault: WordBool; 
                   SummarizeGroup: WordBool; FieldWidth: Integer): IVGDataField; dispid 1610743814;
    function IsPresent(const FieldName: WideString): WordBool; dispid 1610743815;
    function AddEx2(const ParentName: WideString; const ElementName: WideString; 
                    const Name: WideString; DataType: cdrDataType; const DefaultValue: WideString; 
                    const Constraint: WideString; const Target: WideString; 
                    const Format: WideString; AppDefault: WordBool; DocDefault: WordBool; 
                    SummarizeGroup: WordBool; FieldWidth: Integer): IVGDataField; dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IVGCloneLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580011-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCloneLink = interface(IDispatch)
    ['{B0580011-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGShape; safecall;
    function Get_CloneParent: IVGShape; safecall;
    function Get_FillLinked: WordBool; safecall;
    procedure Set_FillLinked(pVal: WordBool); safecall;
    function Get_OutlineLinked: WordBool; safecall;
    procedure Set_OutlineLinked(pVal: WordBool); safecall;
    function Get_ShapeLinked: WordBool; safecall;
    procedure Set_ShapeLinked(pVal: WordBool); safecall;
    function Get_TransformLinked: WordBool; safecall;
    procedure Set_TransformLinked(pVal: WordBool); safecall;
    function Get_BitmapColorMaskLinked: WordBool; safecall;
    procedure Set_BitmapColorMaskLinked(pVal: WordBool); safecall;
    procedure RestoreAllLinks; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGShape read Get_Parent;
    property CloneParent: IVGShape read Get_CloneParent;
    property FillLinked: WordBool read Get_FillLinked write Set_FillLinked;
    property OutlineLinked: WordBool read Get_OutlineLinked write Set_OutlineLinked;
    property ShapeLinked: WordBool read Get_ShapeLinked write Set_ShapeLinked;
    property TransformLinked: WordBool read Get_TransformLinked write Set_TransformLinked;
    property BitmapColorMaskLinked: WordBool read Get_BitmapColorMaskLinked write Set_BitmapColorMaskLinked;
  end;

// *********************************************************************//
// DispIntf:  IVGCloneLinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580011-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCloneLinkDisp = dispinterface
    ['{B0580011-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGShape readonly dispid 1610743809;
    property CloneParent: IVGShape readonly dispid 1610743810;
    property FillLinked: WordBool dispid 1610743811;
    property OutlineLinked: WordBool dispid 1610743813;
    property ShapeLinked: WordBool dispid 1610743815;
    property TransformLinked: WordBool dispid 1610743817;
    property BitmapColorMaskLinked: WordBool dispid 1610743819;
    procedure RestoreAllLinks; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IVGTransparency
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTransparency = interface(IDispatch)
    ['{B058007D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_type_: cdrTransparencyType; safecall;
    function Get_Uniform: Integer; safecall;
    procedure Set_Uniform(pVal: Integer); safecall;
    function Get_Fountain: IVGFountainFill; safecall;
    procedure Set_Fountain(const ppVal: IVGFountainFill); safecall;
    function Get_Pattern: IVGPatternFill; safecall;
    procedure Set_Pattern(const ppVal: IVGPatternFill); safecall;
    function Get_Texture: IVGTextureFill; safecall;
    procedure Set_Texture(const ppVal: IVGTextureFill); safecall;
    function Get_Start: Integer; safecall;
    procedure Set_Start(pVal: Integer); safecall;
    function Get_End_: Integer; safecall;
    procedure Set_End_(pVal: Integer); safecall;
    function Get_Frozen: WordBool; safecall;
    procedure ApplyNoTransparency; safecall;
    procedure ApplyUniformTransparency(Value: Integer); safecall;
    function ApplyFountainTransparency(Start: Integer; End_: Integer; Type_: cdrFountainFillType; 
                                       Angle: Double; Steps: Integer; EdgePad: Integer; 
                                       MidPoint: Integer; CenterOffsetX: Double; 
                                       CenterOffsetY: Double): IVGFountainFill; safecall;
    function ApplyPatternTransparency(Type_: cdrPatternFillType; const FileName: WideString; 
                                      PatternCanvasIndex: Integer; Front: Integer; Back: Integer; 
                                      TransformWithShape: WordBool): IVGPatternFill; safecall;
    function ApplyTextureTransparency(const TextureName: WideString; const LibraryName: WideString; 
                                      Front: Integer; Back: Integer): IVGTextureFill; safecall;
    procedure Freeze; safecall;
    procedure Unfreeze; safecall;
    function Get_AppliedTo: cdrTransparencyAppliedTo; safecall;
    procedure Set_AppliedTo(pVal: cdrTransparencyAppliedTo); safecall;
    function Get_MergeMode: cdrMergeMode; safecall;
    procedure Set_MergeMode(pVal: cdrMergeMode); safecall;
    function UserAssign(TransparencyType: cdrTransparencyType; PatternType: cdrPatternFillType; 
                        ParentWindowHandle: Integer): WordBool; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property type_: cdrTransparencyType read Get_type_;
    property Uniform: Integer read Get_Uniform write Set_Uniform;
    property Fountain: IVGFountainFill read Get_Fountain write Set_Fountain;
    property Pattern: IVGPatternFill read Get_Pattern write Set_Pattern;
    property Texture: IVGTextureFill read Get_Texture write Set_Texture;
    property Start: Integer read Get_Start write Set_Start;
    property End_: Integer read Get_End_ write Set_End_;
    property Frozen: WordBool read Get_Frozen;
    property AppliedTo: cdrTransparencyAppliedTo read Get_AppliedTo write Set_AppliedTo;
    property MergeMode: cdrMergeMode read Get_MergeMode write Set_MergeMode;
  end;

// *********************************************************************//
// DispIntf:  IVGTransparencyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTransparencyDisp = dispinterface
    ['{B058007D-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property type_: cdrTransparencyType readonly dispid 1610743810;
    property Uniform: Integer dispid 1610743811;
    property Fountain: IVGFountainFill dispid 1610743813;
    property Pattern: IVGPatternFill dispid 1610743815;
    property Texture: IVGTextureFill dispid 1610743817;
    property Start: Integer dispid 1610743819;
    property End_: Integer dispid 1610743821;
    property Frozen: WordBool readonly dispid 1610743823;
    procedure ApplyNoTransparency; dispid 1610743824;
    procedure ApplyUniformTransparency(Value: Integer); dispid 1610743825;
    function ApplyFountainTransparency(Start: Integer; End_: Integer; Type_: cdrFountainFillType; 
                                       Angle: Double; Steps: Integer; EdgePad: Integer; 
                                       MidPoint: Integer; CenterOffsetX: Double; 
                                       CenterOffsetY: Double): IVGFountainFill; dispid 1610743826;
    function ApplyPatternTransparency(Type_: cdrPatternFillType; const FileName: WideString; 
                                      PatternCanvasIndex: Integer; Front: Integer; Back: Integer; 
                                      TransformWithShape: WordBool): IVGPatternFill; dispid 1610743827;
    function ApplyTextureTransparency(const TextureName: WideString; const LibraryName: WideString; 
                                      Front: Integer; Back: Integer): IVGTextureFill; dispid 1610743828;
    procedure Freeze; dispid 1610743829;
    procedure Unfreeze; dispid 1610743830;
    property AppliedTo: cdrTransparencyAppliedTo dispid 1610743831;
    property MergeMode: cdrMergeMode dispid 1610743833;
    function UserAssign(TransparencyType: cdrTransparencyType; PatternType: cdrPatternFillType; 
                        ParentWindowHandle: Integer): WordBool; dispid 1610743835;
  end;

// *********************************************************************//
// Interface: IVGCustomShape
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCustomShape = interface(IDispatch)
    ['{B058001C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_TypeID: WideString; safecall;
    property TypeID: WideString read Get_TypeID;
  end;

// *********************************************************************//
// DispIntf:  IVGCustomShapeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058001C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGCustomShapeDisp = dispinterface
    ['{B058001C-9AA4-44FD-9547-4F91EB757AC4}']
    property TypeID: WideString readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IVGDimension
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580021-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDimension = interface(IDispatch)
    ['{B0580021-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrDimensionType; safecall;
    function Get_Linear: IVGDimensionLinear; safecall;
    function Get_Angular: IVGDimensionAngular; safecall;
    function Get_Precision: Integer; safecall;
    procedure Set_Precision(pVal: Integer); safecall;
    function Get_BoxedText: WordBool; safecall;
    procedure Set_BoxedText(pVal: WordBool); safecall;
    function Get_LeadingZero: WordBool; safecall;
    procedure Set_LeadingZero(pVal: WordBool); safecall;
    function Get_TextShape: IVGShape; safecall;
    function Get_Prefix: WideString; safecall;
    procedure Set_Prefix(const pVal: WideString); safecall;
    function Get_Suffix: WideString; safecall;
    procedure Set_Suffix(const pVal: WideString); safecall;
    function Get_Outline: IVGOutline; safecall;
    function Get_TextCentered: WordBool; safecall;
    procedure Set_TextCentered(pVal: WordBool); safecall;
    function Get_ShowUnits: WordBool; safecall;
    procedure Set_ShowUnits(pVal: WordBool); safecall;
    function Get_Placement: cdrDimensionPlacement; safecall;
    procedure Set_Placement(pVal: cdrDimensionPlacement); safecall;
    function Get_HorizontalText: WordBool; safecall;
    procedure Set_HorizontalText(pVal: WordBool); safecall;
    function Get_DynamicText: WordBool; safecall;
    procedure Set_DynamicText(pVal: WordBool); safecall;
    function Get_DistanceFromObject: Double; safecall;
    function Get_UseDistanceFromObject: WordBool; safecall;
    procedure Set_UseDistanceFromObject(pVal: WordBool); safecall;
    procedure SetDistanceFromObject(Distance: Double); safecall;
    function Get_Overhang: Double; safecall;
    function Get_UseOverhang: WordBool; safecall;
    procedure Set_UseOverhang(pVal: WordBool); safecall;
    procedure SetOverhang(Overhang: Double); safecall;
    function Get_TextLabelGap: Double; safecall;
    function Get_UseTextLabelGap: WordBool; safecall;
    procedure Set_UseTextLabelGap(pVal: WordBool); safecall;
    procedure SetTextLabelGap(Gap: Double); safecall;
    function Get_ExtensionLinesVisible: WordBool; safecall;
    procedure Set_ExtensionLinesVisible(pVal: WordBool); safecall;
    function Get_InnerExtensionLinesVisible: WordBool; safecall;
    procedure Set_InnerExtensionLinesVisible(pVal: WordBool); safecall;
    function Get_GapOnFreeExtensionVisible: WordBool; safecall;
    procedure Set_GapOnFreeExtensionVisible(pVal: WordBool); safecall;
    property type_: cdrDimensionType read Get_type_;
    property Linear: IVGDimensionLinear read Get_Linear;
    property Angular: IVGDimensionAngular read Get_Angular;
    property Precision: Integer read Get_Precision write Set_Precision;
    property BoxedText: WordBool read Get_BoxedText write Set_BoxedText;
    property LeadingZero: WordBool read Get_LeadingZero write Set_LeadingZero;
    property TextShape: IVGShape read Get_TextShape;
    property Prefix: WideString read Get_Prefix write Set_Prefix;
    property Suffix: WideString read Get_Suffix write Set_Suffix;
    property Outline: IVGOutline read Get_Outline;
    property TextCentered: WordBool read Get_TextCentered write Set_TextCentered;
    property ShowUnits: WordBool read Get_ShowUnits write Set_ShowUnits;
    property Placement: cdrDimensionPlacement read Get_Placement write Set_Placement;
    property HorizontalText: WordBool read Get_HorizontalText write Set_HorizontalText;
    property DynamicText: WordBool read Get_DynamicText write Set_DynamicText;
    property DistanceFromObject: Double read Get_DistanceFromObject;
    property UseDistanceFromObject: WordBool read Get_UseDistanceFromObject write Set_UseDistanceFromObject;
    property Overhang: Double read Get_Overhang;
    property UseOverhang: WordBool read Get_UseOverhang write Set_UseOverhang;
    property TextLabelGap: Double read Get_TextLabelGap;
    property UseTextLabelGap: WordBool read Get_UseTextLabelGap write Set_UseTextLabelGap;
    property ExtensionLinesVisible: WordBool read Get_ExtensionLinesVisible write Set_ExtensionLinesVisible;
    property InnerExtensionLinesVisible: WordBool read Get_InnerExtensionLinesVisible write Set_InnerExtensionLinesVisible;
    property GapOnFreeExtensionVisible: WordBool read Get_GapOnFreeExtensionVisible write Set_GapOnFreeExtensionVisible;
  end;

// *********************************************************************//
// DispIntf:  IVGDimensionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580021-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDimensionDisp = dispinterface
    ['{B0580021-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrDimensionType readonly dispid 1610743808;
    property Linear: IVGDimensionLinear readonly dispid 1610743809;
    property Angular: IVGDimensionAngular readonly dispid 1610743810;
    property Precision: Integer dispid 1610743811;
    property BoxedText: WordBool dispid 1610743813;
    property LeadingZero: WordBool dispid 1610743815;
    property TextShape: IVGShape readonly dispid 1610743817;
    property Prefix: WideString dispid 1610743818;
    property Suffix: WideString dispid 1610743820;
    property Outline: IVGOutline readonly dispid 1610743822;
    property TextCentered: WordBool dispid 1610743823;
    property ShowUnits: WordBool dispid 1610743825;
    property Placement: cdrDimensionPlacement dispid 1610743827;
    property HorizontalText: WordBool dispid 1610743829;
    property DynamicText: WordBool dispid 1610743831;
    property DistanceFromObject: Double readonly dispid 1610743833;
    property UseDistanceFromObject: WordBool dispid 1610743834;
    procedure SetDistanceFromObject(Distance: Double); dispid 1610743836;
    property Overhang: Double readonly dispid 1610743837;
    property UseOverhang: WordBool dispid 1610743838;
    procedure SetOverhang(Overhang: Double); dispid 1610743840;
    property TextLabelGap: Double readonly dispid 1610743841;
    property UseTextLabelGap: WordBool dispid 1610743842;
    procedure SetTextLabelGap(Gap: Double); dispid 1610743844;
    property ExtensionLinesVisible: WordBool dispid 1610743845;
    property InnerExtensionLinesVisible: WordBool dispid 1610743847;
    property GapOnFreeExtensionVisible: WordBool dispid 1610743849;
  end;

// *********************************************************************//
// Interface: IVGDimensionLinear
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580023-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDimensionLinear = interface(IDispatch)
    ['{B0580023-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrLinearDimensionType; safecall;
    function Get_Point1: IVGSnapPoint; safecall;
    procedure Set_Point1(const ppVal: IVGSnapPoint); safecall;
    function Get_Point2: IVGSnapPoint; safecall;
    procedure Set_Point2(const ppVal: IVGSnapPoint); safecall;
    function Get_TextCentered: WordBool; safecall;
    procedure Set_TextCentered(pVal: WordBool); safecall;
    function Get_TextX: Double; safecall;
    procedure Set_TextX(pVal: Double); safecall;
    function Get_TextY: Double; safecall;
    procedure Set_TextY(pVal: Double); safecall;
    function Get_Style: cdrDimensionStyle; safecall;
    procedure Set_Style(pVal: cdrDimensionStyle); safecall;
    function Get_ShowUnits: WordBool; safecall;
    procedure Set_ShowUnits(pVal: WordBool); safecall;
    function Get_Units: cdrDimensionLinearUnits; safecall;
    procedure Set_Units(pVal: cdrDimensionLinearUnits); safecall;
    function Get_Placement: cdrDimensionPlacement; safecall;
    procedure Set_Placement(pVal: cdrDimensionPlacement); safecall;
    function Get_HorizontalText: WordBool; safecall;
    procedure Set_HorizontalText(pVal: WordBool); safecall;
    function Get_ReverseTerminators: WordBool; safecall;
    procedure Set_ReverseTerminators(pVal: WordBool); safecall;
    function Get_AutoReverseTerminators: WordBool; safecall;
    procedure Set_AutoReverseTerminators(pVal: WordBool); safecall;
    function Get_ReverseTerminatorLength: Double; safecall;
    function Get_UseReverseTerminatorLength: WordBool; safecall;
    procedure Set_UseReverseTerminatorLength(pVal: WordBool); safecall;
    procedure SetReverseTerminatorLength(Length: Double); safecall;
    function Get_InnerDimensionLineVisible: WordBool; safecall;
    procedure Set_InnerDimensionLineVisible(pVal: WordBool); safecall;
    property type_: cdrLinearDimensionType read Get_type_;
    property Point1: IVGSnapPoint read Get_Point1 write Set_Point1;
    property Point2: IVGSnapPoint read Get_Point2 write Set_Point2;
    property TextCentered: WordBool read Get_TextCentered write Set_TextCentered;
    property TextX: Double read Get_TextX write Set_TextX;
    property TextY: Double read Get_TextY write Set_TextY;
    property Style: cdrDimensionStyle read Get_Style write Set_Style;
    property ShowUnits: WordBool read Get_ShowUnits write Set_ShowUnits;
    property Units: cdrDimensionLinearUnits read Get_Units write Set_Units;
    property Placement: cdrDimensionPlacement read Get_Placement write Set_Placement;
    property HorizontalText: WordBool read Get_HorizontalText write Set_HorizontalText;
    property ReverseTerminators: WordBool read Get_ReverseTerminators write Set_ReverseTerminators;
    property AutoReverseTerminators: WordBool read Get_AutoReverseTerminators write Set_AutoReverseTerminators;
    property ReverseTerminatorLength: Double read Get_ReverseTerminatorLength;
    property UseReverseTerminatorLength: WordBool read Get_UseReverseTerminatorLength write Set_UseReverseTerminatorLength;
    property InnerDimensionLineVisible: WordBool read Get_InnerDimensionLineVisible write Set_InnerDimensionLineVisible;
  end;

// *********************************************************************//
// DispIntf:  IVGDimensionLinearDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580023-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDimensionLinearDisp = dispinterface
    ['{B0580023-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrLinearDimensionType readonly dispid 1610743808;
    property Point1: IVGSnapPoint dispid 1610743809;
    property Point2: IVGSnapPoint dispid 1610743811;
    property TextCentered: WordBool dispid 1610743813;
    property TextX: Double dispid 1610743815;
    property TextY: Double dispid 1610743817;
    property Style: cdrDimensionStyle dispid 1610743819;
    property ShowUnits: WordBool dispid 1610743821;
    property Units: cdrDimensionLinearUnits dispid 1610743823;
    property Placement: cdrDimensionPlacement dispid 1610743825;
    property HorizontalText: WordBool dispid 1610743827;
    property ReverseTerminators: WordBool dispid 1610743829;
    property AutoReverseTerminators: WordBool dispid 1610743831;
    property ReverseTerminatorLength: Double readonly dispid 1610743833;
    property UseReverseTerminatorLength: WordBool dispid 1610743834;
    procedure SetReverseTerminatorLength(Length: Double); dispid 1610743836;
    property InnerDimensionLineVisible: WordBool dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVGDimensionAngular
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580022-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDimensionAngular = interface(IDispatch)
    ['{B0580022-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Center: IVGSnapPoint; safecall;
    procedure Set_Center(const ppVal: IVGSnapPoint); safecall;
    function Get_Point1: IVGSnapPoint; safecall;
    procedure Set_Point1(const ppVal: IVGSnapPoint); safecall;
    function Get_Point2: IVGSnapPoint; safecall;
    procedure Set_Point2(const ppVal: IVGSnapPoint); safecall;
    function Get_TextX: Double; safecall;
    procedure Set_TextX(pVal: Double); safecall;
    function Get_TextY: Double; safecall;
    procedure Set_TextY(pVal: Double); safecall;
    function Get_ShowUnits: WordBool; safecall;
    procedure Set_ShowUnits(pVal: WordBool); safecall;
    function Get_Units: cdrDimensionAngularUnits; safecall;
    procedure Set_Units(pVal: cdrDimensionAngularUnits); safecall;
    function Get_Clockwise: WordBool; safecall;
    procedure Set_Clockwise(pVal: WordBool); safecall;
    function Get_InnerExtensionLinesVisible: WordBool; safecall;
    procedure Set_InnerExtensionLinesVisible(pVal: WordBool); safecall;
    property Center: IVGSnapPoint read Get_Center write Set_Center;
    property Point1: IVGSnapPoint read Get_Point1 write Set_Point1;
    property Point2: IVGSnapPoint read Get_Point2 write Set_Point2;
    property TextX: Double read Get_TextX write Set_TextX;
    property TextY: Double read Get_TextY write Set_TextY;
    property ShowUnits: WordBool read Get_ShowUnits write Set_ShowUnits;
    property Units: cdrDimensionAngularUnits read Get_Units write Set_Units;
    property Clockwise: WordBool read Get_Clockwise write Set_Clockwise;
    property InnerExtensionLinesVisible: WordBool read Get_InnerExtensionLinesVisible write Set_InnerExtensionLinesVisible;
  end;

// *********************************************************************//
// DispIntf:  IVGDimensionAngularDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580022-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGDimensionAngularDisp = dispinterface
    ['{B0580022-9AA4-44FD-9547-4F91EB757AC4}']
    property Center: IVGSnapPoint dispid 1610743808;
    property Point1: IVGSnapPoint dispid 1610743810;
    property Point2: IVGSnapPoint dispid 1610743812;
    property TextX: Double dispid 1610743814;
    property TextY: Double dispid 1610743816;
    property ShowUnits: WordBool dispid 1610743818;
    property Units: cdrDimensionAngularUnits dispid 1610743820;
    property Clockwise: WordBool dispid 1610743822;
    property InnerExtensionLinesVisible: WordBool dispid 1610743824;
  end;

// *********************************************************************//
// Interface: IVGSymbol
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbol = interface(IDispatch)
    ['{B058006C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Definition: IVGSymbolDefinition; safecall;
    function RevertToShapes: IVGShapeRange; safecall;
    property Definition: IVGSymbolDefinition read Get_Definition;
  end;

// *********************************************************************//
// DispIntf:  IVGSymbolDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolDisp = dispinterface
    ['{B058006C-9AA4-44FD-9547-4F91EB757AC4}']
    property Definition: IVGSymbolDefinition readonly dispid 1610743808;
    function RevertToShapes: IVGShapeRange; dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IVGSymbolDefinition
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolDefinition = interface(IDispatch)
    ['{B058006D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_Linked: WordBool; safecall;
    function Get_LinkLibraryPath: WideString; safecall;
    function Get_Nested: WordBool; safecall;
    function Get_HasLinks: WordBool; safecall;
    function Get_IsLinkBroken: WordBool; safecall;
    function Get_IsLinkUpdated: WordBool; safecall;
    function Get_HasBrokenLinks: WordBool; safecall;
    function Get_HasUpdatedLinks: WordBool; safecall;
    function Get_NestedSymbols: IVGSymbolDefinitions; safecall;
    function Get_Editable: WordBool; safecall;
    function Get_InstanceCount: Integer; safecall;
    function Get_Instances: IVGShapeRange; safecall;
    procedure EnterEditMode; safecall;
    procedure LeaveEditMode; safecall;
    procedure Delete; safecall;
    procedure Copy; safecall;
    function Duplicate(const Name: WideString): IVGSymbolDefinition; safecall;
    procedure BreakLink; safecall;
    procedure UpdateLinks; safecall;
    procedure FixLink(const LibraryPath: WideString); safecall;
    function Get_type_: cdrSymbolType; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Description: WideString read Get_Description write Set_Description;
    property Linked: WordBool read Get_Linked;
    property LinkLibraryPath: WideString read Get_LinkLibraryPath;
    property Nested: WordBool read Get_Nested;
    property HasLinks: WordBool read Get_HasLinks;
    property IsLinkBroken: WordBool read Get_IsLinkBroken;
    property IsLinkUpdated: WordBool read Get_IsLinkUpdated;
    property HasBrokenLinks: WordBool read Get_HasBrokenLinks;
    property HasUpdatedLinks: WordBool read Get_HasUpdatedLinks;
    property NestedSymbols: IVGSymbolDefinitions read Get_NestedSymbols;
    property Editable: WordBool read Get_Editable;
    property InstanceCount: Integer read Get_InstanceCount;
    property Instances: IVGShapeRange read Get_Instances;
    property type_: cdrSymbolType read Get_type_;
  end;

// *********************************************************************//
// DispIntf:  IVGSymbolDefinitionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolDefinitionDisp = dispinterface
    ['{B058006D-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString dispid 1610743808;
    property Description: WideString dispid 1610743810;
    property Linked: WordBool readonly dispid 1610743812;
    property LinkLibraryPath: WideString readonly dispid 1610743813;
    property Nested: WordBool readonly dispid 1610743814;
    property HasLinks: WordBool readonly dispid 1610743815;
    property IsLinkBroken: WordBool readonly dispid 1610743816;
    property IsLinkUpdated: WordBool readonly dispid 1610743817;
    property HasBrokenLinks: WordBool readonly dispid 1610743818;
    property HasUpdatedLinks: WordBool readonly dispid 1610743819;
    property NestedSymbols: IVGSymbolDefinitions readonly dispid 1610743820;
    property Editable: WordBool readonly dispid 1610743821;
    property InstanceCount: Integer readonly dispid 1610743822;
    property Instances: IVGShapeRange readonly dispid 1610743823;
    procedure EnterEditMode; dispid 1610743824;
    procedure LeaveEditMode; dispid 1610743825;
    procedure Delete; dispid 1610743826;
    procedure Copy; dispid 1610743827;
    function Duplicate(const Name: WideString): IVGSymbolDefinition; dispid 1610743828;
    procedure BreakLink; dispid 1610743829;
    procedure UpdateLinks; dispid 1610743830;
    procedure FixLink(const LibraryPath: WideString); dispid 1610743831;
    property type_: cdrSymbolType readonly dispid 1610743832;
  end;

// *********************************************************************//
// Interface: IVGSymbolDefinitions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolDefinitions = interface(IDispatch)
    ['{B058006E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(IndexOrName: OleVariant): IVGSymbolDefinition; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[IndexOrName: OleVariant]: IVGSymbolDefinition read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGSymbolDefinitionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolDefinitionsDisp = dispinterface
    ['{B058006E-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[IndexOrName: OleVariant]: IVGSymbolDefinition readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IVGOLE
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580088-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOLE = interface(IDispatch)
    ['{B0580088-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ClassID: WideString; safecall;
    function Get_ProgID: WideString; safecall;
    function Get_type_: cdrOLEType; safecall;
    function Get_FullName: WideString; safecall;
    function Get_ShortName: WideString; safecall;
    function Get_ServerName: WideString; safecall;
    function Get_Modified: WordBool; safecall;
    function Get_IsInPlaceActive: WordBool; safecall;
    function Get_IsOpen: WordBool; safecall;
    function Get_IsServerRunning: WordBool; safecall;
    function Get_InPlaceWindowHandle: Integer; safecall;
    procedure Edit; safecall;
    procedure Open; safecall;
    procedure Activate; safecall;
    procedure Deactivate; safecall;
    procedure DoVerb(VerbID: Integer); safecall;
    function Get_IsLinkUpToDate: WordBool; safecall;
    function Get_LinkPath: WideString; safecall;
    procedure UpdateLink; safecall;
    property ClassID: WideString read Get_ClassID;
    property ProgID: WideString read Get_ProgID;
    property type_: cdrOLEType read Get_type_;
    property FullName: WideString read Get_FullName;
    property ShortName: WideString read Get_ShortName;
    property ServerName: WideString read Get_ServerName;
    property Modified: WordBool read Get_Modified;
    property IsInPlaceActive: WordBool read Get_IsInPlaceActive;
    property IsOpen: WordBool read Get_IsOpen;
    property IsServerRunning: WordBool read Get_IsServerRunning;
    property InPlaceWindowHandle: Integer read Get_InPlaceWindowHandle;
    property IsLinkUpToDate: WordBool read Get_IsLinkUpToDate;
    property LinkPath: WideString read Get_LinkPath;
  end;

// *********************************************************************//
// DispIntf:  IVGOLEDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580088-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOLEDisp = dispinterface
    ['{B0580088-9AA4-44FD-9547-4F91EB757AC4}']
    property ClassID: WideString readonly dispid 1610743808;
    property ProgID: WideString readonly dispid 1610743809;
    property type_: cdrOLEType readonly dispid 1610743810;
    property FullName: WideString readonly dispid 1610743811;
    property ShortName: WideString readonly dispid 1610743812;
    property ServerName: WideString readonly dispid 1610743813;
    property Modified: WordBool readonly dispid 1610743814;
    property IsInPlaceActive: WordBool readonly dispid 1610743815;
    property IsOpen: WordBool readonly dispid 1610743816;
    property IsServerRunning: WordBool readonly dispid 1610743817;
    property InPlaceWindowHandle: Integer readonly dispid 1610743818;
    procedure Edit; dispid 1610743819;
    procedure Open; dispid 1610743820;
    procedure Activate; dispid 1610743821;
    procedure Deactivate; dispid 1610743822;
    procedure DoVerb(VerbID: Integer); dispid 1610743823;
    property IsLinkUpToDate: WordBool readonly dispid 1610743824;
    property LinkPath: WideString readonly dispid 1610743825;
    procedure UpdateLink; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IVGTreeNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTreeNode = interface(IDispatch)
    ['{B058008F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_type_: cdrTreeNodeType; safecall;
    function Get_ShapeType: cdrShapeType; safecall;
    function Get_Shape: IVGShape; safecall;
    function Get_VirtualShape: IVGShape; safecall;
    function Get_Page: IVGPage; safecall;
    function Get_Layer: IVGLayer; safecall;
    function Get_Document: IVGDocument; safecall;
    function Get_Next: IVGTreeNode; safecall;
    function Get_Previous: IVGTreeNode; safecall;
    function Get_Parent: IVGTreeNode; safecall;
    function Get_FirstChild: IVGTreeNode; safecall;
    function Get_LastChild: IVGTreeNode; safecall;
    function Get_Children: IVGTreeNodes; safecall;
    function Get_IsGroupChild: WordBool; safecall;
    function Get_Selected: WordBool; safecall;
    function Get_NextSelected: IVGTreeNode; safecall;
    function UnLink: WordBool; safecall;
    function LinkBefore(const TreeNode: IVGTreeNode): WordBool; safecall;
    function LinkAfter(const TreeNode: IVGTreeNode): WordBool; safecall;
    function LinkAsChildOf(const TreeNode: IVGTreeNode): WordBool; safecall;
    function MoveToFirst: WordBool; safecall;
    function MoveToLast: WordBool; safecall;
    function MoveBefore(const TreeNode: IVGTreeNode): WordBool; safecall;
    function MoveAfter(const TreeNode: IVGTreeNode): WordBool; safecall;
    function IsDescendentOf(const TreeNode: IVGTreeNode): WordBool; safecall;
    procedure Delete; safecall;
    function GetCopy: IVGTreeNode; safecall;
    procedure SwapData(const TreeNode: IVGTreeNode); safecall;
    procedure SwapGroupData(const GroupNode: IVGTreeNode); safecall;
    function Get_Handle: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    property type_: cdrTreeNodeType read Get_type_;
    property ShapeType: cdrShapeType read Get_ShapeType;
    property Shape: IVGShape read Get_Shape;
    property VirtualShape: IVGShape read Get_VirtualShape;
    property Page: IVGPage read Get_Page;
    property Layer: IVGLayer read Get_Layer;
    property Document: IVGDocument read Get_Document;
    property Next: IVGTreeNode read Get_Next;
    property Previous: IVGTreeNode read Get_Previous;
    property Parent: IVGTreeNode read Get_Parent;
    property FirstChild: IVGTreeNode read Get_FirstChild;
    property LastChild: IVGTreeNode read Get_LastChild;
    property Children: IVGTreeNodes read Get_Children;
    property IsGroupChild: WordBool read Get_IsGroupChild;
    property Selected: WordBool read Get_Selected;
    property NextSelected: IVGTreeNode read Get_NextSelected;
    property Handle: Integer read Get_Handle;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  IVGTreeNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTreeNodeDisp = dispinterface
    ['{B058008F-9AA4-44FD-9547-4F91EB757AC4}']
    property type_: cdrTreeNodeType readonly dispid 1610743808;
    property ShapeType: cdrShapeType readonly dispid 1610743809;
    property Shape: IVGShape readonly dispid 1610743810;
    property VirtualShape: IVGShape readonly dispid 1610743811;
    property Page: IVGPage readonly dispid 1610743812;
    property Layer: IVGLayer readonly dispid 1610743813;
    property Document: IVGDocument readonly dispid 1610743814;
    property Next: IVGTreeNode readonly dispid 1610743815;
    property Previous: IVGTreeNode readonly dispid 1610743816;
    property Parent: IVGTreeNode readonly dispid 1610743817;
    property FirstChild: IVGTreeNode readonly dispid 1610743818;
    property LastChild: IVGTreeNode readonly dispid 1610743819;
    property Children: IVGTreeNodes readonly dispid 1610743820;
    property IsGroupChild: WordBool readonly dispid 1610743821;
    property Selected: WordBool readonly dispid 1610743822;
    property NextSelected: IVGTreeNode readonly dispid 1610743823;
    function UnLink: WordBool; dispid 1610743824;
    function LinkBefore(const TreeNode: IVGTreeNode): WordBool; dispid 1610743825;
    function LinkAfter(const TreeNode: IVGTreeNode): WordBool; dispid 1610743826;
    function LinkAsChildOf(const TreeNode: IVGTreeNode): WordBool; dispid 1610743827;
    function MoveToFirst: WordBool; dispid 1610743828;
    function MoveToLast: WordBool; dispid 1610743829;
    function MoveBefore(const TreeNode: IVGTreeNode): WordBool; dispid 1610743830;
    function MoveAfter(const TreeNode: IVGTreeNode): WordBool; dispid 1610743831;
    function IsDescendentOf(const TreeNode: IVGTreeNode): WordBool; dispid 1610743832;
    procedure Delete; dispid 1610743833;
    function GetCopy: IVGTreeNode; dispid 1610743834;
    procedure SwapData(const TreeNode: IVGTreeNode); dispid 1610743835;
    procedure SwapGroupData(const GroupNode: IVGTreeNode); dispid 1610743836;
    property Handle: Integer readonly dispid 1610743837;
    property Name: WideString dispid 1610743838;
  end;

// *********************************************************************//
// Interface: IVGTreeNodes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580090-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTreeNodes = interface(IDispatch)
    ['{B0580090-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(Index: Integer): IVGTreeNode; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: Integer]: IVGTreeNode read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGTreeNodesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580090-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTreeNodesDisp = dispinterface
    ['{B0580090-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[Index: Integer]: IVGTreeNode readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IVGEPS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A0-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEPS = interface(IDispatch)
    ['{B05800A0-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_PreviewBitmap: IVGBitmap; safecall;
    function Get_Data: PSafeArray; safecall;
    function Get_DataAsString: WideString; safecall;
    function Get_CropEnvelope: IVGCurve; safecall;
    procedure ResetCropEnvelope; safecall;
    function Get_CropEnvelopeModified: WordBool; safecall;
    function Get_BoundingBoxPath: IVGCurve; safecall;
    function Get_LinkFileName: WideString; safecall;
    procedure Set_LinkFileName(const pVal: WideString); safecall;
    function Get_DCSFileNames: PSafeArray; safecall;
    property PreviewBitmap: IVGBitmap read Get_PreviewBitmap;
    property Data: PSafeArray read Get_Data;
    property DataAsString: WideString read Get_DataAsString;
    property CropEnvelope: IVGCurve read Get_CropEnvelope;
    property CropEnvelopeModified: WordBool read Get_CropEnvelopeModified;
    property BoundingBoxPath: IVGCurve read Get_BoundingBoxPath;
    property LinkFileName: WideString read Get_LinkFileName write Set_LinkFileName;
    property DCSFileNames: PSafeArray read Get_DCSFileNames;
  end;

// *********************************************************************//
// DispIntf:  IVGEPSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A0-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGEPSDisp = dispinterface
    ['{B05800A0-9AA4-44FD-9547-4F91EB757AC4}']
    property PreviewBitmap: IVGBitmap readonly dispid 1610743808;
    property Data: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property DataAsString: WideString readonly dispid 1610743810;
    property CropEnvelope: IVGCurve readonly dispid 1610743811;
    procedure ResetCropEnvelope; dispid 1610743812;
    property CropEnvelopeModified: WordBool readonly dispid 1610743813;
    property BoundingBoxPath: IVGCurve readonly dispid 1610743814;
    property LinkFileName: WideString dispid 1610743815;
    property DCSFileNames: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGSpread
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A5-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSpread = interface(IDispatch)
    ['{B05800A5-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Index: Integer; safecall;
    function Get_SizeWidth: Double; safecall;
    function Get_SizeHeight: Double; safecall;
    function Get_LeftX: Double; safecall;
    function Get_RightX: Double; safecall;
    function Get_TopY: Double; safecall;
    function Get_BottomY: Double; safecall;
    function Get_CenterX: Double; safecall;
    function Get_CenterY: Double; safecall;
    function Get_BoundingBox: IVGRect; safecall;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double); safecall;
    function Get_Pages: IVGPages; safecall;
    function Get_Next: IVGSpread; safecall;
    function Get_Previous: IVGSpread; safecall;
    function Get_Layers: IVGLayers; safecall;
    function Get_AllLayers: IVGLayers; safecall;
    function Get_ActiveLayer: IVGLayer; safecall;
    function Get_Shapes: IVGShapes; safecall;
    function Get_SelectableShapes: IVGShapes; safecall;
    function CreateLayer(const LayerName: WideString): IVGLayer; safecall;
    function Get_Guides(Type_: cdrGuideType): IVGShapeRange; safecall;
    function Get_TreeNode: IVGTreeNode; safecall;
    function Get_GuidesLayer: IVGLayer; safecall;
    function Get_DesktopLayer: IVGLayer; safecall;
    function Get_GridLayer: IVGLayer; safecall;
    property Index: Integer read Get_Index;
    property SizeWidth: Double read Get_SizeWidth;
    property SizeHeight: Double read Get_SizeHeight;
    property LeftX: Double read Get_LeftX;
    property RightX: Double read Get_RightX;
    property TopY: Double read Get_TopY;
    property BottomY: Double read Get_BottomY;
    property CenterX: Double read Get_CenterX;
    property CenterY: Double read Get_CenterY;
    property BoundingBox: IVGRect read Get_BoundingBox;
    property Pages: IVGPages read Get_Pages;
    property Next: IVGSpread read Get_Next;
    property Previous: IVGSpread read Get_Previous;
    property Layers: IVGLayers read Get_Layers;
    property AllLayers: IVGLayers read Get_AllLayers;
    property ActiveLayer: IVGLayer read Get_ActiveLayer;
    property Shapes: IVGShapes read Get_Shapes;
    property SelectableShapes: IVGShapes read Get_SelectableShapes;
    property Guides[Type_: cdrGuideType]: IVGShapeRange read Get_Guides;
    property TreeNode: IVGTreeNode read Get_TreeNode;
    property GuidesLayer: IVGLayer read Get_GuidesLayer;
    property DesktopLayer: IVGLayer read Get_DesktopLayer;
    property GridLayer: IVGLayer read Get_GridLayer;
  end;

// *********************************************************************//
// DispIntf:  IVGSpreadDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A5-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSpreadDisp = dispinterface
    ['{B05800A5-9AA4-44FD-9547-4F91EB757AC4}']
    property Index: Integer readonly dispid 1610743808;
    property SizeWidth: Double readonly dispid 1610743809;
    property SizeHeight: Double readonly dispid 1610743810;
    property LeftX: Double readonly dispid 1610743811;
    property RightX: Double readonly dispid 1610743812;
    property TopY: Double readonly dispid 1610743813;
    property BottomY: Double readonly dispid 1610743814;
    property CenterX: Double readonly dispid 1610743815;
    property CenterY: Double readonly dispid 1610743816;
    property BoundingBox: IVGRect readonly dispid 1610743817;
    procedure GetBoundingBox(out x: Double; out y: Double; out Width: Double; out Height: Double); dispid 1610743818;
    property Pages: IVGPages readonly dispid 1610743819;
    property Next: IVGSpread readonly dispid 1610743820;
    property Previous: IVGSpread readonly dispid 1610743821;
    property Layers: IVGLayers readonly dispid 1610743822;
    property AllLayers: IVGLayers readonly dispid 1610743823;
    property ActiveLayer: IVGLayer readonly dispid 1610743824;
    property Shapes: IVGShapes readonly dispid 1610743825;
    property SelectableShapes: IVGShapes readonly dispid 1610743826;
    function CreateLayer(const LayerName: WideString): IVGLayer; dispid 1610743827;
    property Guides[Type_: cdrGuideType]: IVGShapeRange readonly dispid 1610743828;
    property TreeNode: IVGTreeNode readonly dispid 1610743829;
    property GuidesLayer: IVGLayer readonly dispid 1610743830;
    property DesktopLayer: IVGLayer readonly dispid 1610743831;
    property GridLayer: IVGLayer readonly dispid 1610743832;
  end;

// *********************************************************************//
// Interface: IVGBSpline
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AD-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBSpline = interface(IDispatch)
    ['{B05800AD-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ControlPoints: IVGBSplineControlPoints; safecall;
    function Get_Closed: WordBool; safecall;
    procedure Set_Closed(pVal: WordBool); safecall;
    procedure InsertControlPoint(Index: Integer; x: Double; y: Double; Clamped: WordBool); safecall;
    procedure InsertControlPoints(Index: Integer; HowMany: Integer; x: Double; y: Double; 
                                  Clamped: WordBool); safecall;
    function GetCopy: IVGBSpline; safecall;
    procedure CopyAssign(const rhs: IVGBSpline); safecall;
    property ControlPoints: IVGBSplineControlPoints read Get_ControlPoints;
    property Closed: WordBool read Get_Closed write Set_Closed;
  end;

// *********************************************************************//
// DispIntf:  IVGBSplineDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AD-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBSplineDisp = dispinterface
    ['{B05800AD-9AA4-44FD-9547-4F91EB757AC4}']
    property ControlPoints: IVGBSplineControlPoints readonly dispid 1610743808;
    property Closed: WordBool dispid 1610743809;
    procedure InsertControlPoint(Index: Integer; x: Double; y: Double; Clamped: WordBool); dispid 1610743811;
    procedure InsertControlPoints(Index: Integer; HowMany: Integer; x: Double; y: Double; 
                                  Clamped: WordBool); dispid 1610743812;
    function GetCopy: IVGBSpline; dispid 1610743813;
    procedure CopyAssign(const rhs: IVGBSpline); dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGBSplineControlPoints
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AF-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBSplineControlPoints = interface(IDispatch)
    ['{B05800AF-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_First: IVGBSplineControlPoint; safecall;
    function Get_Last: IVGBSplineControlPoint; safecall;
    function Get_Item(Index: Integer): IVGBSplineControlPoint; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure Resize(HowMany: Integer); safecall;
    property First: IVGBSplineControlPoint read Get_First;
    property Last: IVGBSplineControlPoint read Get_Last;
    property Item[Index: Integer]: IVGBSplineControlPoint read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGBSplineControlPointsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AF-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBSplineControlPointsDisp = dispinterface
    ['{B05800AF-9AA4-44FD-9547-4F91EB757AC4}']
    property First: IVGBSplineControlPoint readonly dispid 1610743808;
    property Last: IVGBSplineControlPoint readonly dispid 1610743809;
    property Item[Index: Integer]: IVGBSplineControlPoint readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743811;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure Resize(HowMany: Integer); dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGBSplineControlPoint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AE-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBSplineControlPoint = interface(IDispatch)
    ['{B05800AE-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_x: Double; safecall;
    procedure Set_x(pVal: Double); safecall;
    function Get_y: Double; safecall;
    procedure Set_y(pVal: Double); safecall;
    function Get_Clamped: WordBool; safecall;
    procedure Set_Clamped(pVal: WordBool); safecall;
    procedure Move(x: Double; y: Double); safecall;
    procedure Delete; safecall;
    procedure GetPosition(out x: Double; out y: Double); safecall;
    procedure SetPosition(x: Double; y: Double); safecall;
    procedure SetProperties(x: Double; y: Double; Clamped: WordBool); safecall;
    function Get_Index: Integer; safecall;
    property x: Double read Get_x write Set_x;
    property y: Double read Get_y write Set_y;
    property Clamped: WordBool read Get_Clamped write Set_Clamped;
    property Index: Integer read Get_Index;
  end;

// *********************************************************************//
// DispIntf:  IVGBSplineControlPointDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800AE-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGBSplineControlPointDisp = dispinterface
    ['{B05800AE-9AA4-44FD-9547-4F91EB757AC4}']
    property x: Double dispid 1610743808;
    property y: Double dispid 1610743810;
    property Clamped: WordBool dispid 1610743812;
    procedure Move(x: Double; y: Double); dispid 1610743814;
    procedure Delete; dispid 1610743815;
    procedure GetPosition(out x: Double; out y: Double); dispid 1610743816;
    procedure SetPosition(x: Double; y: Double); dispid 1610743817;
    procedure SetProperties(x: Double; y: Double; Clamped: WordBool); dispid 1610743818;
    property Index: Integer readonly dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IVGStructImportOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580085-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructImportOptions = interface(IDispatch)
    ['{B0580085-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_LinkBitmapExternally: WordBool; safecall;
    procedure Set_LinkBitmapExternally(pVal: WordBool); safecall;
    function Get_CombineMultilayerBitmaps: WordBool; safecall;
    procedure Set_CombineMultilayerBitmaps(pVal: WordBool); safecall;
    function Get_ExtractICCProfile: WordBool; safecall;
    procedure Set_ExtractICCProfile(pVal: WordBool); safecall;
    function Get_ICCFileName: WideString; safecall;
    procedure Set_ICCFileName(const pVal: WideString); safecall;
    function Get_MaintainLayers: WordBool; safecall;
    procedure Set_MaintainLayers(pVal: WordBool); safecall;
    function Get_UseOPILinks: WordBool; safecall;
    procedure Set_UseOPILinks(pVal: WordBool); safecall;
    function Get_DetectWatermark: WordBool; safecall;
    procedure Set_DetectWatermark(pVal: WordBool); safecall;
    function Get_Mode: cdrImportMode; safecall;
    procedure Set_Mode(pVal: cdrImportMode); safecall;
    function Get_CustomData: Integer; safecall;
    procedure Set_CustomData(pVal: Integer); safecall;
    function Get_ImageIndex: Integer; safecall;
    procedure Set_ImageIndex(pVal: Integer); safecall;
    function Get_CropHandler: IImportCropHandler; safecall;
    procedure _Set_CropHandler(var ppVal: IImportCropHandler); safecall;
    function Get_ResampleHandler: IImportResampleHandler; safecall;
    procedure _Set_ResampleHandler(var ppVal: IImportResampleHandler); safecall;
    function Get_TextFormatting: cdrImportTextFormatting; safecall;
    procedure Set_TextFormatting(pVal: cdrImportTextFormatting); safecall;
    function Get_TableOutline: cdrImportTableOutline; safecall;
    procedure Set_TableOutline(pVal: cdrImportTableOutline); safecall;
    function Get_CodePage: Integer; safecall;
    procedure Set_CodePage(pVal: Integer); safecall;
    function Get_ResampleWidth: Integer; safecall;
    procedure Set_ResampleWidth(pVal: Integer); safecall;
    function Get_ResampleHeight: Integer; safecall;
    procedure Set_ResampleHeight(pVal: Integer); safecall;
    function Get_CropLeft: Integer; safecall;
    procedure Set_CropLeft(pVal: Integer); safecall;
    function Get_CropTop: Integer; safecall;
    procedure Set_CropTop(pVal: Integer); safecall;
    function Get_CropWidth: Integer; safecall;
    procedure Set_CropWidth(pVal: Integer); safecall;
    function Get_CropHeight: Integer; safecall;
    procedure Set_CropHeight(pVal: Integer); safecall;
    function Get_ResampleDpiX: Integer; safecall;
    procedure Set_ResampleDpiX(pVal: Integer); safecall;
    function Get_ResampleDpiY: Integer; safecall;
    procedure Set_ResampleDpiY(pVal: Integer); safecall;
    function Get_ForceCMYKBlackText: WordBool; safecall;
    procedure Set_ForceCMYKBlackText(pVal: WordBool); safecall;
    function Get_ConvertTablesToText: WordBool; safecall;
    procedure Set_ConvertTablesToText(pVal: WordBool); safecall;
    function Get_TableColumnDelimiter: WideString; safecall;
    procedure Set_TableColumnDelimiter(const pVal: WideString); safecall;
    function Get_ColorConversionOptions: IVGStructColorConversionOptions; safecall;
    property LinkBitmapExternally: WordBool read Get_LinkBitmapExternally write Set_LinkBitmapExternally;
    property CombineMultilayerBitmaps: WordBool read Get_CombineMultilayerBitmaps write Set_CombineMultilayerBitmaps;
    property ExtractICCProfile: WordBool read Get_ExtractICCProfile write Set_ExtractICCProfile;
    property ICCFileName: WideString read Get_ICCFileName write Set_ICCFileName;
    property MaintainLayers: WordBool read Get_MaintainLayers write Set_MaintainLayers;
    property UseOPILinks: WordBool read Get_UseOPILinks write Set_UseOPILinks;
    property DetectWatermark: WordBool read Get_DetectWatermark write Set_DetectWatermark;
    property Mode: cdrImportMode read Get_Mode write Set_Mode;
    property CustomData: Integer read Get_CustomData write Set_CustomData;
    property ImageIndex: Integer read Get_ImageIndex write Set_ImageIndex;
    property CropHandler: IImportCropHandler read Get_CropHandler;
    property ResampleHandler: IImportResampleHandler read Get_ResampleHandler;
    property TextFormatting: cdrImportTextFormatting read Get_TextFormatting write Set_TextFormatting;
    property TableOutline: cdrImportTableOutline read Get_TableOutline write Set_TableOutline;
    property CodePage: Integer read Get_CodePage write Set_CodePage;
    property ResampleWidth: Integer read Get_ResampleWidth write Set_ResampleWidth;
    property ResampleHeight: Integer read Get_ResampleHeight write Set_ResampleHeight;
    property CropLeft: Integer read Get_CropLeft write Set_CropLeft;
    property CropTop: Integer read Get_CropTop write Set_CropTop;
    property CropWidth: Integer read Get_CropWidth write Set_CropWidth;
    property CropHeight: Integer read Get_CropHeight write Set_CropHeight;
    property ResampleDpiX: Integer read Get_ResampleDpiX write Set_ResampleDpiX;
    property ResampleDpiY: Integer read Get_ResampleDpiY write Set_ResampleDpiY;
    property ForceCMYKBlackText: WordBool read Get_ForceCMYKBlackText write Set_ForceCMYKBlackText;
    property ConvertTablesToText: WordBool read Get_ConvertTablesToText write Set_ConvertTablesToText;
    property TableColumnDelimiter: WideString read Get_TableColumnDelimiter write Set_TableColumnDelimiter;
    property ColorConversionOptions: IVGStructColorConversionOptions read Get_ColorConversionOptions;
  end;

// *********************************************************************//
// DispIntf:  IVGStructImportOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580085-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructImportOptionsDisp = dispinterface
    ['{B0580085-9AA4-44FD-9547-4F91EB757AC4}']
    property LinkBitmapExternally: WordBool dispid 1610743808;
    property CombineMultilayerBitmaps: WordBool dispid 1610743810;
    property ExtractICCProfile: WordBool dispid 1610743812;
    property ICCFileName: WideString dispid 1610743814;
    property MaintainLayers: WordBool dispid 1610743816;
    property UseOPILinks: WordBool dispid 1610743818;
    property DetectWatermark: WordBool dispid 1610743820;
    property Mode: cdrImportMode dispid 1610743822;
    property CustomData: Integer dispid 1610743824;
    property ImageIndex: Integer dispid 1610743826;
    property CropHandler: IImportCropHandler dispid 1610743828;
    property ResampleHandler: IImportResampleHandler dispid 1610743830;
    property TextFormatting: cdrImportTextFormatting dispid 1610743832;
    property TableOutline: cdrImportTableOutline dispid 1610743834;
    property CodePage: Integer dispid 1610743836;
    property ResampleWidth: Integer dispid 1610743838;
    property ResampleHeight: Integer dispid 1610743840;
    property CropLeft: Integer dispid 1610743842;
    property CropTop: Integer dispid 1610743844;
    property CropWidth: Integer dispid 1610743846;
    property CropHeight: Integer dispid 1610743848;
    property ResampleDpiX: Integer dispid 1610743850;
    property ResampleDpiY: Integer dispid 1610743852;
    property ForceCMYKBlackText: WordBool dispid 1610743854;
    property ConvertTablesToText: WordBool dispid 1610743856;
    property TableColumnDelimiter: WideString dispid 1610743858;
    property ColorConversionOptions: IVGStructColorConversionOptions readonly dispid 1610743860;
  end;

// *********************************************************************//
// Interface: IImportCropHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5200005-8D23-0001-89E7-0000861EBBD6}
// *********************************************************************//
  IImportCropHandler = interface(IDispatch)
    ['{F5200005-8D23-0001-89E7-0000861EBBD6}']
    function Crop(const Options: IStructImportCropOptions): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IImportCropHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5200005-8D23-0001-89E7-0000861EBBD6}
// *********************************************************************//
  IImportCropHandlerDisp = dispinterface
    ['{F5200005-8D23-0001-89E7-0000861EBBD6}']
    function Crop(const Options: IStructImportCropOptions): WordBool; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IStructImportCropOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580087-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IStructImportCropOptions = interface(IDispatch)
    ['{B0580087-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_FileName: WideString; safecall;
    function Get_FilterID: Integer; safecall;
    function Get_CustomData: Integer; safecall;
    function Get_ImageWidth: Integer; safecall;
    function Get_ImageHeight: Integer; safecall;
    function Get_DpiX: Integer; safecall;
    function Get_DpiY: Integer; safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pVal: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(pVal: Integer); safecall;
    property FileName: WideString read Get_FileName;
    property FilterID: Integer read Get_FilterID;
    property CustomData: Integer read Get_CustomData;
    property ImageWidth: Integer read Get_ImageWidth;
    property ImageHeight: Integer read Get_ImageHeight;
    property DpiX: Integer read Get_DpiX;
    property DpiY: Integer read Get_DpiY;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
  end;

// *********************************************************************//
// DispIntf:  IStructImportCropOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580087-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IStructImportCropOptionsDisp = dispinterface
    ['{B0580087-9AA4-44FD-9547-4F91EB757AC4}']
    property FileName: WideString readonly dispid 1610743808;
    property FilterID: Integer readonly dispid 1610743809;
    property CustomData: Integer readonly dispid 1610743810;
    property ImageWidth: Integer readonly dispid 1610743811;
    property ImageHeight: Integer readonly dispid 1610743812;
    property DpiX: Integer readonly dispid 1610743813;
    property DpiY: Integer readonly dispid 1610743814;
    property Width: Integer dispid 1610743815;
    property Height: Integer dispid 1610743817;
    property Left: Integer dispid 1610743819;
    property Top: Integer dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IImportResampleHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5200004-8D23-0001-89E7-0000861EBBD6}
// *********************************************************************//
  IImportResampleHandler = interface(IDispatch)
    ['{F5200004-8D23-0001-89E7-0000861EBBD6}']
    function Resample(const Options: IStructImportResampleOptions): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IImportResampleHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5200004-8D23-0001-89E7-0000861EBBD6}
// *********************************************************************//
  IImportResampleHandlerDisp = dispinterface
    ['{F5200004-8D23-0001-89E7-0000861EBBD6}']
    function Resample(const Options: IStructImportResampleOptions): WordBool; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IStructImportResampleOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580086-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IStructImportResampleOptions = interface(IDispatch)
    ['{B0580086-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_FileName: WideString; safecall;
    function Get_FilterID: Integer; safecall;
    function Get_CustomData: Integer; safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_DpiX: Integer; safecall;
    procedure Set_DpiX(pVal: Integer); safecall;
    function Get_DpiY: Integer; safecall;
    procedure Set_DpiY(pVal: Integer); safecall;
    property FileName: WideString read Get_FileName;
    property FilterID: Integer read Get_FilterID;
    property CustomData: Integer read Get_CustomData;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property DpiX: Integer read Get_DpiX write Set_DpiX;
    property DpiY: Integer read Get_DpiY write Set_DpiY;
  end;

// *********************************************************************//
// DispIntf:  IStructImportResampleOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580086-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IStructImportResampleOptionsDisp = dispinterface
    ['{B0580086-9AA4-44FD-9547-4F91EB757AC4}']
    property FileName: WideString readonly dispid 1610743808;
    property FilterID: Integer readonly dispid 1610743809;
    property CustomData: Integer readonly dispid 1610743810;
    property Width: Integer dispid 1610743811;
    property Height: Integer dispid 1610743813;
    property DpiX: Integer dispid 1610743815;
    property DpiY: Integer dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGStructColorConversionOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B2-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructColorConversionOptions = interface(IDispatch)
    ['{B05800B2-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ColorPolicy: IVGColorManagementPolicy; safecall;
    function Get_SourceColorProfileList: WideString; safecall;
    procedure Set_SourceColorProfileList(const pVal: WideString); safecall;
    function Get_TargetColorProfileList: WideString; safecall;
    procedure Set_TargetColorProfileList(const pVal: WideString); safecall;
    function Get_ColorConversionHandler: IColorConversionHandler; safecall;
    procedure _Set_ColorConversionHandler(var ppVal: IColorConversionHandler); safecall;
    property ColorPolicy: IVGColorManagementPolicy read Get_ColorPolicy;
    property SourceColorProfileList: WideString read Get_SourceColorProfileList write Set_SourceColorProfileList;
    property TargetColorProfileList: WideString read Get_TargetColorProfileList write Set_TargetColorProfileList;
    property ColorConversionHandler: IColorConversionHandler read Get_ColorConversionHandler;
  end;

// *********************************************************************//
// DispIntf:  IVGStructColorConversionOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B2-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructColorConversionOptionsDisp = dispinterface
    ['{B05800B2-9AA4-44FD-9547-4F91EB757AC4}']
    property ColorPolicy: IVGColorManagementPolicy readonly dispid 1610743808;
    property SourceColorProfileList: WideString dispid 1610743809;
    property TargetColorProfileList: WideString dispid 1610743811;
    property ColorConversionHandler: IColorConversionHandler dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGColorManagementPolicy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B1-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorManagementPolicy = interface(IDispatch)
    ['{B05800B1-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ActionForRGB: clrColorPolicyAction; safecall;
    procedure Set_ActionForRGB(pVal: clrColorPolicyAction); safecall;
    function Get_ActionForCMYK: clrColorPolicyAction; safecall;
    procedure Set_ActionForCMYK(pVal: clrColorPolicyAction); safecall;
    function Get_ActionForGrayscale: clrColorPolicyAction; safecall;
    procedure Set_ActionForGrayscale(pVal: clrColorPolicyAction); safecall;
    function Get_WarnOnMismatchedProfiles: WordBool; safecall;
    procedure Set_WarnOnMismatchedProfiles(pVal: WordBool); safecall;
    function Get_WarnOnMissingProfiles: WordBool; safecall;
    procedure Set_WarnOnMissingProfiles(pVal: WordBool); safecall;
    property ActionForRGB: clrColorPolicyAction read Get_ActionForRGB write Set_ActionForRGB;
    property ActionForCMYK: clrColorPolicyAction read Get_ActionForCMYK write Set_ActionForCMYK;
    property ActionForGrayscale: clrColorPolicyAction read Get_ActionForGrayscale write Set_ActionForGrayscale;
    property WarnOnMismatchedProfiles: WordBool read Get_WarnOnMismatchedProfiles write Set_WarnOnMismatchedProfiles;
    property WarnOnMissingProfiles: WordBool read Get_WarnOnMissingProfiles write Set_WarnOnMissingProfiles;
  end;

// *********************************************************************//
// DispIntf:  IVGColorManagementPolicyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B1-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorManagementPolicyDisp = dispinterface
    ['{B05800B1-9AA4-44FD-9547-4F91EB757AC4}']
    property ActionForRGB: clrColorPolicyAction dispid 1610743808;
    property ActionForCMYK: clrColorPolicyAction dispid 1610743810;
    property ActionForGrayscale: clrColorPolicyAction dispid 1610743812;
    property WarnOnMismatchedProfiles: WordBool dispid 1610743814;
    property WarnOnMissingProfiles: WordBool dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IColorConversionHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7CB12D17-ECA6-0E87-46F7-E4D31C0D0500}
// *********************************************************************//
  IColorConversionHandler = interface(IDispatch)
    ['{7CB12D17-ECA6-0E87-46F7-E4D31C0D0500}']
  end;

// *********************************************************************//
// DispIntf:  IColorConversionHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7CB12D17-ECA6-0E87-46F7-E4D31C0D0500}
// *********************************************************************//
  IColorConversionHandlerDisp = dispinterface
    ['{7CB12D17-ECA6-0E87-46F7-E4D31C0D0500}']
  end;

// *********************************************************************//
// Interface: IVGSymbolLibrary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580070-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolLibrary = interface(IDispatch)
    ['{B0580070-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Symbols: IVGSymbolDefinitions; safecall;
    function Get_Name: WideString; safecall;
    function Get_FilePath: WideString; safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Delete; safecall;
    procedure PurgeUnusedSymbols; safecall;
    function Paste(const Name: WideString): IVGSymbolDefinition; safecall;
    property Symbols: IVGSymbolDefinitions read Get_Symbols;
    property Name: WideString read Get_Name;
    property FilePath: WideString read Get_FilePath;
    property ReadOnly: WordBool read Get_ReadOnly;
  end;

// *********************************************************************//
// DispIntf:  IVGSymbolLibraryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580070-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolLibraryDisp = dispinterface
    ['{B0580070-9AA4-44FD-9547-4F91EB757AC4}']
    property Symbols: IVGSymbolDefinitions readonly dispid 1610743808;
    property Name: WideString readonly dispid 1610743809;
    property FilePath: WideString readonly dispid 1610743810;
    property ReadOnly: WordBool readonly dispid 1610743811;
    procedure Delete; dispid 1610743812;
    procedure PurgeUnusedSymbols; dispid 1610743813;
    function Paste(const Name: WideString): IVGSymbolDefinition; dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGStructPasteOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B5-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructPasteOptions = interface(IDispatch)
    ['{B05800B5-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ColorConversionOptions: IVGStructColorConversionOptions; safecall;
    property ColorConversionOptions: IVGStructColorConversionOptions read Get_ColorConversionOptions;
  end;

// *********************************************************************//
// DispIntf:  IVGStructPasteOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B5-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructPasteOptionsDisp = dispinterface
    ['{B05800B5-9AA4-44FD-9547-4F91EB757AC4}']
    property ColorConversionOptions: IVGStructColorConversionOptions readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IVGWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580081-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWindow = interface(IDispatch)
    ['{B0580081-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IVGWindows; safecall;
    procedure Activate; safecall;
    procedure Close; safecall;
    function Get_FullScreen: WordBool; safecall;
    procedure Set_FullScreen(FullScreen: WordBool); safecall;
    function Get_Page: IDispatch; safecall;
    function Get_Active: WordBool; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pVal: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(pVal: Integer); safecall;
    function Get_WindowState: cdrWindowState; safecall;
    procedure Set_WindowState(pVal: cdrWindowState); safecall;
    function Get_Previous: IVGWindow; safecall;
    function Get_Next: IVGWindow; safecall;
    function Get_Index: Integer; safecall;
    function NewWindow: IVGWindow; safecall;
    procedure Refresh; safecall;
    function Get_Document: IVGDocument; safecall;
    function Get_ActiveView: IVGActiveView; safecall;
    procedure ScreenToDocument(XScreen: Integer; YScreen: Integer; out XDoc: Double; 
                               out YDoc: Double); safecall;
    procedure DocumentToScreen(XDoc: Double; YDoc: Double; out XScreen: Integer; 
                               out YScreen: Integer); safecall;
    function Get_Handle: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IVGWindows read Get_Parent;
    property FullScreen: WordBool read Get_FullScreen write Set_FullScreen;
    property Page: IDispatch read Get_Page;
    property Active: WordBool read Get_Active;
    property Caption: WideString read Get_Caption;
    property Height: Integer read Get_Height write Set_Height;
    property Width: Integer read Get_Width write Set_Width;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property WindowState: cdrWindowState read Get_WindowState write Set_WindowState;
    property Previous: IVGWindow read Get_Previous;
    property Next: IVGWindow read Get_Next;
    property Index: Integer read Get_Index;
    property Document: IVGDocument read Get_Document;
    property ActiveView: IVGActiveView read Get_ActiveView;
    property Handle: Integer read Get_Handle;
  end;

// *********************************************************************//
// DispIntf:  IVGWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580081-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWindowDisp = dispinterface
    ['{B0580081-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IVGWindows readonly dispid 1610743809;
    procedure Activate; dispid 1610743810;
    procedure Close; dispid 1610743811;
    property FullScreen: WordBool dispid 1610743812;
    property Page: IDispatch readonly dispid 1610743814;
    property Active: WordBool readonly dispid 1610743815;
    property Caption: WideString readonly dispid 1610743816;
    property Height: Integer dispid 1610743817;
    property Width: Integer dispid 1610743819;
    property Left: Integer dispid 1610743821;
    property Top: Integer dispid 1610743823;
    property WindowState: cdrWindowState dispid 1610743825;
    property Previous: IVGWindow readonly dispid 1610743827;
    property Next: IVGWindow readonly dispid 1610743828;
    property Index: Integer readonly dispid 1610743829;
    function NewWindow: IVGWindow; dispid 1610743830;
    procedure Refresh; dispid 1610743831;
    property Document: IVGDocument readonly dispid 1610743832;
    property ActiveView: IVGActiveView readonly dispid 1610743833;
    procedure ScreenToDocument(XScreen: Integer; YScreen: Integer; out XDoc: Double; 
                               out YDoc: Double); dispid 1610743834;
    procedure DocumentToScreen(XDoc: Double; YDoc: Double; out XScreen: Integer; 
                               out YScreen: Integer); dispid 1610743835;
    property Handle: Integer readonly dispid 1610743836;
  end;

// *********************************************************************//
// Interface: IVGWindows
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580082-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWindows = interface(IDispatch)
    ['{B0580082-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Item(Index: Integer): IVGWindow; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    procedure CloseAll; safecall;
    procedure Arrange(Style: cdrWindowArrangeStyle); safecall;
    procedure Refresh; safecall;
    function FindWindow(const Caption: WideString): IVGWindow; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Item[Index: Integer]: IVGWindow read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGWindowsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580082-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWindowsDisp = dispinterface
    ['{B0580082-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Item[Index: Integer]: IVGWindow readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    procedure CloseAll; dispid 1610743813;
    procedure Arrange(Style: cdrWindowArrangeStyle); dispid 1610743814;
    procedure Refresh; dispid 1610743815;
    function FindWindow(const Caption: WideString): IVGWindow; dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IVGActiveView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGActiveView = interface(IDispatch)
    ['{B058000A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGWindow; safecall;
    function Get_type_: cdrViewType; safecall;
    procedure Set_type_(pType: cdrViewType); safecall;
    function Get_OriginX: Double; safecall;
    procedure Set_OriginX(pVal: Double); safecall;
    function Get_OriginY: Double; safecall;
    procedure Set_OriginY(pVal: Double); safecall;
    function Get_Zoom: Double; safecall;
    procedure Set_Zoom(pVal: Double); safecall;
    procedure ToFitPage; safecall;
    procedure ToFitPageWidth; safecall;
    procedure ToFitPageHeight; safecall;
    procedure ToFitShape(const Shape: IVGShape); safecall;
    procedure ToFitSelection; safecall;
    procedure ToFitArea(Left: Double; Top: Double; Right: Double; Bottom: Double); safecall;
    procedure ToFitAllObjects; safecall;
    procedure ToFitShapeRange(const ShapeRange: IVGShapeRange); safecall;
    procedure SetViewPoint(x: Double; y: Double; Zoom: Double); safecall;
    procedure SetActualSize; safecall;
    procedure ZoomIn; safecall;
    procedure ZoomInAtPoint(x: Double; y: Double); safecall;
    procedure ZoomOut; safecall;
    procedure GetViewArea(out x: Double; out y: Double; out Width: Double; out Height: Double); safecall;
    procedure SetViewArea(x: Double; y: Double; Width: Double; Height: Double); safecall;
    function Get_SimulateOverprints: WordBool; safecall;
    procedure Set_SimulateOverprints(pVal: WordBool); safecall;
    function Get_ProofColorSettings: IVGProofColorSettings; safecall;
    procedure Set_ProofColorSettings(const ppVal: IVGProofColorSettings); safecall;
    function Get_ShowProofColors: WordBool; safecall;
    procedure Set_ShowProofColors(pVal: WordBool); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGWindow read Get_Parent;
    property type_: cdrViewType read Get_type_ write Set_type_;
    property OriginX: Double read Get_OriginX write Set_OriginX;
    property OriginY: Double read Get_OriginY write Set_OriginY;
    property Zoom: Double read Get_Zoom write Set_Zoom;
    property SimulateOverprints: WordBool read Get_SimulateOverprints write Set_SimulateOverprints;
    property ProofColorSettings: IVGProofColorSettings read Get_ProofColorSettings write Set_ProofColorSettings;
    property ShowProofColors: WordBool read Get_ShowProofColors write Set_ShowProofColors;
  end;

// *********************************************************************//
// DispIntf:  IVGActiveViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGActiveViewDisp = dispinterface
    ['{B058000A-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGWindow readonly dispid 1610743809;
    property type_: cdrViewType dispid 1610743810;
    property OriginX: Double dispid 1610743812;
    property OriginY: Double dispid 1610743814;
    property Zoom: Double dispid 1610743816;
    procedure ToFitPage; dispid 1610743818;
    procedure ToFitPageWidth; dispid 1610743819;
    procedure ToFitPageHeight; dispid 1610743820;
    procedure ToFitShape(const Shape: IVGShape); dispid 1610743821;
    procedure ToFitSelection; dispid 1610743822;
    procedure ToFitArea(Left: Double; Top: Double; Right: Double; Bottom: Double); dispid 1610743823;
    procedure ToFitAllObjects; dispid 1610743824;
    procedure ToFitShapeRange(const ShapeRange: IVGShapeRange); dispid 1610743825;
    procedure SetViewPoint(x: Double; y: Double; Zoom: Double); dispid 1610743826;
    procedure SetActualSize; dispid 1610743827;
    procedure ZoomIn; dispid 1610743828;
    procedure ZoomInAtPoint(x: Double; y: Double); dispid 1610743829;
    procedure ZoomOut; dispid 1610743830;
    procedure GetViewArea(out x: Double; out y: Double; out Width: Double; out Height: Double); dispid 1610743831;
    procedure SetViewArea(x: Double; y: Double; Width: Double; Height: Double); dispid 1610743832;
    property SimulateOverprints: WordBool dispid 1610743833;
    property ProofColorSettings: IVGProofColorSettings dispid 1610743835;
    property ShowProofColors: WordBool dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IVGProofColorSettings
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B6-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGProofColorSettings = interface(IDispatch)
    ['{B05800B6-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ColorContext: IVGColorContext; safecall;
    procedure Set_ColorContext(const ppVal: IVGColorContext); safecall;
    function Get_ShowOutOfGamutWarning: WordBool; safecall;
    procedure Set_ShowOutOfGamutWarning(pVal: WordBool); safecall;
    function Get_OutOfGamutColor: IVGColor; safecall;
    procedure Set_OutOfGamutColor(const ppVal: IVGColor); safecall;
    function Get_OutOfGamutTransparency: Double; safecall;
    procedure Set_OutOfGamutTransparency(pVal: Double); safecall;
    function Get_PreserveColorValues: WordBool; safecall;
    procedure Set_PreserveColorValues(pVal: WordBool); safecall;
    function GetCopy: IVGProofColorSettings; safecall;
    procedure CopyAssign(const Source: IVGProofColorSettings); safecall;
    property ColorContext: IVGColorContext read Get_ColorContext write Set_ColorContext;
    property ShowOutOfGamutWarning: WordBool read Get_ShowOutOfGamutWarning write Set_ShowOutOfGamutWarning;
    property OutOfGamutColor: IVGColor read Get_OutOfGamutColor write Set_OutOfGamutColor;
    property OutOfGamutTransparency: Double read Get_OutOfGamutTransparency write Set_OutOfGamutTransparency;
    property PreserveColorValues: WordBool read Get_PreserveColorValues write Set_PreserveColorValues;
  end;

// *********************************************************************//
// DispIntf:  IVGProofColorSettingsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B6-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGProofColorSettingsDisp = dispinterface
    ['{B05800B6-9AA4-44FD-9547-4F91EB757AC4}']
    property ColorContext: IVGColorContext dispid 1610743808;
    property ShowOutOfGamutWarning: WordBool dispid 1610743810;
    property OutOfGamutColor: IVGColor dispid 1610743812;
    property OutOfGamutTransparency: Double dispid 1610743814;
    property PreserveColorValues: WordBool dispid 1610743816;
    function GetCopy: IVGProofColorSettings; dispid 1610743818;
    procedure CopyAssign(const Source: IVGProofColorSettings); dispid 1610743819;
  end;

// *********************************************************************//
// Interface: ICorelScriptTools
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580000-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  ICorelScriptTools = interface(IDispatch)
    ['{B0580000-9AA4-44FD-9547-4F91EB757AC4}']
    function AngleConvert(FromUnit: Integer; ToUnit: Integer; Value: Double): Double; safecall;
    function ASin(Value: Double): Double; safecall;
    procedure BeginWaitCursor; safecall;
    procedure EndWaitCursor; safecall;
    function BuildDate(Year: Integer; Month: Integer; Day: Integer): TDateTime; safecall;
    function BuildTime(Hour: Integer; Minute: Integer; Second: Integer): TDateTime; safecall;
    function Dec(const Hex: WideString): Integer; safecall;
    function FileAttr(const FolderFile: WideString): Integer; safecall;
    function FindFirstFolder(const SearchCriteria: WideString; Attributes: Integer): WideString; safecall;
    function FindNextFolder: WideString; safecall;
    function FormatTime(Time: TDateTime; const Format: WideString): WideString; safecall;
    function FromCentimeters(Value: Double): Double; safecall;
    function FromCiceros(Value: Double): Double; safecall;
    function FromDidots(Value: Double): Double; safecall;
    function FromInches(Value: Double): Double; safecall;
    function FromPicas(Value: Double): Double; safecall;
    function FromPoints(Value: Double): Double; safecall;
    function GetAppHandle: Integer; safecall;
    function GetColor(var Red: Integer; var Green: Integer; var Blue: Integer): WordBool; safecall;
    function GetCommandLine: WideString; safecall;
    function GetCurrFolder: WideString; safecall;
    procedure GetDateInfo(Date: TDateTime; out Year: Integer; out Month: Integer; out Day: Integer; 
                          out DayOfWeek: Integer); safecall;
    function GetFileBox(const Filter: WideString; const Title: WideString; Type_: Integer; 
                        const File_: WideString; const Extension: WideString; 
                        const Folder: WideString; const Button: WideString): WideString; safecall;
    function GetFolder(const InitFolder: WideString; const Title: WideString; 
                       ParentWindowHandle: Integer): WideString; safecall;
    function GetFont(var FaceName: WideString; var PointSize: Integer; var Weight: Integer; 
                     var Italic: WordBool; var Underline: WordBool; var StrikeOut: WordBool; 
                     var Red: Integer; var Green: Integer; var Blue: Integer): WordBool; safecall;
    function GetProcessInfo(ProcessHandle: Integer): Integer; safecall;
    function GetScriptFolder: WideString; safecall;
    function GetTempFolder: WideString; safecall;
    procedure GetTimeInfo(Time: TDateTime; out Hour: Integer; out Minute: Integer; 
                          out Second: Integer); safecall;
    function GetType(Expression: OleVariant): Integer; safecall;
    function GetVersion(Option: Integer): Integer; safecall;
    function GetWinHandle: Integer; safecall;
    function Kill(const FileName: WideString): WordBool; safecall;
    function LengthConvert(FromUnit: Integer; ToUnit: Integer; Value: Double): Double; safecall;
    function Log(Value: Double): Double; safecall;
    function MkFolder(const Folder: WideString): WordBool; safecall;
    function RegistryQuery(MainKey: Integer; const SubKey: WideString; const Value: WideString): OleVariant; safecall;
    function Rename(const Src: WideString; const Dst: WideString; Overwrite: Integer): WordBool; safecall;
    function RmFolder(const Folder: WideString): WordBool; safecall;
    function ToCentimeters(Value: Double): Double; safecall;
    function ToCiceros(Value: Double): Double; safecall;
    function ToDidots(Value: Double): Double; safecall;
    function ToInches(Value: Double): Double; safecall;
    function ToPicas(Value: Double): Double; safecall;
    function ToPoints(Value: Double): Double; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICorelScriptToolsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580000-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  ICorelScriptToolsDisp = dispinterface
    ['{B0580000-9AA4-44FD-9547-4F91EB757AC4}']
    function AngleConvert(FromUnit: Integer; ToUnit: Integer; Value: Double): Double; dispid 1610743808;
    function ASin(Value: Double): Double; dispid 1610743809;
    procedure BeginWaitCursor; dispid 1610743810;
    procedure EndWaitCursor; dispid 1610743811;
    function BuildDate(Year: Integer; Month: Integer; Day: Integer): TDateTime; dispid 1610743812;
    function BuildTime(Hour: Integer; Minute: Integer; Second: Integer): TDateTime; dispid 1610743813;
    function Dec(const Hex: WideString): Integer; dispid 1610743814;
    function FileAttr(const FolderFile: WideString): Integer; dispid 1610743815;
    function FindFirstFolder(const SearchCriteria: WideString; Attributes: Integer): WideString; dispid 1610743816;
    function FindNextFolder: WideString; dispid 1610743817;
    function FormatTime(Time: TDateTime; const Format: WideString): WideString; dispid 1610743818;
    function FromCentimeters(Value: Double): Double; dispid 1610743819;
    function FromCiceros(Value: Double): Double; dispid 1610743820;
    function FromDidots(Value: Double): Double; dispid 1610743821;
    function FromInches(Value: Double): Double; dispid 1610743822;
    function FromPicas(Value: Double): Double; dispid 1610743823;
    function FromPoints(Value: Double): Double; dispid 1610743824;
    function GetAppHandle: Integer; dispid 1610743825;
    function GetColor(var Red: Integer; var Green: Integer; var Blue: Integer): WordBool; dispid 1610743826;
    function GetCommandLine: WideString; dispid 1610743827;
    function GetCurrFolder: WideString; dispid 1610743828;
    procedure GetDateInfo(Date: TDateTime; out Year: Integer; out Month: Integer; out Day: Integer; 
                          out DayOfWeek: Integer); dispid 1610743829;
    function GetFileBox(const Filter: WideString; const Title: WideString; Type_: Integer; 
                        const File_: WideString; const Extension: WideString; 
                        const Folder: WideString; const Button: WideString): WideString; dispid 1610743830;
    function GetFolder(const InitFolder: WideString; const Title: WideString; 
                       ParentWindowHandle: Integer): WideString; dispid 1610743831;
    function GetFont(var FaceName: WideString; var PointSize: Integer; var Weight: Integer; 
                     var Italic: WordBool; var Underline: WordBool; var StrikeOut: WordBool; 
                     var Red: Integer; var Green: Integer; var Blue: Integer): WordBool; dispid 1610743832;
    function GetProcessInfo(ProcessHandle: Integer): Integer; dispid 1610743833;
    function GetScriptFolder: WideString; dispid 1610743834;
    function GetTempFolder: WideString; dispid 1610743835;
    procedure GetTimeInfo(Time: TDateTime; out Hour: Integer; out Minute: Integer; 
                          out Second: Integer); dispid 1610743836;
    function GetType(Expression: OleVariant): Integer; dispid 1610743837;
    function GetVersion(Option: Integer): Integer; dispid 1610743838;
    function GetWinHandle: Integer; dispid 1610743839;
    function Kill(const FileName: WideString): WordBool; dispid 1610743840;
    function LengthConvert(FromUnit: Integer; ToUnit: Integer; Value: Double): Double; dispid 1610743841;
    function Log(Value: Double): Double; dispid 1610743842;
    function MkFolder(const Folder: WideString): WordBool; dispid 1610743843;
    function RegistryQuery(MainKey: Integer; const SubKey: WideString; const Value: WideString): OleVariant; dispid 1610743844;
    function Rename(const Src: WideString; const Dst: WideString; Overwrite: Integer): WordBool; dispid 1610743845;
    function RmFolder(const Folder: WideString): WordBool; dispid 1610743846;
    function ToCentimeters(Value: Double): Double; dispid 1610743847;
    function ToCiceros(Value: Double): Double; dispid 1610743848;
    function ToDidots(Value: Double): Double; dispid 1610743849;
    function ToInches(Value: Double): Double; dispid 1610743850;
    function ToPicas(Value: Double): Double; dispid 1610743851;
    function ToPoints(Value: Double): Double; dispid 1610743852;
  end;

// *********************************************************************//
// Interface: IVGWorkspace
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580083-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWorkspace = interface(IDispatch)
    ['{B0580083-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IVGWorkspaces; safecall;
    function Get_Name: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_Default: WordBool; safecall;
    procedure Activate; safecall;
    function Get_Active: WordBool; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IVGWorkspaces read Get_Parent;
    property Name: WideString read Get_Name;
    property Description: WideString read Get_Description;
    property Default: WordBool read Get_Default;
    property Active: WordBool read Get_Active;
  end;

// *********************************************************************//
// DispIntf:  IVGWorkspaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580083-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWorkspaceDisp = dispinterface
    ['{B0580083-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IVGWorkspaces readonly dispid 1610743809;
    property Name: WideString readonly dispid 1610743810;
    property Description: WideString readonly dispid 1610743811;
    property Default: WordBool readonly dispid 1610743812;
    procedure Activate; dispid 1610743813;
    property Active: WordBool readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGWorkspaces
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580084-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWorkspaces = interface(IDispatch)
    ['{B0580084-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGWorkspace; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Item[IndexOrName: OleVariant]: IVGWorkspace read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGWorkspacesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580084-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGWorkspacesDisp = dispinterface
    ['{B0580084-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGWorkspace readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGPalettes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPalettes = interface(IDispatch)
    ['{B058004D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGPalette; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Open(const FileName: WideString): IVGPalette; safecall;
    function OpenFixed(PaletteID: cdrPaletteID): IVGPalette; safecall;
    function CreateFromDocument(const Name: WideString; const FileName: WideString; 
                                Overwrite: WordBool): IVGPalette; safecall;
    function CreateFromSelection(const Name: WideString; const FileName: WideString; 
                                 Overwrite: WordBool): IVGPalette; safecall;
    function Create(const Name: WideString; const FileName: WideString; Overwrite: WordBool): IVGPalette; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Item[IndexOrName: OleVariant]: IVGPalette read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGPalettesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPalettesDisp = dispinterface
    ['{B058004D-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGPalette readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function Open(const FileName: WideString): IVGPalette; dispid 1610743813;
    function OpenFixed(PaletteID: cdrPaletteID): IVGPalette; dispid 1610743814;
    function CreateFromDocument(const Name: WideString; const FileName: WideString; 
                                Overwrite: WordBool): IVGPalette; dispid 1610743815;
    function CreateFromSelection(const Name: WideString; const FileName: WideString; 
                                 Overwrite: WordBool): IVGPalette; dispid 1610743816;
    function Create(const Name: WideString; const FileName: WideString; Overwrite: WordBool): IVGPalette; dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGFontList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580039-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFontList = interface(IDispatch)
    ['{B0580039-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Item(Index: Integer): WideString; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Item[Index: Integer]: WideString read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGFontListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580039-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGFontListDisp = dispinterface
    ['{B0580039-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Item[Index: Integer]: WideString readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGAppWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAppWindow = interface(IDispatch)
    ['{B058000C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    procedure Activate; safecall;
    function Get_Active: WordBool; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const pVal: WideString); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pVal: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pVal: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(pVal: Integer); safecall;
    function Get_WindowState: cdrWindowState; safecall;
    procedure Set_WindowState(pVal: cdrWindowState); safecall;
    function Get_ClientWidth: Integer; safecall;
    function Get_ClientHeight: Integer; safecall;
    function Get_Handle: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Active: WordBool read Get_Active;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Height: Integer read Get_Height write Set_Height;
    property Width: Integer read Get_Width write Set_Width;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property WindowState: cdrWindowState read Get_WindowState write Set_WindowState;
    property ClientWidth: Integer read Get_ClientWidth;
    property ClientHeight: Integer read Get_ClientHeight;
    property Handle: Integer read Get_Handle;
  end;

// *********************************************************************//
// DispIntf:  IVGAppWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAppWindowDisp = dispinterface
    ['{B058000C-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    procedure Activate; dispid 1610743810;
    property Active: WordBool readonly dispid 1610743811;
    property Caption: WideString dispid 1610743812;
    property Height: Integer dispid 1610743814;
    property Width: Integer dispid 1610743816;
    property Left: Integer dispid 1610743818;
    property Top: Integer dispid 1610743820;
    property WindowState: cdrWindowState dispid 1610743822;
    property ClientWidth: Integer readonly dispid 1610743824;
    property ClientHeight: Integer readonly dispid 1610743825;
    property Handle: Integer readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: IVGRecentFiles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580056-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRecentFiles = interface(IDispatch)
    ['{B0580056-9AA4-44FD-9547-4F91EB757AC4}']
    function Add(const Name: WideString; const Path: WideString): IVGRecentFile; safecall;
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Item(Index: Integer): IVGRecentFile; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_Maximum: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Item[Index: Integer]: IVGRecentFile read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Maximum: Integer read Get_Maximum;
  end;

// *********************************************************************//
// DispIntf:  IVGRecentFilesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580056-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRecentFilesDisp = dispinterface
    ['{B0580056-9AA4-44FD-9547-4F91EB757AC4}']
    function Add(const Name: WideString; const Path: WideString): IVGRecentFile; dispid 1610743808;
    property Application: IDispatch readonly dispid 1610743809;
    property Parent: IDispatch readonly dispid 1610743810;
    property Item[Index: Integer]: IVGRecentFile readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743813;
    property Maximum: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGRecentFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580055-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRecentFile = interface(IDispatch)
    ['{B0580055-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Delete; safecall;
    function Open: IDispatch; safecall;
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IVGRecentFiles; safecall;
    function Get_Index: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const pVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pVal: WideString); safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IVGRecentFiles read Get_Parent;
    property Index: Integer read Get_Index;
    property Name: WideString read Get_Name write Set_Name;
    property Path: WideString read Get_Path write Set_Path;
    property FullName: WideString read Get_FullName write Set_FullName;
  end;

// *********************************************************************//
// DispIntf:  IVGRecentFileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580055-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRecentFileDisp = dispinterface
    ['{B0580055-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Delete; dispid 1610743808;
    function Open: IDispatch; dispid 1610743809;
    property Application: IDispatch readonly dispid 1610743810;
    property Parent: IVGRecentFiles readonly dispid 1610743811;
    property Index: Integer readonly dispid 1610743812;
    property Name: WideString dispid 1610743813;
    property Path: WideString dispid 1610743815;
    property FullName: WideString dispid 1610743817;
  end;

// *********************************************************************//
// Interface: IVGArrowHeads
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGArrowHeads = interface(IDispatch)
    ['{B058000E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Item(Index: Integer): IVGArrowHead; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    procedure Remove(Index: Integer); safecall;
    function Add(const ArrowHead: IVGArrowHead): IVGArrowHead; safecall;
    function Replace(Index: Integer; const ArrowHead: IVGArrowHead): IVGArrowHead; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Item[Index: Integer]: IVGArrowHead read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGArrowHeadsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058000E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGArrowHeadsDisp = dispinterface
    ['{B058000E-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGApplication readonly dispid 1610743809;
    property Item[Index: Integer]: IVGArrowHead readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    procedure Remove(Index: Integer); dispid 1610743813;
    function Add(const ArrowHead: IVGArrowHead): IVGArrowHead; dispid 1610743814;
    function Replace(Index: Integer; const ArrowHead: IVGArrowHead): IVGArrowHead; dispid 1610743815;
  end;

// *********************************************************************//
// Interface: IVGOutlineStyles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580047-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOutlineStyles = interface(IDispatch)
    ['{B0580047-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Item(Index: Integer): IVGOutlineStyle; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Add: IVGOutlineStyle; safecall;
    procedure Remove(Index: Integer); safecall;
    procedure Save; safecall;
    function AddStyle(const Style: IVGOutlineStyle): IVGOutlineStyle; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Item[Index: Integer]: IVGOutlineStyle read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGOutlineStylesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580047-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGOutlineStylesDisp = dispinterface
    ['{B0580047-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGApplication readonly dispid 1610743809;
    property Item[Index: Integer]: IVGOutlineStyle readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function Add: IVGOutlineStyle; dispid 1610743813;
    procedure Remove(Index: Integer); dispid 1610743814;
    procedure Save; dispid 1610743815;
    function AddStyle(const Style: IVGOutlineStyle): IVGOutlineStyle; dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IVGPatternCanvases
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPatternCanvases = interface(IDispatch)
    ['{B058004F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(Index: Integer): IVGPatternCanvas; safecall;
    procedure Set_Item(Index: Integer; const ppVal: IVGPatternCanvas); safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Add(const PatternCanvas: IVGPatternCanvas): Integer; safecall;
    procedure Remove(Index: Integer); safecall;
    property Item[Index: Integer]: IVGPatternCanvas read Get_Item write Set_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGPatternCanvasesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPatternCanvasesDisp = dispinterface
    ['{B058004F-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[Index: Integer]: IVGPatternCanvas dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743811;
    function Add(const PatternCanvas: IVGPatternCanvas): Integer; dispid 1610743812;
    procedure Remove(Index: Integer); dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGClipboard
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580010-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGClipboard = interface(IDispatch)
    ['{B0580010-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Valid: WordBool; safecall;
    function Get_Empty: WordBool; safecall;
    procedure Clear; safecall;
    function DataPresent(const FormatName: WideString): WordBool; safecall;
    property Application: IDispatch read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Valid: WordBool read Get_Valid;
    property Empty: WordBool read Get_Empty;
  end;

// *********************************************************************//
// DispIntf:  IVGClipboardDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580010-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGClipboardDisp = dispinterface
    ['{B0580010-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Valid: WordBool readonly dispid 1610743810;
    property Empty: WordBool readonly dispid 1610743811;
    procedure Clear; dispid 1610743812;
    function DataPresent(const FormatName: WideString): WordBool; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGAddins
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B0580002-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAddins = interface(IDispatch)
    ['{B0580002-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Collection: IDispatch; safecall;
    function Attach(Filter: cdrAddinFilter; const ExecuteCommandPrompt: WideString): IVGAddinHook; safecall;
    procedure Detach(const pAddinHook: IVGAddinHook); safecall;
    procedure DetachAll; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Collection: IDispatch read Get_Collection;
  end;

// *********************************************************************//
// DispIntf:  IVGAddinsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B0580002-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAddinsDisp = dispinterface
    ['{B0580002-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1;
    property Parent: IVGApplication readonly dispid 2;
    property Collection: IDispatch readonly dispid 3;
    function Attach(Filter: cdrAddinFilter; const ExecuteCommandPrompt: WideString): IVGAddinHook; dispid 4;
    procedure Detach(const pAddinHook: IVGAddinHook); dispid 5;
    procedure DetachAll; dispid 6;
  end;

// *********************************************************************//
// Interface: IVGAddinHook
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580001-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAddinHook = interface(IDispatch)
    ['{B0580001-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGApplication; safecall;
    function Get_Filter: cdrAddinFilter; safecall;
    procedure Set_Filter(pReturn: cdrAddinFilter); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Index(pReturn: Integer); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGApplication read Get_Parent;
    property Filter: cdrAddinFilter read Get_Filter write Set_Filter;
    property Index: Integer read Get_Index write Set_Index;
  end;

// *********************************************************************//
// DispIntf:  IVGAddinHookDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580001-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAddinHookDisp = dispinterface
    ['{B0580001-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1;
    property Parent: IVGApplication readonly dispid 2;
    property Filter: cdrAddinFilter dispid 3;
    property Index: Integer dispid 4;
  end;

// *********************************************************************//
// Interface: IVGGMSManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSManager = interface(IDispatch)
    ['{B058003D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_GMSPath: WideString; safecall;
    function RunMacro(const ModuleName: WideString; const MacroName: WideString; 
                      var Parameters: PSafeArray): OleVariant; safecall;
    function Get_UserGMSPath: WideString; safecall;
    function Get_Projects: IVGGMSProjects; safecall;
    property GMSPath: WideString read Get_GMSPath;
    property UserGMSPath: WideString read Get_UserGMSPath;
    property Projects: IVGGMSProjects read Get_Projects;
  end;

// *********************************************************************//
// DispIntf:  IVGGMSManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSManagerDisp = dispinterface
    ['{B058003D-9AA4-44FD-9547-4F91EB757AC4}']
    property GMSPath: WideString readonly dispid 1610743808;
    function RunMacro(const ModuleName: WideString; const MacroName: WideString; 
                      var Parameters: {NOT_OLEAUTO(PSafeArray)}OleVariant): OleVariant; dispid 1610743809;
    property UserGMSPath: WideString readonly dispid 1610743810;
    property Projects: IVGGMSProjects readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGGMSProjects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSProjects = interface(IDispatch)
    ['{B058008A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGGMSProject; safecall;
    function Get_Count: Integer; safecall;
    function Load(const FileName: WideString; CopyFile: WordBool; ForAllUsers: WordBool): IVGGMSProject; safecall;
    function Create(const Name: WideString; ForAllUsers: WordBool; const FileName: WideString): IVGGMSProject; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[IndexOrName: OleVariant]: IVGGMSProject read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGGMSProjectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSProjectsDisp = dispinterface
    ['{B058008A-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[IndexOrName: OleVariant]: IVGGMSProject readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743810;
    function Load(const FileName: WideString; CopyFile: WordBool; ForAllUsers: WordBool): IVGGMSProject; dispid 1610743811;
    function Create(const Name: WideString; ForAllUsers: WordBool; const FileName: WideString): IVGGMSProject; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGGMSProject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSProject = interface(IDispatch)
    ['{B058008B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    function Get_Macros: IVGGMSMacros; safecall;
    procedure Unload; safecall;
    function Get_FileName: WideString; safecall;
    function Get_FilePath: WideString; safecall;
    function Get_FullFileName: WideString; safecall;
    function Get_Dirty: WordBool; safecall;
    procedure Set_Dirty(pVal: WordBool); safecall;
    function Get_Locked: WordBool; safecall;
    function Get_PasswordProtected: WordBool; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property DisplayName: WideString read Get_DisplayName;
    property Macros: IVGGMSMacros read Get_Macros;
    property FileName: WideString read Get_FileName;
    property FilePath: WideString read Get_FilePath;
    property FullFileName: WideString read Get_FullFileName;
    property Dirty: WordBool read Get_Dirty write Set_Dirty;
    property Locked: WordBool read Get_Locked;
    property PasswordProtected: WordBool read Get_PasswordProtected;
  end;

// *********************************************************************//
// DispIntf:  IVGGMSProjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSProjectDisp = dispinterface
    ['{B058008B-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString dispid 0;
    property DisplayName: WideString readonly dispid 1610743810;
    property Macros: IVGGMSMacros readonly dispid 1610743811;
    procedure Unload; dispid 1610743812;
    property FileName: WideString readonly dispid 1610743813;
    property FilePath: WideString readonly dispid 1610743814;
    property FullFileName: WideString readonly dispid 1610743815;
    property Dirty: WordBool dispid 1610743816;
    property Locked: WordBool readonly dispid 1610743818;
    property PasswordProtected: WordBool readonly dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IVGGMSMacros
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSMacros = interface(IDispatch)
    ['{B058008C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGGMSMacro; safecall;
    function Get_Count: Integer; safecall;
    function Create(const Name: WideString): IVGGMSMacro; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[IndexOrName: OleVariant]: IVGGMSMacro read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGGMSMacrosDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSMacrosDisp = dispinterface
    ['{B058008C-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[IndexOrName: OleVariant]: IVGGMSMacro readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743810;
    function Create(const Name: WideString): IVGGMSMacro; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGGMSMacro
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSMacro = interface(IDispatch)
    ['{B058008D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Name: WideString; safecall;
    procedure Run; safecall;
    procedure Edit; safecall;
    procedure Delete; safecall;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  IVGGMSMacroDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGMSMacroDisp = dispinterface
    ['{B058008D-9AA4-44FD-9547-4F91EB757AC4}']
    property Name: WideString readonly dispid 0;
    procedure Run; dispid 1610743809;
    procedure Edit; dispid 1610743810;
    procedure Delete; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGStructSaveAsOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580068-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructSaveAsOptions = interface(IDispatch)
    ['{B0580068-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_Filter(pVal: cdrFilter); safecall;
    function Get_Filter: cdrFilter; safecall;
    procedure Set_Version(pVal: cdrFileVersion); safecall;
    function Get_Version: cdrFileVersion; safecall;
    procedure Set_ThumbnailSize(pVal: cdrThumbnailSize); safecall;
    function Get_ThumbnailSize: cdrThumbnailSize; safecall;
    procedure Set_Range(pVal: cdrExportRange); safecall;
    function Get_Range: cdrExportRange; safecall;
    procedure Set_Overwrite(pVal: WordBool); safecall;
    function Get_Overwrite: WordBool; safecall;
    procedure Set_EmbedICCProfile(pVal: WordBool); safecall;
    function Get_EmbedICCProfile: WordBool; safecall;
    procedure Set_EmbedVBAProject(pVal: WordBool); safecall;
    function Get_EmbedVBAProject: WordBool; safecall;
    procedure Set_IncludeCMXData(pVal: WordBool); safecall;
    function Get_IncludeCMXData: WordBool; safecall;
    property Filter: cdrFilter read Get_Filter write Set_Filter;
    property Version: cdrFileVersion read Get_Version write Set_Version;
    property ThumbnailSize: cdrThumbnailSize read Get_ThumbnailSize write Set_ThumbnailSize;
    property Range: cdrExportRange read Get_Range write Set_Range;
    property Overwrite: WordBool read Get_Overwrite write Set_Overwrite;
    property EmbedICCProfile: WordBool read Get_EmbedICCProfile write Set_EmbedICCProfile;
    property EmbedVBAProject: WordBool read Get_EmbedVBAProject write Set_EmbedVBAProject;
    property IncludeCMXData: WordBool read Get_IncludeCMXData write Set_IncludeCMXData;
  end;

// *********************************************************************//
// DispIntf:  IVGStructSaveAsOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580068-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructSaveAsOptionsDisp = dispinterface
    ['{B0580068-9AA4-44FD-9547-4F91EB757AC4}']
    property Filter: cdrFilter dispid 1610743808;
    property Version: cdrFileVersion dispid 1610743810;
    property ThumbnailSize: cdrThumbnailSize dispid 1610743812;
    property Range: cdrExportRange dispid 1610743814;
    property Overwrite: WordBool dispid 1610743816;
    property EmbedICCProfile: WordBool dispid 1610743818;
    property EmbedVBAProject: WordBool dispid 1610743820;
    property IncludeCMXData: WordBool dispid 1610743822;
  end;

// *********************************************************************//
// Interface: IVGStructExportOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580063-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructExportOptions = interface(IDispatch)
    ['{B0580063-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Set_SizeX(pVal: Integer); safecall;
    function Get_SizeX: Integer; safecall;
    procedure Set_SizeY(pVal: Integer); safecall;
    function Get_SizeY: Integer; safecall;
    procedure Set_ResolutionX(pVal: Integer); safecall;
    function Get_ResolutionX: Integer; safecall;
    procedure Set_ResolutionY(pVal: Integer); safecall;
    function Get_ResolutionY: Integer; safecall;
    procedure Set_AntiAliasingType(pVal: cdrAntiAliasingType); safecall;
    function Get_AntiAliasingType: cdrAntiAliasingType; safecall;
    procedure Set_Overwrite(pVal: WordBool); safecall;
    function Get_Overwrite: WordBool; safecall;
    procedure Set_ImageType(pVal: cdrImageType); safecall;
    function Get_ImageType: cdrImageType; safecall;
    procedure Set_Dithered(pVal: WordBool); safecall;
    function Get_Dithered: WordBool; safecall;
    procedure Set_Transparent(pVal: WordBool); safecall;
    function Get_Transparent: WordBool; safecall;
    procedure Set_UseColorProfile(pVal: WordBool); safecall;
    function Get_UseColorProfile: WordBool; safecall;
    procedure Set_Compression(pVal: cdrCompressionType); safecall;
    function Get_Compression: cdrCompressionType; safecall;
    procedure Set_MaintainLayers(pVal: WordBool); safecall;
    function Get_MaintainLayers: WordBool; safecall;
    procedure Set_MaintainAspect(pVal: WordBool); safecall;
    function Get_MaintainAspect: WordBool; safecall;
    function Get_ExportArea: IVGRect; safecall;
    procedure _Set_ExportArea(var ppVal: IVGRect); safecall;
    procedure Set_Matted(pVal: WordBool); safecall;
    function Get_Matted: WordBool; safecall;
    function Get_MatteColor: IVGColor; safecall;
    procedure Set_MatteColor(const ppVal: IVGColor); safecall;
    procedure Set_MatteMaskedOnly(pVal: WordBool); safecall;
    function Get_MatteMaskedOnly: WordBool; safecall;
    procedure Set_AlwaysOverprintBlack(pVal: WordBool); safecall;
    function Get_AlwaysOverprintBlack: WordBool; safecall;
    function Get_ProofColorSettings: IVGProofColorSettings; safecall;
    procedure Set_ProofColorSettings(const ppVal: IVGProofColorSettings); safecall;
    property SizeX: Integer read Get_SizeX write Set_SizeX;
    property SizeY: Integer read Get_SizeY write Set_SizeY;
    property ResolutionX: Integer read Get_ResolutionX write Set_ResolutionX;
    property ResolutionY: Integer read Get_ResolutionY write Set_ResolutionY;
    property AntiAliasingType: cdrAntiAliasingType read Get_AntiAliasingType write Set_AntiAliasingType;
    property Overwrite: WordBool read Get_Overwrite write Set_Overwrite;
    property ImageType: cdrImageType read Get_ImageType write Set_ImageType;
    property Dithered: WordBool read Get_Dithered write Set_Dithered;
    property Transparent: WordBool read Get_Transparent write Set_Transparent;
    property UseColorProfile: WordBool read Get_UseColorProfile write Set_UseColorProfile;
    property Compression: cdrCompressionType read Get_Compression write Set_Compression;
    property MaintainLayers: WordBool read Get_MaintainLayers write Set_MaintainLayers;
    property MaintainAspect: WordBool read Get_MaintainAspect write Set_MaintainAspect;
    property ExportArea: IVGRect read Get_ExportArea;
    property Matted: WordBool read Get_Matted write Set_Matted;
    property MatteColor: IVGColor read Get_MatteColor write Set_MatteColor;
    property MatteMaskedOnly: WordBool read Get_MatteMaskedOnly write Set_MatteMaskedOnly;
    property AlwaysOverprintBlack: WordBool read Get_AlwaysOverprintBlack write Set_AlwaysOverprintBlack;
    property ProofColorSettings: IVGProofColorSettings read Get_ProofColorSettings write Set_ProofColorSettings;
  end;

// *********************************************************************//
// DispIntf:  IVGStructExportOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580063-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructExportOptionsDisp = dispinterface
    ['{B0580063-9AA4-44FD-9547-4F91EB757AC4}']
    property SizeX: Integer dispid 1610743808;
    property SizeY: Integer dispid 1610743810;
    property ResolutionX: Integer dispid 1610743812;
    property ResolutionY: Integer dispid 1610743814;
    property AntiAliasingType: cdrAntiAliasingType dispid 1610743816;
    property Overwrite: WordBool dispid 1610743818;
    property ImageType: cdrImageType dispid 1610743820;
    property Dithered: WordBool dispid 1610743822;
    property Transparent: WordBool dispid 1610743824;
    property UseColorProfile: WordBool dispid 1610743826;
    property Compression: cdrCompressionType dispid 1610743828;
    property MaintainLayers: WordBool dispid 1610743830;
    property MaintainAspect: WordBool dispid 1610743832;
    property ExportArea: IVGRect dispid 1610743834;
    property Matted: WordBool dispid 1610743836;
    property MatteColor: IVGColor dispid 1610743838;
    property MatteMaskedOnly: WordBool dispid 1610743840;
    property AlwaysOverprintBlack: WordBool dispid 1610743842;
    property ProofColorSettings: IVGProofColorSettings dispid 1610743844;
  end;

// *********************************************************************//
// Interface: IVGComponents
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580015-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGComponents = interface(IDispatch)
    ['{B0580015-9AA4-44FD-9547-4F91EB757AC4}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGComponent; safecall;
    function Get_Count: Integer; safecall;
    function IsComponentInstalled(const ComponentID: WideString): WordBool; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[IndexOrName: OleVariant]: IVGComponent read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGComponentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580015-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGComponentsDisp = dispinterface
    ['{B0580015-9AA4-44FD-9547-4F91EB757AC4}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[IndexOrName: OleVariant]: IVGComponent readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743810;
    function IsComponentInstalled(const ComponentID: WideString): WordBool; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IVGComponent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580014-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGComponent = interface(IDispatch)
    ['{B0580014-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ComponentID: WideString; safecall;
    property ComponentID: WideString read Get_ComponentID;
  end;

// *********************************************************************//
// DispIntf:  IVGComponentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580014-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGComponentDisp = dispinterface
    ['{B0580014-9AA4-44FD-9547-4F91EB757AC4}']
    property ComponentID: WideString readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IVGSymbolLibraries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolLibraries = interface(IDispatch)
    ['{B058006F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(IndexOrName: OleVariant): IVGSymbolLibrary; safecall;
    function Get_Count: Integer; safecall;
    function Add(const FileName: WideString; CopyLocally: WordBool): IVGSymbolLibrary; safecall;
    function AddFromFolder(const Folder: WideString; Recursive: WordBool; CopyLocally: WordBool): Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[IndexOrName: OleVariant]: IVGSymbolLibrary read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGSymbolLibrariesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058006F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSymbolLibrariesDisp = dispinterface
    ['{B058006F-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[IndexOrName: OleVariant]: IVGSymbolLibrary readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    function Add(const FileName: WideString; CopyLocally: WordBool): IVGSymbolLibrary; dispid 1610743810;
    function AddFromFolder(const Folder: WideString; Recursive: WordBool; CopyLocally: WordBool): Integer; dispid 1610743811;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IVGAppStatus
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580089-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAppStatus = interface(IDispatch)
    ['{B0580089-9AA4-44FD-9547-4F91EB757AC4}']
    procedure BeginProgress(const Message: WideString; CanAbort: WordBool); safecall;
    procedure UpdateProgress(Step: Integer); safecall;
    procedure SetProgressMessage(const Message: WideString); safecall;
    procedure EndProgress; safecall;
    function Get_Progress: Integer; safecall;
    procedure Set_Progress(pVal: Integer); safecall;
    function Get_Aborted: WordBool; safecall;
    property Progress: Integer read Get_Progress write Set_Progress;
    property Aborted: WordBool read Get_Aborted;
  end;

// *********************************************************************//
// DispIntf:  IVGAppStatusDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580089-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAppStatusDisp = dispinterface
    ['{B0580089-9AA4-44FD-9547-4F91EB757AC4}']
    procedure BeginProgress(const Message: WideString; CanAbort: WordBool); dispid 1610743808;
    procedure UpdateProgress(Step: Integer); dispid 1610743809;
    procedure SetProgressMessage(const Message: WideString); dispid 1610743810;
    procedure EndProgress; dispid 1610743811;
    property Progress: Integer dispid 1610743812;
    property Aborted: WordBool readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGPageSizes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPageSizes = interface(IDispatch)
    ['{B058004B-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Parent: IVGApplication; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGPageSize; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const Name: WideString; Width: Double; Height: Double): IVGPageSize; safecall;
    property Parent: IVGApplication read Get_Parent;
    property Count: Integer read Get_Count;
    property Item[IndexOrName: OleVariant]: IVGPageSize read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGPageSizesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004B-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPageSizesDisp = dispinterface
    ['{B058004B-9AA4-44FD-9547-4F91EB757AC4}']
    property Parent: IVGApplication readonly dispid 1610743808;
    property Count: Integer readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGPageSize readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const Name: WideString; Width: Double; Height: Double): IVGPageSize; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGPageSize
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPageSize = interface(IDispatch)
    ['{B058004A-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Parent: IVGPageSizes; safecall;
    function Get_BuiltIn: WordBool; safecall;
    function Get_Name: WideString; safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(pVal: Double); safecall;
    function Get_Height: Double; safecall;
    procedure Set_Height(pVal: Double); safecall;
    function Get_Index: Integer; safecall;
    procedure Delete; safecall;
    function Get_FixedOrientation: WordBool; safecall;
    function Get_DefaultUnit: cdrUnit; safecall;
    property Parent: IVGPageSizes read Get_Parent;
    property BuiltIn: WordBool read Get_BuiltIn;
    property Name: WideString read Get_Name;
    property Width: Double read Get_Width write Set_Width;
    property Height: Double read Get_Height write Set_Height;
    property Index: Integer read Get_Index;
    property FixedOrientation: WordBool read Get_FixedOrientation;
    property DefaultUnit: cdrUnit read Get_DefaultUnit;
  end;

// *********************************************************************//
// DispIntf:  IVGPageSizeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058004A-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPageSizeDisp = dispinterface
    ['{B058004A-9AA4-44FD-9547-4F91EB757AC4}']
    property Parent: IVGPageSizes readonly dispid 1610743808;
    property BuiltIn: WordBool readonly dispid 1610743809;
    property Name: WideString readonly dispid 1610743810;
    property Width: Double dispid 1610743811;
    property Height: Double dispid 1610743813;
    property Index: Integer readonly dispid 1610743815;
    procedure Delete; dispid 1610743816;
    property FixedOrientation: WordBool readonly dispid 1610743817;
    property DefaultUnit: cdrUnit readonly dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IVGTreeManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTreeManager = interface(IDispatch)
    ['{B058008E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_VirtualLayer: IVGLayer; safecall;
    function Get_SelectedNodeCount: Integer; safecall;
    function Get_FirstSelectedNode: IVGTreeNode; safecall;
    function CreateGroupNode: IVGTreeNode; safecall;
    function CleanGroupNode(const GroupNode: IVGTreeNode): IVGTreeNode; safecall;
    property VirtualLayer: IVGLayer read Get_VirtualLayer;
    property SelectedNodeCount: Integer read Get_SelectedNodeCount;
    property FirstSelectedNode: IVGTreeNode read Get_FirstSelectedNode;
  end;

// *********************************************************************//
// DispIntf:  IVGTreeManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058008E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGTreeManagerDisp = dispinterface
    ['{B058008E-9AA4-44FD-9547-4F91EB757AC4}']
    property VirtualLayer: IVGLayer readonly dispid 1610743808;
    property SelectedNodeCount: Integer readonly dispid 1610743809;
    property FirstSelectedNode: IVGTreeNode readonly dispid 1610743810;
    function CreateGroupNode: IVGTreeNode; dispid 1610743811;
    function CleanGroupNode(const GroupNode: IVGTreeNode): IVGTreeNode; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGColorManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580097-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorManager = interface(IDispatch)
    ['{B0580097-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ScannerCalibrated: WordBool; safecall;
    procedure Set_ScannerCalibrated(pVal: WordBool); safecall;
    function Get_SeparationPrinterCalibrated: WordBool; safecall;
    procedure Set_SeparationPrinterCalibrated(pVal: WordBool); safecall;
    function Get_CompositePrinterCalibrated: WordBool; safecall;
    function Get_CompositePrinterCalibration: clrCompPrnCalibration; safecall;
    procedure Set_CompositePrinterCalibration(pVal: clrCompPrnCalibration); safecall;
    function Get_MonitorCalibration: clrMonitorCalibration; safecall;
    procedure Set_MonitorCalibration(pVal: clrMonitorCalibration); safecall;
    function Get_CompositePrinterSimulatesSeparation: WordBool; safecall;
    function Get_ShowOutOfGamut: WordBool; safecall;
    procedure Set_ShowOutOfGamut(pVal: WordBool); safecall;
    function Get_OutOfGamutColor: IVGColor; safecall;
    procedure Set_OutOfGamutColor(const ppVal: IVGColor); safecall;
    function Get_OutOfGamutTransparency: Integer; safecall;
    procedure Set_OutOfGamutTransparency(pVal: Integer); safecall;
    function Get_CMYKInPercents: WordBool; safecall;
    procedure Set_CMYKInPercents(pVal: WordBool); safecall;
    function Get_CMYKGamutForSpotColors: WordBool; safecall;
    procedure Set_CMYKGamutForSpotColors(pVal: WordBool); safecall;
    function Get_RenderingIntent: clrRenderingIntent; safecall;
    procedure Set_RenderingIntent(pVal: clrRenderingIntent); safecall;
    function Get_ColorEngine: clrColorEngine; safecall;
    procedure Set_ColorEngine(pVal: clrColorEngine); safecall;
    function Get_StyleCount: Integer; safecall;
    function Get_StyleByIndex(Index: Integer): WideString; safecall;
    function Get_CurrentProfile(DeviceType: clrDeviceType): IVGColorProfile; safecall;
    function Get_InstalledProfiles(DeviceType: clrDeviceType): IVGColorProfiles; safecall;
    function LoadStyle(const StyleName: WideString): WordBool; safecall;
    function DeleteStyle(const StyleName: WideString): WordBool; safecall;
    function SaveStyle(const StyleName: WideString): WordBool; safecall;
    function Get_IsICM2Available: WordBool; safecall;
    function Get_UnsavedStyleName: WideString; safecall;
    function Get_GenericProfileName(DeviceType: clrDeviceType): WideString; safecall;
    function Get_IsCompositePrinterCMYK: WordBool; safecall;
    function Get_ColorCorrectionOnImport: clrImportColorCorrection; safecall;
    procedure Set_ColorCorrectionOnImport(pVal: clrImportColorCorrection); safecall;
    function Get_ColorCorrectionOnExport: clrExportColorCorrection; safecall;
    procedure Set_ColorCorrectionOnExport(pVal: clrExportColorCorrection); safecall;
    function Get_DefaultImportProfile: IVGColorProfile; safecall;
    procedure _Set_DefaultImportProfile(var ppVal: IVGColorProfile); safecall;
    function Get_CustomImportProfile: IVGColorProfile; safecall;
    procedure _Set_CustomImportProfile(var ppVal: IVGColorProfile); safecall;
    function Get_CustomExportProfile: IVGColorProfile; safecall;
    procedure _Set_CustomExportProfile(var ppVal: IVGColorProfile); safecall;
    function Get_MonitorColorProfiles: IVGColorProfiles; safecall;
    function GetProfilesByColorModel(ColorModel: clrColorModel): IVGColorProfiles; safecall;
    function GetProfilesForDevice(DeviceType: clrDeviceType; const DeviceName: WideString): IVGColorProfiles; safecall;
    function Get_DefaultColorContext: IVGColorContext; safecall;
    function ColorEnginePresent(ColorEngine: clrColorEngine): WordBool; safecall;
    function CanDeleteStyle(const StyleName: WideString): WordBool; safecall;
    function Get_MapGrayToCMYKBlack: WordBool; safecall;
    procedure Set_MapGrayToCMYKBlack(pVal: WordBool); safecall;
    function Get_PreservePureBlack: WordBool; safecall;
    procedure Set_PreservePureBlack(pVal: WordBool); safecall;
    function Get_SpotColorDefinition: clrColorModel; safecall;
    procedure Set_SpotColorDefinition(pVal: clrColorModel); safecall;
    function Get_ColorProfiles: IVGColorProfiles; safecall;
    function Get_PolicyForOpen: IVGColorManagementPolicy; safecall;
    function Get_PolicyForImport: IVGColorManagementPolicy; safecall;
    property ScannerCalibrated: WordBool read Get_ScannerCalibrated write Set_ScannerCalibrated;
    property SeparationPrinterCalibrated: WordBool read Get_SeparationPrinterCalibrated write Set_SeparationPrinterCalibrated;
    property CompositePrinterCalibrated: WordBool read Get_CompositePrinterCalibrated;
    property CompositePrinterCalibration: clrCompPrnCalibration read Get_CompositePrinterCalibration write Set_CompositePrinterCalibration;
    property MonitorCalibration: clrMonitorCalibration read Get_MonitorCalibration write Set_MonitorCalibration;
    property CompositePrinterSimulatesSeparation: WordBool read Get_CompositePrinterSimulatesSeparation;
    property ShowOutOfGamut: WordBool read Get_ShowOutOfGamut write Set_ShowOutOfGamut;
    property OutOfGamutColor: IVGColor read Get_OutOfGamutColor write Set_OutOfGamutColor;
    property OutOfGamutTransparency: Integer read Get_OutOfGamutTransparency write Set_OutOfGamutTransparency;
    property CMYKInPercents: WordBool read Get_CMYKInPercents write Set_CMYKInPercents;
    property CMYKGamutForSpotColors: WordBool read Get_CMYKGamutForSpotColors write Set_CMYKGamutForSpotColors;
    property RenderingIntent: clrRenderingIntent read Get_RenderingIntent write Set_RenderingIntent;
    property ColorEngine: clrColorEngine read Get_ColorEngine write Set_ColorEngine;
    property StyleCount: Integer read Get_StyleCount;
    property StyleByIndex[Index: Integer]: WideString read Get_StyleByIndex;
    property CurrentProfile[DeviceType: clrDeviceType]: IVGColorProfile read Get_CurrentProfile;
    property InstalledProfiles[DeviceType: clrDeviceType]: IVGColorProfiles read Get_InstalledProfiles;
    property IsICM2Available: WordBool read Get_IsICM2Available;
    property UnsavedStyleName: WideString read Get_UnsavedStyleName;
    property GenericProfileName[DeviceType: clrDeviceType]: WideString read Get_GenericProfileName;
    property IsCompositePrinterCMYK: WordBool read Get_IsCompositePrinterCMYK;
    property ColorCorrectionOnImport: clrImportColorCorrection read Get_ColorCorrectionOnImport write Set_ColorCorrectionOnImport;
    property ColorCorrectionOnExport: clrExportColorCorrection read Get_ColorCorrectionOnExport write Set_ColorCorrectionOnExport;
    property DefaultImportProfile: IVGColorProfile read Get_DefaultImportProfile;
    property CustomImportProfile: IVGColorProfile read Get_CustomImportProfile;
    property CustomExportProfile: IVGColorProfile read Get_CustomExportProfile;
    property MonitorColorProfiles: IVGColorProfiles read Get_MonitorColorProfiles;
    property DefaultColorContext: IVGColorContext read Get_DefaultColorContext;
    property MapGrayToCMYKBlack: WordBool read Get_MapGrayToCMYKBlack write Set_MapGrayToCMYKBlack;
    property PreservePureBlack: WordBool read Get_PreservePureBlack write Set_PreservePureBlack;
    property SpotColorDefinition: clrColorModel read Get_SpotColorDefinition write Set_SpotColorDefinition;
    property ColorProfiles: IVGColorProfiles read Get_ColorProfiles;
    property PolicyForOpen: IVGColorManagementPolicy read Get_PolicyForOpen;
    property PolicyForImport: IVGColorManagementPolicy read Get_PolicyForImport;
  end;

// *********************************************************************//
// DispIntf:  IVGColorManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580097-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGColorManagerDisp = dispinterface
    ['{B0580097-9AA4-44FD-9547-4F91EB757AC4}']
    property ScannerCalibrated: WordBool dispid 1610743808;
    property SeparationPrinterCalibrated: WordBool dispid 1610743810;
    property CompositePrinterCalibrated: WordBool readonly dispid 1610743812;
    property CompositePrinterCalibration: clrCompPrnCalibration dispid 1610743813;
    property MonitorCalibration: clrMonitorCalibration dispid 1610743815;
    property CompositePrinterSimulatesSeparation: WordBool readonly dispid 1610743817;
    property ShowOutOfGamut: WordBool dispid 1610743818;
    property OutOfGamutColor: IVGColor dispid 1610743820;
    property OutOfGamutTransparency: Integer dispid 1610743822;
    property CMYKInPercents: WordBool dispid 1610743824;
    property CMYKGamutForSpotColors: WordBool dispid 1610743826;
    property RenderingIntent: clrRenderingIntent dispid 1610743828;
    property ColorEngine: clrColorEngine dispid 1610743830;
    property StyleCount: Integer readonly dispid 1610743832;
    property StyleByIndex[Index: Integer]: WideString readonly dispid 1610743833;
    property CurrentProfile[DeviceType: clrDeviceType]: IVGColorProfile readonly dispid 1610743834;
    property InstalledProfiles[DeviceType: clrDeviceType]: IVGColorProfiles readonly dispid 1610743835;
    function LoadStyle(const StyleName: WideString): WordBool; dispid 1610743836;
    function DeleteStyle(const StyleName: WideString): WordBool; dispid 1610743837;
    function SaveStyle(const StyleName: WideString): WordBool; dispid 1610743838;
    property IsICM2Available: WordBool readonly dispid 1610743839;
    property UnsavedStyleName: WideString readonly dispid 1610743840;
    property GenericProfileName[DeviceType: clrDeviceType]: WideString readonly dispid 1610743841;
    property IsCompositePrinterCMYK: WordBool readonly dispid 1610743842;
    property ColorCorrectionOnImport: clrImportColorCorrection dispid 1610743843;
    property ColorCorrectionOnExport: clrExportColorCorrection dispid 1610743845;
    property DefaultImportProfile: IVGColorProfile dispid 1610743847;
    property CustomImportProfile: IVGColorProfile dispid 1610743849;
    property CustomExportProfile: IVGColorProfile dispid 1610743851;
    property MonitorColorProfiles: IVGColorProfiles readonly dispid 1610743853;
    function GetProfilesByColorModel(ColorModel: clrColorModel): IVGColorProfiles; dispid 1610743854;
    function GetProfilesForDevice(DeviceType: clrDeviceType; const DeviceName: WideString): IVGColorProfiles; dispid 1610743855;
    property DefaultColorContext: IVGColorContext readonly dispid 1610743856;
    function ColorEnginePresent(ColorEngine: clrColorEngine): WordBool; dispid 1610743857;
    function CanDeleteStyle(const StyleName: WideString): WordBool; dispid 1610743858;
    property MapGrayToCMYKBlack: WordBool dispid 1610743859;
    property PreservePureBlack: WordBool dispid 1610743861;
    property SpotColorDefinition: clrColorModel dispid 1610743863;
    property ColorProfiles: IVGColorProfiles readonly dispid 1610743865;
    property PolicyForOpen: IVGColorManagementPolicy readonly dispid 1610743866;
    property PolicyForImport: IVGColorManagementPolicy readonly dispid 1610743867;
  end;

// *********************************************************************//
// Interface: IVGStructOpenOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B3-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructOpenOptions = interface(IDispatch)
    ['{B05800B3-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_CodePage: Integer; safecall;
    procedure Set_CodePage(pVal: Integer); safecall;
    function Get_ColorConversionOptions: IVGStructColorConversionOptions; safecall;
    property CodePage: Integer read Get_CodePage write Set_CodePage;
    property ColorConversionOptions: IVGStructColorConversionOptions read Get_ColorConversionOptions;
  end;

// *********************************************************************//
// DispIntf:  IVGStructOpenOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B3-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructOpenOptionsDisp = dispinterface
    ['{B05800B3-9AA4-44FD-9547-4F91EB757AC4}']
    property CodePage: Integer dispid 1610743808;
    property ColorConversionOptions: IVGStructColorConversionOptions readonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IVGStructCreateOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B4-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructCreateOptions = interface(IDispatch)
    ['{B05800B4-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_ColorContext: IVGColorContext; safecall;
    procedure Set_ColorContext(const ppVal: IVGColorContext); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_PageWidth: Double; safecall;
    procedure Set_PageWidth(pVal: Double); safecall;
    function Get_PageHeight: Double; safecall;
    procedure Set_PageHeight(pVal: Double); safecall;
    function Get_Units: cdrUnit; safecall;
    procedure Set_Units(pVal: cdrUnit); safecall;
    function Get_Resolution: Double; safecall;
    procedure Set_Resolution(pVal: Double); safecall;
    property ColorContext: IVGColorContext read Get_ColorContext write Set_ColorContext;
    property Name: WideString read Get_Name write Set_Name;
    property PageWidth: Double read Get_PageWidth write Set_PageWidth;
    property PageHeight: Double read Get_PageHeight write Set_PageHeight;
    property Units: cdrUnit read Get_Units write Set_Units;
    property Resolution: Double read Get_Resolution write Set_Resolution;
  end;

// *********************************************************************//
// DispIntf:  IVGStructCreateOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B4-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStructCreateOptionsDisp = dispinterface
    ['{B05800B4-9AA4-44FD-9547-4F91EB757AC4}']
    property ColorContext: IVGColorContext dispid 1610743808;
    property Name: WideString dispid 1610743810;
    property PageWidth: Double dispid 1610743812;
    property PageHeight: Double dispid 1610743814;
    property Units: cdrUnit dispid 1610743816;
    property Resolution: Double dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IVGPaletteManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B7-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPaletteManager = interface(IDispatch)
    ['{B05800B7-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_PaletteCount: Integer; safecall;
    function GetPalette(IndexOrName: OleVariant): IVGPalette; safecall;
    function Get_DefaultPalette: IVGPalette; safecall;
    function Get_OpenPalettes: IVGPalettes; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure LoadAllPalettes; safecall;
    function LoadPalette(const FileName: WideString): IVGPalette; safecall;
    property PaletteCount: Integer read Get_PaletteCount;
    property DefaultPalette: IVGPalette read Get_DefaultPalette;
    property OpenPalettes: IVGPalettes read Get_OpenPalettes;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVGPaletteManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800B7-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGPaletteManagerDisp = dispinterface
    ['{B05800B7-9AA4-44FD-9547-4F91EB757AC4}']
    property PaletteCount: Integer readonly dispid 1610743808;
    function GetPalette(IndexOrName: OleVariant): IVGPalette; dispid 1610743809;
    property DefaultPalette: IVGPalette readonly dispid 1610743810;
    property OpenPalettes: IVGPalettes readonly dispid 1610743811;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure LoadAllPalettes; dispid 1610743813;
    function LoadPalette(const FileName: WideString): IVGPalette; dispid 1610743814;
  end;

// *********************************************************************//
// Interface: IVGRulers
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580058-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRulers = interface(IDispatch)
    ['{B0580058-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocument; safecall;
    function Get_VUnits: cdrUnit; safecall;
    procedure Set_VUnits(pVal: cdrUnit); safecall;
    function Get_HUnits: cdrUnit; safecall;
    procedure Set_HUnits(pVal: cdrUnit); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocument read Get_Parent;
    property VUnits: cdrUnit read Get_VUnits write Set_VUnits;
    property HUnits: cdrUnit read Get_HUnits write Set_HUnits;
  end;

// *********************************************************************//
// DispIntf:  IVGRulersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580058-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGRulersDisp = dispinterface
    ['{B0580058-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocument readonly dispid 1610743809;
    property VUnits: cdrUnit dispid 1610743810;
    property HUnits: cdrUnit dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGGrid
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGrid = interface(IDispatch)
    ['{B058003E-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocument; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function Get_type_: cdrGridType; safecall;
    procedure Set_type_(pVal: cdrGridType); safecall;
    function Get_Snap: WordBool; safecall;
    procedure Set_Snap(pVal: WordBool); safecall;
    procedure SetFrequency(GridX: Double; GridY: Double); safecall;
    function Get_SpacingX: Double; safecall;
    procedure Set_SpacingX(pVal: Double); safecall;
    function Get_SpacingY: Double; safecall;
    procedure Set_SpacingY(pVal: Double); safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocument read Get_Parent;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property type_: cdrGridType read Get_type_ write Set_type_;
    property Snap: WordBool read Get_Snap write Set_Snap;
    property SpacingX: Double read Get_SpacingX write Set_SpacingX;
    property SpacingY: Double read Get_SpacingY write Set_SpacingY;
  end;

// *********************************************************************//
// DispIntf:  IVGGridDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058003E-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGGridDisp = dispinterface
    ['{B058003E-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocument readonly dispid 1610743809;
    property Visible: WordBool dispid 1610743810;
    property type_: cdrGridType dispid 1610743812;
    property Snap: WordBool dispid 1610743814;
    procedure SetFrequency(GridX: Double; GridY: Double); dispid 1610743816;
    property SpacingX: Double dispid 1610743817;
    property SpacingY: Double dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IVGViews
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580080-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGViews = interface(IDispatch)
    ['{B0580080-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocument; safecall;
    function Get_Item(IndexOrName: OleVariant): IVGView; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function AddActiveView(const Name: WideString): IVGView; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocument read Get_Parent;
    property Item[IndexOrName: OleVariant]: IVGView read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IVGViewsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580080-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGViewsDisp = dispinterface
    ['{B0580080-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocument readonly dispid 1610743809;
    property Item[IndexOrName: OleVariant]: IVGView readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743812;
    function AddActiveView(const Name: WideString): IVGView; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGView = interface(IDispatch)
    ['{B058007F-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGViews; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_OriginX: Double; safecall;
    procedure Set_OriginX(pVal: Double); safecall;
    function Get_OriginY: Double; safecall;
    procedure Set_OriginY(pVal: Double); safecall;
    function Get_UsePage: WordBool; safecall;
    procedure Set_UsePage(pVal: WordBool); safecall;
    function Get_Page: IVGPage; safecall;
    procedure Set_Page(const Page: IVGPage); safecall;
    function Get_UseZoom: WordBool; safecall;
    procedure Set_UseZoom(pVal: WordBool); safecall;
    function Get_Zoom: Double; safecall;
    procedure Set_Zoom(pVal: Double); safecall;
    procedure Activate; safecall;
    procedure Delete; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGViews read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property OriginX: Double read Get_OriginX write Set_OriginX;
    property OriginY: Double read Get_OriginY write Set_OriginY;
    property UsePage: WordBool read Get_UsePage write Set_UsePage;
    property Page: IVGPage read Get_Page write Set_Page;
    property UseZoom: WordBool read Get_UseZoom write Set_UseZoom;
    property Zoom: Double read Get_Zoom write Set_Zoom;
  end;

// *********************************************************************//
// DispIntf:  IVGViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058007F-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGViewDisp = dispinterface
    ['{B058007F-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGViews readonly dispid 1610743809;
    property Name: WideString dispid 1610743810;
    property OriginX: Double dispid 1610743812;
    property OriginY: Double dispid 1610743814;
    property UsePage: WordBool dispid 1610743816;
    property Page: IVGPage dispid 1610743818;
    property UseZoom: WordBool dispid 1610743820;
    property Zoom: Double dispid 1610743822;
    procedure Activate; dispid 1610743824;
    procedure Delete; dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IVGSelectionInformation
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSelectionInformation = interface(IDispatch)
    ['{B058005C-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Application: IVGApplication; safecall;
    function Get_Parent: IVGDocument; safecall;
    function Get_Count: Integer; safecall;
    function Get_FirstShape: IVGShape; safecall;
    function Get_SecondShape: IVGShape; safecall;
    function Get_BlendTopShape: IVGShape; safecall;
    function Get_BlendBottomShape: IVGShape; safecall;
    function Get_BlendPath: IVGShape; safecall;
    function Get_CanCreateBlend: WordBool; safecall;
    function Get_DistortionShape: IVGShape; safecall;
    function Get_DistortionType: cdrDistortionType; safecall;
    function Get_ExtrudeFaceShape: IVGShape; safecall;
    function Get_ExtrudeGroup: IVGShape; safecall;
    function Get_ExtrudeBevelGroup: IVGShape; safecall;
    function Get_ContourControlShape: IVGShape; safecall;
    function Get_ContourGroup: IVGShape; safecall;
    function Get_DropShadowControlShape: IVGShape; safecall;
    function Get_DropShadowGroup: IVGShape; safecall;
    function Get_DimensionControlShape: IVGShape; safecall;
    function Get_DimensionGroup: IVGShape; safecall;
    function Get_ConnectorLines: IVGShape; safecall;
    function Get_FittedTextControlShape: IVGShape; safecall;
    function Get_FittedText: IVGShape; safecall;
    function Get_FirstShapeWithOutline: IVGShape; safecall;
    function Get_FirstShapeWithFill: IVGShape; safecall;
    function Get_NaturalMediaControlShape: IVGShape; safecall;
    function Get_NaturalMediaGroup: IVGShape; safecall;
    function Get_CanPrint: WordBool; safecall;
    function Get_IsEditingText: WordBool; safecall;
    function Get_IsTextSelection: WordBool; safecall;
    function Get_IsOnPowerClipContents: WordBool; safecall;
    function Get_IsEditingRollOver: WordBool; safecall;
    function Get_CanApplyFillOutline: WordBool; safecall;
    function Get_IsControlSelected: WordBool; safecall;
    function Get_CanDeleteControl: WordBool; safecall;
    function Get_IsGroup: WordBool; safecall;
    function Get_IsRegularShape: WordBool; safecall;
    function Get_IsControlShape: WordBool; safecall;
    function Get_IsBlendControl: WordBool; safecall;
    function Get_IsBlendGroup: WordBool; safecall;
    function Get_IsCloneControl: WordBool; safecall;
    function Get_IsContourControl: WordBool; safecall;
    function Get_IsContourGroup: WordBool; safecall;
    function Get_IsDropShadowControl: WordBool; safecall;
    function Get_IsDropShadowGroup: WordBool; safecall;
    function Get_IsDimensionControl: WordBool; safecall;
    function Get_IsExtrudeControl: WordBool; safecall;
    function Get_IsExtrudeGroup: WordBool; safecall;
    function Get_IsBevelGroup: WordBool; safecall;
    function Get_HasAutoLabelText: WordBool; safecall;
    function Get_IsEnvelope: WordBool; safecall;
    function Get_IsPerspective: WordBool; safecall;
    function Get_IsDistortion: WordBool; safecall;
    function Get_IsConnectorLine: WordBool; safecall;
    function Get_IsConnector: WordBool; safecall;
    function Get_IsFittedText: WordBool; safecall;
    function Get_IsFittedTextControl: WordBool; safecall;
    function Get_IsNaturalMediaControl: WordBool; safecall;
    function Get_IsNaturalMediaGroup: WordBool; safecall;
    function Get_IsSecondExtrudeControl: WordBool; safecall;
    function Get_IsSecondContourControl: WordBool; safecall;
    function Get_IsSecondDropShadowControl: WordBool; safecall;
    function Get_IsSecondNaturalMediaControl: WordBool; safecall;
    function Get_IsArtisticTextSelected: WordBool; safecall;
    function Get_IsParagraphTextSelected: WordBool; safecall;
    function Get_IsTextSelected: WordBool; safecall;
    function Get_IsOLESelected: WordBool; safecall;
    function Get_IsBitmapSelected: WordBool; safecall;
    function Get_IsBitmapPresent: WordBool; safecall;
    function Get_IsLensPresent: WordBool; safecall;
    function Get_IsMaskedBitmapPresent: WordBool; safecall;
    function Get_IsGroupSelected: WordBool; safecall;
    function Get_CanUngroup: WordBool; safecall;
    function Get_IsLinkGroupSelected: WordBool; safecall;
    function Get_IsLinkControlSelected: WordBool; safecall;
    function Get_IsAttachedToDimension: WordBool; safecall;
    function Get_IsFittedTextSelected: WordBool; safecall;
    function Get_IsConnectorLineSelected: WordBool; safecall;
    function Get_IsConnectorSelected: WordBool; safecall;
    function Get_IsPerspectivePresent: WordBool; safecall;
    function Get_IsEnvelopePresent: WordBool; safecall;
    function Get_IsDistortionPresent: WordBool; safecall;
    function Get_IsGuidelineSelected: WordBool; safecall;
    function Get_IsInternetObjectSelected: WordBool; safecall;
    function Get_IsSoundObjectSelected: WordBool; safecall;
    function Get_IsExternalBitmapSelected: WordBool; safecall;
    function Get_IsNonExternalBitmapSelected: WordBool; safecall;
    function Get_IsMeshFillSelected: WordBool; safecall;
    function Get_IsMeshFillPresent: WordBool; safecall;
    function Get_IsRollOverSelected: WordBool; safecall;
    function Get_ContainsRollOverParent: WordBool; safecall;
    function Get_CanClone: WordBool; safecall;
    function Get_CanApplyBlend: WordBool; safecall;
    function Get_CanApplyContour: WordBool; safecall;
    function Get_CanApplyFill: WordBool; safecall;
    function Get_CanApplyOutline: WordBool; safecall;
    function Get_CanApplyTransparency: WordBool; safecall;
    function Get_CanAssignURL: WordBool; safecall;
    function Get_CanApplyDistortion: WordBool; safecall;
    function Get_CanApplyEnvelope: WordBool; safecall;
    function Get_CanCopyBlend: WordBool; safecall;
    function Get_CanCloneBlend: WordBool; safecall;
    function Get_CanCopyExtrude: WordBool; safecall;
    function Get_CanCloneExtrude: WordBool; safecall;
    function Get_CanCopyContour: WordBool; safecall;
    function Get_CanCloneContour: WordBool; safecall;
    function Get_CanCopyDropShadow: WordBool; safecall;
    function Get_CanCloneDropShadow: WordBool; safecall;
    function Get_CanCopyLens: WordBool; safecall;
    function Get_CanCopyPerspective: WordBool; safecall;
    function Get_CanCopyEnvelope: WordBool; safecall;
    function Get_CanCopyPowerclip: WordBool; safecall;
    function Get_CanCopyDistortion: WordBool; safecall;
    function Get_CanLockShapes: WordBool; safecall;
    function Get_CanUnlockShapes: WordBool; safecall;
    property Application: IVGApplication read Get_Application;
    property Parent: IVGDocument read Get_Parent;
    property Count: Integer read Get_Count;
    property FirstShape: IVGShape read Get_FirstShape;
    property SecondShape: IVGShape read Get_SecondShape;
    property BlendTopShape: IVGShape read Get_BlendTopShape;
    property BlendBottomShape: IVGShape read Get_BlendBottomShape;
    property BlendPath: IVGShape read Get_BlendPath;
    property CanCreateBlend: WordBool read Get_CanCreateBlend;
    property DistortionShape: IVGShape read Get_DistortionShape;
    property DistortionType: cdrDistortionType read Get_DistortionType;
    property ExtrudeFaceShape: IVGShape read Get_ExtrudeFaceShape;
    property ExtrudeGroup: IVGShape read Get_ExtrudeGroup;
    property ExtrudeBevelGroup: IVGShape read Get_ExtrudeBevelGroup;
    property ContourControlShape: IVGShape read Get_ContourControlShape;
    property ContourGroup: IVGShape read Get_ContourGroup;
    property DropShadowControlShape: IVGShape read Get_DropShadowControlShape;
    property DropShadowGroup: IVGShape read Get_DropShadowGroup;
    property DimensionControlShape: IVGShape read Get_DimensionControlShape;
    property DimensionGroup: IVGShape read Get_DimensionGroup;
    property ConnectorLines: IVGShape read Get_ConnectorLines;
    property FittedTextControlShape: IVGShape read Get_FittedTextControlShape;
    property FittedText: IVGShape read Get_FittedText;
    property FirstShapeWithOutline: IVGShape read Get_FirstShapeWithOutline;
    property FirstShapeWithFill: IVGShape read Get_FirstShapeWithFill;
    property NaturalMediaControlShape: IVGShape read Get_NaturalMediaControlShape;
    property NaturalMediaGroup: IVGShape read Get_NaturalMediaGroup;
    property CanPrint: WordBool read Get_CanPrint;
    property IsEditingText: WordBool read Get_IsEditingText;
    property IsTextSelection: WordBool read Get_IsTextSelection;
    property IsOnPowerClipContents: WordBool read Get_IsOnPowerClipContents;
    property IsEditingRollOver: WordBool read Get_IsEditingRollOver;
    property CanApplyFillOutline: WordBool read Get_CanApplyFillOutline;
    property IsControlSelected: WordBool read Get_IsControlSelected;
    property CanDeleteControl: WordBool read Get_CanDeleteControl;
    property IsGroup: WordBool read Get_IsGroup;
    property IsRegularShape: WordBool read Get_IsRegularShape;
    property IsControlShape: WordBool read Get_IsControlShape;
    property IsBlendControl: WordBool read Get_IsBlendControl;
    property IsBlendGroup: WordBool read Get_IsBlendGroup;
    property IsCloneControl: WordBool read Get_IsCloneControl;
    property IsContourControl: WordBool read Get_IsContourControl;
    property IsContourGroup: WordBool read Get_IsContourGroup;
    property IsDropShadowControl: WordBool read Get_IsDropShadowControl;
    property IsDropShadowGroup: WordBool read Get_IsDropShadowGroup;
    property IsDimensionControl: WordBool read Get_IsDimensionControl;
    property IsExtrudeControl: WordBool read Get_IsExtrudeControl;
    property IsExtrudeGroup: WordBool read Get_IsExtrudeGroup;
    property IsBevelGroup: WordBool read Get_IsBevelGroup;
    property HasAutoLabelText: WordBool read Get_HasAutoLabelText;
    property IsEnvelope: WordBool read Get_IsEnvelope;
    property IsPerspective: WordBool read Get_IsPerspective;
    property IsDistortion: WordBool read Get_IsDistortion;
    property IsConnectorLine: WordBool read Get_IsConnectorLine;
    property IsConnector: WordBool read Get_IsConnector;
    property IsFittedText: WordBool read Get_IsFittedText;
    property IsFittedTextControl: WordBool read Get_IsFittedTextControl;
    property IsNaturalMediaControl: WordBool read Get_IsNaturalMediaControl;
    property IsNaturalMediaGroup: WordBool read Get_IsNaturalMediaGroup;
    property IsSecondExtrudeControl: WordBool read Get_IsSecondExtrudeControl;
    property IsSecondContourControl: WordBool read Get_IsSecondContourControl;
    property IsSecondDropShadowControl: WordBool read Get_IsSecondDropShadowControl;
    property IsSecondNaturalMediaControl: WordBool read Get_IsSecondNaturalMediaControl;
    property IsArtisticTextSelected: WordBool read Get_IsArtisticTextSelected;
    property IsParagraphTextSelected: WordBool read Get_IsParagraphTextSelected;
    property IsTextSelected: WordBool read Get_IsTextSelected;
    property IsOLESelected: WordBool read Get_IsOLESelected;
    property IsBitmapSelected: WordBool read Get_IsBitmapSelected;
    property IsBitmapPresent: WordBool read Get_IsBitmapPresent;
    property IsLensPresent: WordBool read Get_IsLensPresent;
    property IsMaskedBitmapPresent: WordBool read Get_IsMaskedBitmapPresent;
    property IsGroupSelected: WordBool read Get_IsGroupSelected;
    property CanUngroup: WordBool read Get_CanUngroup;
    property IsLinkGroupSelected: WordBool read Get_IsLinkGroupSelected;
    property IsLinkControlSelected: WordBool read Get_IsLinkControlSelected;
    property IsAttachedToDimension: WordBool read Get_IsAttachedToDimension;
    property IsFittedTextSelected: WordBool read Get_IsFittedTextSelected;
    property IsConnectorLineSelected: WordBool read Get_IsConnectorLineSelected;
    property IsConnectorSelected: WordBool read Get_IsConnectorSelected;
    property IsPerspectivePresent: WordBool read Get_IsPerspectivePresent;
    property IsEnvelopePresent: WordBool read Get_IsEnvelopePresent;
    property IsDistortionPresent: WordBool read Get_IsDistortionPresent;
    property IsGuidelineSelected: WordBool read Get_IsGuidelineSelected;
    property IsInternetObjectSelected: WordBool read Get_IsInternetObjectSelected;
    property IsSoundObjectSelected: WordBool read Get_IsSoundObjectSelected;
    property IsExternalBitmapSelected: WordBool read Get_IsExternalBitmapSelected;
    property IsNonExternalBitmapSelected: WordBool read Get_IsNonExternalBitmapSelected;
    property IsMeshFillSelected: WordBool read Get_IsMeshFillSelected;
    property IsMeshFillPresent: WordBool read Get_IsMeshFillPresent;
    property IsRollOverSelected: WordBool read Get_IsRollOverSelected;
    property ContainsRollOverParent: WordBool read Get_ContainsRollOverParent;
    property CanClone: WordBool read Get_CanClone;
    property CanApplyBlend: WordBool read Get_CanApplyBlend;
    property CanApplyContour: WordBool read Get_CanApplyContour;
    property CanApplyFill: WordBool read Get_CanApplyFill;
    property CanApplyOutline: WordBool read Get_CanApplyOutline;
    property CanApplyTransparency: WordBool read Get_CanApplyTransparency;
    property CanAssignURL: WordBool read Get_CanAssignURL;
    property CanApplyDistortion: WordBool read Get_CanApplyDistortion;
    property CanApplyEnvelope: WordBool read Get_CanApplyEnvelope;
    property CanCopyBlend: WordBool read Get_CanCopyBlend;
    property CanCloneBlend: WordBool read Get_CanCloneBlend;
    property CanCopyExtrude: WordBool read Get_CanCopyExtrude;
    property CanCloneExtrude: WordBool read Get_CanCloneExtrude;
    property CanCopyContour: WordBool read Get_CanCopyContour;
    property CanCloneContour: WordBool read Get_CanCloneContour;
    property CanCopyDropShadow: WordBool read Get_CanCopyDropShadow;
    property CanCloneDropShadow: WordBool read Get_CanCloneDropShadow;
    property CanCopyLens: WordBool read Get_CanCopyLens;
    property CanCopyPerspective: WordBool read Get_CanCopyPerspective;
    property CanCopyEnvelope: WordBool read Get_CanCopyEnvelope;
    property CanCopyPowerclip: WordBool read Get_CanCopyPowerclip;
    property CanCopyDistortion: WordBool read Get_CanCopyDistortion;
    property CanLockShapes: WordBool read Get_CanLockShapes;
    property CanUnlockShapes: WordBool read Get_CanUnlockShapes;
  end;

// *********************************************************************//
// DispIntf:  IVGSelectionInformationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058005C-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSelectionInformationDisp = dispinterface
    ['{B058005C-9AA4-44FD-9547-4F91EB757AC4}']
    property Application: IVGApplication readonly dispid 1610743808;
    property Parent: IVGDocument readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property FirstShape: IVGShape readonly dispid 1610743811;
    property SecondShape: IVGShape readonly dispid 1610743812;
    property BlendTopShape: IVGShape readonly dispid 1610743813;
    property BlendBottomShape: IVGShape readonly dispid 1610743814;
    property BlendPath: IVGShape readonly dispid 1610743815;
    property CanCreateBlend: WordBool readonly dispid 1610743816;
    property DistortionShape: IVGShape readonly dispid 1610743817;
    property DistortionType: cdrDistortionType readonly dispid 1610743818;
    property ExtrudeFaceShape: IVGShape readonly dispid 1610743819;
    property ExtrudeGroup: IVGShape readonly dispid 1610743820;
    property ExtrudeBevelGroup: IVGShape readonly dispid 1610743821;
    property ContourControlShape: IVGShape readonly dispid 1610743822;
    property ContourGroup: IVGShape readonly dispid 1610743823;
    property DropShadowControlShape: IVGShape readonly dispid 1610743824;
    property DropShadowGroup: IVGShape readonly dispid 1610743825;
    property DimensionControlShape: IVGShape readonly dispid 1610743826;
    property DimensionGroup: IVGShape readonly dispid 1610743827;
    property ConnectorLines: IVGShape readonly dispid 1610743828;
    property FittedTextControlShape: IVGShape readonly dispid 1610743829;
    property FittedText: IVGShape readonly dispid 1610743830;
    property FirstShapeWithOutline: IVGShape readonly dispid 1610743831;
    property FirstShapeWithFill: IVGShape readonly dispid 1610743832;
    property NaturalMediaControlShape: IVGShape readonly dispid 1610743833;
    property NaturalMediaGroup: IVGShape readonly dispid 1610743834;
    property CanPrint: WordBool readonly dispid 1610743835;
    property IsEditingText: WordBool readonly dispid 1610743836;
    property IsTextSelection: WordBool readonly dispid 1610743837;
    property IsOnPowerClipContents: WordBool readonly dispid 1610743838;
    property IsEditingRollOver: WordBool readonly dispid 1610743839;
    property CanApplyFillOutline: WordBool readonly dispid 1610743840;
    property IsControlSelected: WordBool readonly dispid 1610743841;
    property CanDeleteControl: WordBool readonly dispid 1610743842;
    property IsGroup: WordBool readonly dispid 1610743843;
    property IsRegularShape: WordBool readonly dispid 1610743844;
    property IsControlShape: WordBool readonly dispid 1610743845;
    property IsBlendControl: WordBool readonly dispid 1610743846;
    property IsBlendGroup: WordBool readonly dispid 1610743847;
    property IsCloneControl: WordBool readonly dispid 1610743848;
    property IsContourControl: WordBool readonly dispid 1610743849;
    property IsContourGroup: WordBool readonly dispid 1610743850;
    property IsDropShadowControl: WordBool readonly dispid 1610743851;
    property IsDropShadowGroup: WordBool readonly dispid 1610743852;
    property IsDimensionControl: WordBool readonly dispid 1610743853;
    property IsExtrudeControl: WordBool readonly dispid 1610743854;
    property IsExtrudeGroup: WordBool readonly dispid 1610743855;
    property IsBevelGroup: WordBool readonly dispid 1610743856;
    property HasAutoLabelText: WordBool readonly dispid 1610743857;
    property IsEnvelope: WordBool readonly dispid 1610743858;
    property IsPerspective: WordBool readonly dispid 1610743859;
    property IsDistortion: WordBool readonly dispid 1610743860;
    property IsConnectorLine: WordBool readonly dispid 1610743861;
    property IsConnector: WordBool readonly dispid 1610743862;
    property IsFittedText: WordBool readonly dispid 1610743863;
    property IsFittedTextControl: WordBool readonly dispid 1610743864;
    property IsNaturalMediaControl: WordBool readonly dispid 1610743865;
    property IsNaturalMediaGroup: WordBool readonly dispid 1610743866;
    property IsSecondExtrudeControl: WordBool readonly dispid 1610743867;
    property IsSecondContourControl: WordBool readonly dispid 1610743868;
    property IsSecondDropShadowControl: WordBool readonly dispid 1610743869;
    property IsSecondNaturalMediaControl: WordBool readonly dispid 1610743870;
    property IsArtisticTextSelected: WordBool readonly dispid 1610743871;
    property IsParagraphTextSelected: WordBool readonly dispid 1610743872;
    property IsTextSelected: WordBool readonly dispid 1610743873;
    property IsOLESelected: WordBool readonly dispid 1610743874;
    property IsBitmapSelected: WordBool readonly dispid 1610743875;
    property IsBitmapPresent: WordBool readonly dispid 1610743876;
    property IsLensPresent: WordBool readonly dispid 1610743877;
    property IsMaskedBitmapPresent: WordBool readonly dispid 1610743878;
    property IsGroupSelected: WordBool readonly dispid 1610743879;
    property CanUngroup: WordBool readonly dispid 1610743880;
    property IsLinkGroupSelected: WordBool readonly dispid 1610743881;
    property IsLinkControlSelected: WordBool readonly dispid 1610743882;
    property IsAttachedToDimension: WordBool readonly dispid 1610743883;
    property IsFittedTextSelected: WordBool readonly dispid 1610743884;
    property IsConnectorLineSelected: WordBool readonly dispid 1610743885;
    property IsConnectorSelected: WordBool readonly dispid 1610743886;
    property IsPerspectivePresent: WordBool readonly dispid 1610743887;
    property IsEnvelopePresent: WordBool readonly dispid 1610743888;
    property IsDistortionPresent: WordBool readonly dispid 1610743889;
    property IsGuidelineSelected: WordBool readonly dispid 1610743890;
    property IsInternetObjectSelected: WordBool readonly dispid 1610743891;
    property IsSoundObjectSelected: WordBool readonly dispid 1610743892;
    property IsExternalBitmapSelected: WordBool readonly dispid 1610743893;
    property IsNonExternalBitmapSelected: WordBool readonly dispid 1610743894;
    property IsMeshFillSelected: WordBool readonly dispid 1610743895;
    property IsMeshFillPresent: WordBool readonly dispid 1610743896;
    property IsRollOverSelected: WordBool readonly dispid 1610743897;
    property ContainsRollOverParent: WordBool readonly dispid 1610743898;
    property CanClone: WordBool readonly dispid 1610743899;
    property CanApplyBlend: WordBool readonly dispid 1610743900;
    property CanApplyContour: WordBool readonly dispid 1610743901;
    property CanApplyFill: WordBool readonly dispid 1610743902;
    property CanApplyOutline: WordBool readonly dispid 1610743903;
    property CanApplyTransparency: WordBool readonly dispid 1610743904;
    property CanAssignURL: WordBool readonly dispid 1610743905;
    property CanApplyDistortion: WordBool readonly dispid 1610743906;
    property CanApplyEnvelope: WordBool readonly dispid 1610743907;
    property CanCopyBlend: WordBool readonly dispid 1610743908;
    property CanCloneBlend: WordBool readonly dispid 1610743909;
    property CanCopyExtrude: WordBool readonly dispid 1610743910;
    property CanCloneExtrude: WordBool readonly dispid 1610743911;
    property CanCopyContour: WordBool readonly dispid 1610743912;
    property CanCloneContour: WordBool readonly dispid 1610743913;
    property CanCopyDropShadow: WordBool readonly dispid 1610743914;
    property CanCloneDropShadow: WordBool readonly dispid 1610743915;
    property CanCopyLens: WordBool readonly dispid 1610743916;
    property CanCopyPerspective: WordBool readonly dispid 1610743917;
    property CanCopyEnvelope: WordBool readonly dispid 1610743918;
    property CanCopyPowerclip: WordBool readonly dispid 1610743919;
    property CanCopyDistortion: WordBool readonly dispid 1610743920;
    property CanLockShapes: WordBool readonly dispid 1610743921;
    property CanUnlockShapes: WordBool readonly dispid 1610743922;
  end;

// *********************************************************************//
// Interface: IVGHatchLibraries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchLibraries = interface(IDispatch)
    ['{B058009D-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(IndexOrName: OleVariant): IVGHatchLibrary; safecall;
    function Get_Count: Integer; safecall;
    function Find(const Name: WideString): IVGHatchLibrary; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_ActiveLibrary: IVGHatchLibrary; safecall;
    function Get_DefaultLibrary: IVGHatchLibrary; safecall;
    property Item[IndexOrName: OleVariant]: IVGHatchLibrary read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property ActiveLibrary: IVGHatchLibrary read Get_ActiveLibrary;
    property DefaultLibrary: IVGHatchLibrary read Get_DefaultLibrary;
  end;

// *********************************************************************//
// DispIntf:  IVGHatchLibrariesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B058009D-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGHatchLibrariesDisp = dispinterface
    ['{B058009D-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[IndexOrName: OleVariant]: IVGHatchLibrary readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    function Find(const Name: WideString): IVGHatchLibrary; dispid 1610743810;
    property _NewEnum: IUnknown readonly dispid -4;
    property ActiveLibrary: IVGHatchLibrary readonly dispid 1610743812;
    property DefaultLibrary: IVGHatchLibrary readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IVGMetadata
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A2-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGMetadata = interface(IDispatch)
    ['{B05800A2-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Keywords: WideString; safecall;
    procedure Set_Keywords(const pVal: WideString); safecall;
    function Get_Notes: WideString; safecall;
    procedure Set_Notes(const pVal: WideString); safecall;
    function Get_Author: WideString; safecall;
    procedure Set_Author(const pVal: WideString); safecall;
    function Get_LastAuthor: WideString; safecall;
    procedure Set_LastAuthor(const pVal: WideString); safecall;
    function Get_Subject: WideString; safecall;
    procedure Set_Subject(const pVal: WideString); safecall;
    function Get_Copyright: WideString; safecall;
    procedure Set_Copyright(const pVal: WideString); safecall;
    function Get_Revision: Integer; safecall;
    procedure Set_Revision(pVal: Integer); safecall;
    function Get_TemplateSided: WideString; safecall;
    procedure Set_TemplateSided(const pVal: WideString); safecall;
    function Get_TemplateFolds: WideString; safecall;
    procedure Set_TemplateFolds(const pVal: WideString); safecall;
    function Get_TemplateType: WideString; safecall;
    procedure Set_TemplateType(const pVal: WideString); safecall;
    function Get_TemplateIndustry: WideString; safecall;
    procedure Set_TemplateIndustry(const pVal: WideString); safecall;
    function Get_Title: WideString; safecall;
    procedure Set_Title(const pVal: WideString); safecall;
    function Get_DocID: WideString; safecall;
    procedure Set_DocID(const pVal: WideString); safecall;
    function Get_DocLanguage: cdrTextLanguage; safecall;
    procedure Set_DocLanguage(pVal: cdrTextLanguage); safecall;
    function Get_TemplateDesignerNotes: WideString; safecall;
    procedure Set_TemplateDesignerNotes(const pVal: WideString); safecall;
    property Keywords: WideString read Get_Keywords write Set_Keywords;
    property Notes: WideString read Get_Notes write Set_Notes;
    property Author: WideString read Get_Author write Set_Author;
    property LastAuthor: WideString read Get_LastAuthor write Set_LastAuthor;
    property Subject: WideString read Get_Subject write Set_Subject;
    property Copyright: WideString read Get_Copyright write Set_Copyright;
    property Revision: Integer read Get_Revision write Set_Revision;
    property TemplateSided: WideString read Get_TemplateSided write Set_TemplateSided;
    property TemplateFolds: WideString read Get_TemplateFolds write Set_TemplateFolds;
    property TemplateType: WideString read Get_TemplateType write Set_TemplateType;
    property TemplateIndustry: WideString read Get_TemplateIndustry write Set_TemplateIndustry;
    property Title: WideString read Get_Title write Set_Title;
    property DocID: WideString read Get_DocID write Set_DocID;
    property DocLanguage: cdrTextLanguage read Get_DocLanguage write Set_DocLanguage;
    property TemplateDesignerNotes: WideString read Get_TemplateDesignerNotes write Set_TemplateDesignerNotes;
  end;

// *********************************************************************//
// DispIntf:  IVGMetadataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A2-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGMetadataDisp = dispinterface
    ['{B05800A2-9AA4-44FD-9547-4F91EB757AC4}']
    property Keywords: WideString dispid 1610743808;
    property Notes: WideString dispid 1610743810;
    property Author: WideString dispid 1610743812;
    property LastAuthor: WideString dispid 1610743814;
    property Subject: WideString dispid 1610743816;
    property Copyright: WideString dispid 1610743818;
    property Revision: Integer dispid 1610743820;
    property TemplateSided: WideString dispid 1610743822;
    property TemplateFolds: WideString dispid 1610743824;
    property TemplateType: WideString dispid 1610743826;
    property TemplateIndustry: WideString dispid 1610743828;
    property Title: WideString dispid 1610743830;
    property DocID: WideString dispid 1610743832;
    property DocLanguage: cdrTextLanguage dispid 1610743834;
    property TemplateDesignerNotes: WideString dispid 1610743836;
  end;

// *********************************************************************//
// Interface: IVGSpreads
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A6-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSpreads = interface(IDispatch)
    ['{B05800A6-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Item(Index: Integer): IVGSpread; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_First: IVGSpread; safecall;
    function Get_Last: IVGSpread; safecall;
    property Item[Index: Integer]: IVGSpread read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property First: IVGSpread read Get_First;
    property Last: IVGSpread read Get_Last;
  end;

// *********************************************************************//
// DispIntf:  IVGSpreadsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800A6-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGSpreadsDisp = dispinterface
    ['{B05800A6-9AA4-44FD-9547-4F91EB757AC4}']
    property Item[Index: Integer]: IVGSpread readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
    property First: IVGSpread readonly dispid 1610743811;
    property Last: IVGSpread readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IVGStyleSheet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BA-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleSheet = interface(IDispatch)
    ['{B05800BA-9AA4-44FD-9547-4F91EB757AC4}']
    function Get_Styles: IVGStyles; safecall;
    function Get_StyleSets: IVGStyles; safecall;
    function Get_ObjectDefaults: IVGStyles; safecall;
    function Get_AllStyles: IVGStyles; safecall;
    function Get_AllStyleSets: IVGStyles; safecall;
    function FindStyle(const Name: WideString): IVGStyle; safecall;
    function CreateStyleFromShape(const Shape: IVGShape; const Category: WideString; 
                                  const Name: WideString; ReplaceExisting: WordBool): IVGStyles; safecall;
    function CreateStyleFromShapeRange(const ShapeRange: IVGShapeRange; const Category: WideString; 
                                       const Name: WideString; ReplaceExisting: WordBool): IVGStyles; safecall;
    function CreateStyleFromTextRange(const TextRange: IVGTextRange; const Category: WideString; 
                                      const Name: WideString; ReplaceExisting: WordBool): IVGStyles; safecall;
    function CreateStyleSetFromShape(const Shape: IVGShape; const Name: WideString; 
                                     ReplaceExisting: WordBool): IVGStyles; safecall;
    function CreateStyleSetFromShapeRange(const ShapeRange: IVGShapeRange; const Name: WideString; 
                                          ReplaceExisting: WordBool): IVGStyles; safecall;
    function CreateStyleSetFromTextRange(const TextRange: IVGTextRange; const Name: WideString; 
                                         ReplaceExisting: WordBool): IVGStyles; safecall;
    function CreateStyle(const Category: WideString; const BasedOn: WideString; 
                         const Name: WideString; ReplaceExisting: WordBool): IVGStyle; safecall;
    function CreateStyleSet(const BasedOn: WideString; const Name: WideString; 
                            ReplaceExisting: WordBool): IVGStyle; safecall;
    function Export(const FileName: WideString; Styles: WordBool; StyleSets: WordBool; 
                    ObjectDefaults: WordBool; ColorStyles: WordBool): WordBool; safecall;
    function Import(const FileName: WideString; MergeStyles: WordBool; Styles: WordBool; 
                    StyleSets: WordBool; ObjectDefaults: WordBool; ColorStyles: WordBool): WordBool; safecall;
    property Styles: IVGStyles read Get_Styles;
    property StyleSets: IVGStyles read Get_StyleSets;
    property ObjectDefaults: IVGStyles read Get_ObjectDefaults;
    property AllStyles: IVGStyles read Get_AllStyles;
    property AllStyleSets: IVGStyles read Get_AllStyleSets;
  end;

// *********************************************************************//
// DispIntf:  IVGStyleSheetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B05800BA-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGStyleSheetDisp = dispinterface
    ['{B05800BA-9AA4-44FD-9547-4F91EB757AC4}']
    property Styles: IVGStyles readonly dispid 1610743808;
    property StyleSets: IVGStyles readonly dispid 1610743809;
    property ObjectDefaults: IVGStyles readonly dispid 1610743810;
    property AllStyles: IVGStyles readonly dispid 1610743811;
    property AllStyleSets: IVGStyles readonly dispid 1610743812;
    function FindStyle(const Name: WideString): IVGStyle; dispid 1610743813;
    function CreateStyleFromShape(const Shape: IVGShape; const Category: WideString; 
                                  const Name: WideString; ReplaceExisting: WordBool): IVGStyles; dispid 1610743814;
    function CreateStyleFromShapeRange(const ShapeRange: IVGShapeRange; const Category: WideString; 
                                       const Name: WideString; ReplaceExisting: WordBool): IVGStyles; dispid 1610743815;
    function CreateStyleFromTextRange(const TextRange: IVGTextRange; const Category: WideString; 
                                      const Name: WideString; ReplaceExisting: WordBool): IVGStyles; dispid 1610743816;
    function CreateStyleSetFromShape(const Shape: IVGShape; const Name: WideString; 
                                     ReplaceExisting: WordBool): IVGStyles; dispid 1610743817;
    function CreateStyleSetFromShapeRange(const ShapeRange: IVGShapeRange; const Name: WideString; 
                                          ReplaceExisting: WordBool): IVGStyles; dispid 1610743818;
    function CreateStyleSetFromTextRange(const TextRange: IVGTextRange; const Name: WideString; 
                                         ReplaceExisting: WordBool): IVGStyles; dispid 1610743819;
    function CreateStyle(const Category: WideString; const BasedOn: WideString; 
                         const Name: WideString; ReplaceExisting: WordBool): IVGStyle; dispid 1610743820;
    function CreateStyleSet(const BasedOn: WideString; const Name: WideString; 
                            ReplaceExisting: WordBool): IVGStyle; dispid 1610743821;
    function Export(const FileName: WideString; Styles: WordBool; StyleSets: WordBool; 
                    ObjectDefaults: WordBool; ColorStyles: WordBool): WordBool; dispid 1610743822;
    function Import(const FileName: WideString; MergeStyles: WordBool; Styles: WordBool; 
                    StyleSets: WordBool; ObjectDefaults: WordBool; ColorStyles: WordBool): WordBool; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IVGAddinHookEvents
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580004-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAddinHookEvents = interface(IDispatch)
    ['{B0580004-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Execute; safecall;
    procedure New(const NewDocument: IVGDocument); safecall;
    procedure ShapeCreated(const NewShape: IVGShape); safecall;
  end;

// *********************************************************************//
// DispIntf:  IVGAddinHookEventsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0580004-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAddinHookEventsDisp = dispinterface
    ['{B0580004-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Execute; dispid 1;
    procedure New(const NewDocument: IVGDocument); dispid 2;
    procedure ShapeCreated(const NewShape: IVGShape); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  DIVGAddinHookEvents
// Flags:     (4096) Dispatchable
// GUID:      {B0580003-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  DIVGAddinHookEvents = dispinterface
    ['{B0580003-9AA4-44FD-9547-4F91EB757AC4}']
    procedure Execute; dispid 1;
    procedure New(const NewDocument: IVGDocument); dispid 2;
    procedure ShapeCreated(const NewShape: IVGShape); dispid 3;
  end;

// *********************************************************************//
// Interface: IVGAppPlugin
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B0580005-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAppPlugin = interface(IDispatch)
    ['{B0580005-9AA4-44FD-9547-4F91EB757AC4}']
    procedure OnLoad(const Application: IVGApplication); safecall;
    procedure StartSession; safecall;
    procedure StopSession; safecall;
    procedure OnUnload; safecall;
  end;

// *********************************************************************//
// DispIntf:  IVGAppPluginDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B0580005-9AA4-44FD-9547-4F91EB757AC4}
// *********************************************************************//
  IVGAppPluginDisp = dispinterface
    ['{B0580005-9AA4-44FD-9547-4F91EB757AC4}']
    procedure OnLoad(const Application: IVGApplication); dispid 1610743808;
    procedure StartSession; dispid 1610743809;
    procedure StopSession; dispid 1610743810;
    procedure OnUnload; dispid 1610743811;
  end;

implementation

uses System.Win.ComObj;

end.
