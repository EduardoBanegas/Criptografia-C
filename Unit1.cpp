//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"     	// DESPLAZAMIENTO
#include "Unit3.h"		// TRANSPOSICION
#include "Unit4.h"		// SUSTITUCION

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TForm2 *Form2;
TForm3 *Form3;
TForm4 *Form4;
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

void __fastcall TForm1::Image3Click(TObject *Sender)
{
	Form4->Show();
}
//---------------------------------------------------------------------------

