var OxOb90a=["ig","\x3C/?[^\x3E]*\x3E","","\x3C\x5C?xml[^\x3E]*\x3E","\x3C/?[a-z]+:[^\x3E]*\x3E","(\x3C[^\x3E]+) class=[^ |^\x3E]*([^\x3E]*\x3E)","$1 $2","(\x3C[^\x3E]+) style=\x22[^\x22]*\x22([^\x3E]*\x3E)","\x3Cspan[^\x3E]*\x3E\x3C/span[^\x3E]*\x3E","\x3Cspan\x3E\x3Cspan\x3E","\x3Cspan\x3E","\x3C/span\x3E\x3C/span\x3E","\x3C/span\x3E","[ ]*\x3E","\x3E","\x3C/?font[^\x3E]*\x3E","\x3C/?span[^\x3E]*\x3E","span","font","css","word","allhtml"];var editor=Window_GetDialogArguments(window); function execRE(Ox211,Ox212,Ox95){var Ox213= new RegExp(Ox211,OxOb90a[0x0]);return Ox95.replace(Ox213,Ox212);}  ; function getContent(){return editor.GetBodyInnerHTML();}  ; function setContent(Ox95){ editor.SetBodyInnerHTML(Ox95) ;}  ; function codeCleaner(Ox1a3){var Ox95=getContent();switch(Ox1a3){case OxOb90a[0x15]: Ox95=execRE(OxOb90a[0x1],OxOb90a[0x2],Ox95) ;break ;case OxOb90a[0x14]: Ox95=execRE(OxOb90a[0x3],OxOb90a[0x2],Ox95) ; Ox95=execRE(OxOb90a[0x4],OxOb90a[0x2],Ox95) ; Ox95=execRE(OxOb90a[0x5],OxOb90a[0x6],Ox95) ; Ox95=execRE(OxOb90a[0x7],OxOb90a[0x6],Ox95) ; Ox95=execRE(OxOb90a[0x8],OxOb90a[0x2],Ox95) ; Ox95=execRE(OxOb90a[0x9],OxOb90a[0xa],Ox95) ; Ox95=execRE(OxOb90a[0xb],OxOb90a[0xc],Ox95) ; Ox95=execRE(OxOb90a[0xd],OxOb90a[0xe],Ox95) ;break ;case OxOb90a[0x13]: Ox95=execRE(OxOb90a[0x5],OxOb90a[0x6],Ox95) ; Ox95=execRE(OxOb90a[0x7],OxOb90a[0x6],Ox95) ;break ;case OxOb90a[0x12]: Ox95=execRE(OxOb90a[0xf],OxOb90a[0x2],Ox95) ;break ;case OxOb90a[0x11]: Ox95=execRE(OxOb90a[0x10],OxOb90a[0x2],Ox95) ;break ;;;;;;} ; setContent(Ox95) ;}  ;