//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"     	// DESPLAZAMIENTO
#include "Unit3.h"		// TRANSPOSICION

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TForm2 *Form2;
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{

	Form1->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Image1Click(TObject *Sender)
{
	Form2->Show();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Image2Click(TObject *Sender)
{
	Form3->Show();
}
//---------------------------------------------------------------------------

