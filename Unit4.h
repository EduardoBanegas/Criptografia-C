//---------------------------------------------------------------------------

#ifndef Unit4H
#define Unit4H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm4 : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu1;
	TMenuItem *MonoAlfabetico1;
	TMenuItem *Cifrar1;
	TMenuItem *Descifrar1;
	TMenuItem *PoliAlfabetico1;
	TMenuItem *Cifrar2;
	TMenuItem *Descifrar2;
	TRichEdit *RichEdit1;
	TRichEdit *RichEdit2;
	TRichEdit *RichEdit3;
	TRichEdit *RichEdit4;
	TLabel *Label2;
	TLabel *Label3;
	void __fastcall Cifrar1Click(TObject *Sender);
	void __fastcall Descifrar1Click(TObject *Sender);
	void __fastcall Cifrar2Click(TObject *Sender);
	void __fastcall Descifrar2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm4(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm4 *Form4;
//---------------------------------------------------------------------------
#endif
