//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu1;
	TMenuItem *Grupo1;
	TMenuItem *Cifrar1;
	TMenuItem *Descifrar1;
	TMenuItem *Serie1;
	TMenuItem *Cifrar2;
	TMenuItem *Descifrar2;
	TMenuItem *Columnas1;
	TMenuItem *Cifrar3;
	TMenuItem *Descifrar3;
	TMenuItem *Filas1;
	TMenuItem *Cifrar4;
	TMenuItem *Descifrar4;
	TMenuItem *ZigZag1;
	TMenuItem *Cifrar5;
	TMenuItem *Descifrar5;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TRichEdit *RichEdit1;
	TRichEdit *RichEdit2;
	TRichEdit *RichEdit3;
	TRichEdit *RichEdit4;
	TButton *Button1;
	void __fastcall Cifrar1Click(TObject *Sender);
	void __fastcall Cifrar2Click(TObject *Sender);
	void __fastcall Descifrar2Click(TObject *Sender);
	void __fastcall Cifrar3Click(TObject *Sender);
	void __fastcall Descifrar3Click(TObject *Sender);
	void __fastcall Cifrar4Click(TObject *Sender);
	void __fastcall Descifrar4Click(TObject *Sender);
	void __fastcall Cifrar5Click(TObject *Sender);
	void __fastcall Descifrar5Click(TObject *Sender);
	void __fastcall Descifrar1Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
