//---------------------------------------------------------------------------

#include <vcl.h>
#include "qrencode.h"

#pragma hdrstop

#include "QRCode.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------
// ValidCtrCheck is used to assure that the components created do not have
// any pure virtual functions.
//

static inline void ValidCtrCheck(TSQRCode *)
{
	new TSQRCode(NULL);
}
//---------------------------------------------------------------------------
__fastcall TSQRCode::TSQRCode(TComponent* Owner)
	: TComponent(Owner)
{
}
//---------------------------------------------------------------------------
namespace Qrcode
{
	void __fastcall PACKAGE Register()
	{
		TComponentClass classes[1] = {__classid(TSQRCode)};
		RegisterComponents(L"Tisn", classes, 0);
	}
}
//---------------------------------------------------------------------------
