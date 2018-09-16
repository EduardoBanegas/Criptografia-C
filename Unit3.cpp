//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
	RichEdit1->Text = "";
	RichEdit2->Text = "";
	RichEdit3->Text = "";
	RichEdit4->Text = "";
}
//---------------------------------------------------------------------------


//-------------------METODOS AUXILIARES---------------------------------------
String rellenar(String mensaje, int c){
	String resultado = mensaje;
	int mod = mensaje.Length() % c;
	if(mod > 0){
		for(int i = c - mod; (i > 0); i--){
			resultado = resultado + "X";
		}
	}
	return resultado;
}

String limpiarCadena(String mensaje){
	String resultado = "";
	mensaje = mensaje.UpperCase();
	String c = " ";
	for(int i = 1; i <= mensaje.Length(); i++){
		c = mensaje[i];
		if(c >= "A" && c <= "Z"){
		   resultado = resultado + c;
		}else{
			if(c == "�"){
				resultado = resultado + "A";
			}else{
				if(c == "�"){
					resultado = resultado + "E";
				}else{
					if(c == "�"){
						resultado = resultado + "I";
					}else{
						if(c == "�"){
							resultado = resultado + "O";
						}else{
							 if(c == "�" || c == "�"){
								resultado = resultado + "U";
							}else{
								if(c == "�"){
									resultado = resultado + "�";
								}
							}
						}
					}
				}
			}
		}
	}

	return resultado;

}


String limpiarCadenaI(String mensaje){
	String resultado = "";
	mensaje = mensaje.UpperCase();
	String c = " ";
	for(int i = 1; i <= mensaje.Length(); i++){
		c = mensaje[i];
		if(c >= "A" && c <= "Z"){
		   resultado = resultado + c;
		}else{
			if(c == "�"){
				resultado = resultado + "A";
			}else{
				if(c == "�"){
					resultado = resultado + "E";
				}else{
					if(c == "�"){
						resultado = resultado + "I";
					}else{
						if(c == "�"){
							resultado = resultado + "O";
						}else{
							 if(c == "�" || c == "�"){
								resultado = resultado + "U";
							}else{
								if(c == "�"){
									resultado = resultado + "N";
								}
							}
						}
					}
				}
			}
		}
	}

	return resultado;

}
