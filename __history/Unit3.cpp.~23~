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
			if(c == "Á"){
				resultado = resultado + "A";
			}else{
				if(c == "É"){
					resultado = resultado + "E";
				}else{
					if(c == "Í"){
						resultado = resultado + "I";
					}else{
						if(c == "Ó"){
							resultado = resultado + "O";
						}else{
							 if(c == "Ú" || c == "Ü"){
								resultado = resultado + "U";
							}else{
								if(c == "Ñ"){
									resultado = resultado + "Ñ";
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
			if(c == "Á"){
				resultado = resultado + "A";
			}else{
				if(c == "É"){
					resultado = resultado + "E";
				}else{
					if(c == "Í"){
						resultado = resultado + "I";
					}else{
						if(c == "Ó"){
							resultado = resultado + "O";
						}else{
							 if(c == "Ú" || c == "Ü"){
								resultado = resultado + "U";
							}else{
								if(c == "Ñ"){
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


bool primo(int n) {
    if(n == 1) return false;
	int raiz = int(sqrtf(n));
	for(int i = 2; i <= raiz; i++){
		if(n % i == 0)
			return false;
	}
	return true;
}

bool par(int n){
	if(n % 2 == 0){
		return true;
	}
	return false;
}

bool impar(int n){
	return !par(n);
}

int cantPrimos(int n){
	int c = 0;
	for(int i = 1; i <= n; i++){
		if(primo(i)){
			c++;
		}
	}
	return c;
}



int cantParesNoP(int n){
	int c = 0;
	for(int i = 1; i <= n; i++){
		if(i % 2 == 0){
			c++;
		}
	}
	return c - 1;
}


int cantImparesNoP(int n){
	int c = 0;
	for(int i = 1; i <= n; i++){
		if((!primo(i)) && (i % 2 == 1)){
			c++;
		}
	}
	return c;
}

int cantImpares(int n){
	int c = 0;
	for(int i = 1; i <= n; i++){
		if(i % 2 == 1){
			c++;
		}
	}
	return c;
}


String rellenoZigZag(String texto, int filas){
	int elementos = (filas * 2) - 2;
	while(true){
		if(texto.Length() % elementos == 0){
			break;
		}
		texto = texto + "X";
	}
	return texto;
}
//-------------------------------------------------------------------------------
void __fastcall TForm3::Cifrar1Click(TObject *Sender)
{
	//CIFRAR POR GRUPO
	String s = RichEdit1->Text;
	String clave = "";
//	do{
		clave = InputBox("Key o Clave...", "Clave: ", "");
		clave = clave.Trim();
//	} while(clave.Length() == 0);

	int const columnas = clave.Length();//2
	String mensaje = rellenar(limpiarCadena(s), columnas);
	int const filas = mensaje.Length() / columnas;

	String matriz[1000][20];
	String matriz2[1000][20];

	// Cargando matriz
//	for(int m = 1; m <= mensaje.Length(); m++){
//		for(int i = 1; i <= filas; i++){
//			for(int j = 1; j <= columnas; j++){
//				matriz[i][j] = mensaje[m];
//				m++;
//			}
//		}
//	}
	int coll = 0;
	for(int m = 1; m <= mensaje.Length(); m++){
//		for(int i = 1; i <= filas; i++){
			for(int j = 1; j <= clave.Length(); j++){
				coll = StrToInt(clave[j]);
//				matriz[i][j] = mensaje[m];
//				m++;
				for(int k = 1; k <= filas; k++){
//					colX = colX + matriz[i][col];
					matriz[k][coll] = mensaje[m];
					m++;
				}
			}
//		}
	}

//	String a = "";
//	for (int i = 1; i <= filas; i++) {
//		for (int j = 1; j <= columnas; j++) {
//			 a = a + matriz[i][j];
//		}
//		a = a + "\n";
//	}
//	RichEdit2->Text = a;
//	return;

	String colX = "";

	//copiando ordenado segun la clave
	int col = 0;

	//se recorre toda la clave
	for(int x = 1; x <= clave.Length(); x++){//35

		//se copia la columna correspondiente al primer caracter de la clave
		col = StrToInt(clave[x]);//3
//		RichEdit2->Text = col;
//		return;
		for(int i = 1; i <= filas; i++){
			colX = colX + matriz[i][col];
		}
		//se pega en la nueva matriz recorriendo la columna copiada
		for(int f = 1; f <= filas; f++){
			matriz2[f][x] = colX[f];
		}
//		int f = 1;
//		while (f <= filas && colX.Length() > 0){
//			matriz2[f][x] = colX[f];
//			f++;
//		}

		colX = "";
	}


	String cifrado = "";

	for(int j = 1; j <= filas; j++){
		for(int i = 1; i <= columnas; i++){
			cifrado = cifrado + matriz2[j][i];
		}
		cifrado = cifrado + " ";
	}


	RichEdit2->Text = cifrado;


}
//---------------------------------------------------------------------------

void __fastcall TForm3::Cifrar2Click(TObject *Sender)
{
	// Cifrado por Series
	String mensaje = RichEdit1->Text;
	mensaje = limpiarCadena(mensaje);
	String primos = "";
	String pares = "";
	String impares = "";

	for(int i = 1; i <= mensaje.Length(); i++){
		if(primo(i)){
			primos = primos + mensaje[i];
		} else {
			if(par(i)){
				pares = pares + mensaje[i];
			} else {
				impares = impares + mensaje[i];
			}
		}
	}

	String cifrado = primos + pares + impares;

	RichEdit2->Text = cifrado;

}
//---------------------------------------------------------------------------

void __fastcall TForm3::Descifrar2Click(TObject *Sender)
{
	// Descifrado por series
	String mensaje = RichEdit2->Text;
	RichEdit3->Text = mensaje;
	mensaje = limpiarCadena(mensaje);
	int const longitud = mensaje.Length();
	int pri = cantPrimos(longitud);
	int seg = cantParesNoP(longitud);
	String des[1500];

	//ordenando el grupo de los primos
	for(int i = 1; i <= pri; i++){
		for(int j = 1; j <= longitud; j++){
			if(primo(j)){
				des[j] = mensaje[i];
				i++;
			}
		}
	}

	//ordenando el grupo de pares NO PRIMOS
	for(int i = pri + 1; i <= pri+seg; i++){
		for(int j = 1; j <= longitud; j++){
			if(j != 2 && j % 2 == 0){
				des[j] = mensaje[i];
				i++;
			}
		}
	}

	//ordenando el ultimo grupo
	for(int i = pri+seg + 1; i <= longitud; i++){
		for(int j = 1; j <= longitud; j++){
			if(!primo(j) && impar(j)){
				des[j] = mensaje[i];
				i++;
			}
		}
	}


	String descifrado = "";
	for(int i = 1; i <= longitud; i++){
		descifrado = descifrado + des[i];
	}
	RichEdit4->Text = descifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Cifrar3Click(TObject *Sender)
{
	//Cifrado por columnas
	   String mensaje = RichEdit1->Text;

	int columnas = 0;

	try{
		columnas = StrToInt(InputBox("Columnas", "Cantidad de columnas: ", ""));
	} catch(const Exception &e){
		ShowMessage("Debe ingresar un numero valido!");
	}

	String matriz[500][500];
	String cadena = "";
	mensaje = rellenar(limpiarCadena(mensaje), columnas);

	for(int m = 1; m <= mensaje.Length(); m++){
		for(int i = 1; i <= (mensaje.Length()/columnas); i++){
			for(int j = 1; j <= columnas; j++){
				matriz[i][j] = mensaje[m];
				m++;
			}

		}
	}

	String cifrado = "";

	for(int i = 1; i <= columnas; i++){
		for(int j = 1; j <= (mensaje.Length()/columnas); j++){
			cifrado = cifrado + matriz[j][i];
		}
	}


	RichEdit2->Text = cifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Descifrar3Click(TObject *Sender)
{
	// Descifrado por columnas
	String mensaje = RichEdit2->Text;
	RichEdit3->Text = mensaje;

	int columnas = 0;

	try{
		columnas = StrToInt(InputBox("Columnas", "Cantidad de columnas: ", "3"));
	} catch(const Exception &e){
		ShowMessage("Debe ingresar un numero valido!");
	}

	String matriz[500][500];

	mensaje = limpiarCadena(mensaje);


	for(int m = 1; m <= mensaje.Length(); m++){
		for(int i = 1; i <= columnas; i++){
			for(int j = 1; j <= (mensaje.Length()/columnas); j++){
				matriz[i][j] = mensaje[m];
				m++;
			}
		}
	}

	String descifrado = "";

	for(int i = 1; i <= (mensaje.Length()/columnas); i++){
		for(int j = 1; j <= columnas; j++){
			descifrado = descifrado + matriz[j][i];
		}
	}


	RichEdit4->Text = descifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Cifrar4Click(TObject *Sender)
{
	//Cifrado por Filas

	String mensaje = RichEdit1->Text;

	int filas = 0;

	try{
		filas = StrToInt(InputBox("Filas", "Cantidad de filas: ", ""));
	} catch(const Exception &e){
		ShowMessage("Debe ingresar un numero valido!");
	}

	String matriz[500][500];

	mensaje = rellenar(limpiarCadena(mensaje), filas);


	for(int m = 1; m <= mensaje.Length(); m++){
		for(int i = 1; i <= (mensaje.Length()/filas); i++){
			for(int j = 1; j <= filas; j++){
				matriz[j][i] = mensaje[m];
				m++;
			}
		}
	}

	String cifrado = "";

	for(int i = 1; i <= filas; i++){
		for(int j = 1; j <= (mensaje.Length()/filas); j++){
			cifrado = cifrado + matriz[i][j];
		}
	}


	RichEdit2->Text = cifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Descifrar4Click(TObject *Sender)
{
	// Descifrado por filas
	String mensaje = RichEdit2->Text;
	RichEdit3->Text = mensaje;

	int filas = 0;

	try{
		filas = StrToInt(InputBox("Filas", "Cantidad de filas: ", "3"));
	} catch(const Exception &e){
		ShowMessage("Debe ingresar un numero valido!");
	}

	String matriz[500][500];

	mensaje = limpiarCadena(mensaje);


	for(int m = 1; m <= mensaje.Length(); m++){
		for(int i = 1; i <= filas; i++){
			for(int j = 1; j <= (mensaje.Length()/filas); j++){
				matriz[j][i] = mensaje[m];
				m++;
			}
		}
	}

	String descifrado = "";

	for(int i = 1; i <= (mensaje.Length()/filas); i++){
		for(int j = 1; j <= filas; j++){
			descifrado = descifrado + matriz[i][j];
		}
	}


	RichEdit4->Text = descifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Cifrar5Click(TObject *Sender)
{
	// Cifrado Zig Zag
	String texto = RichEdit1->Text;
	int filas = StrToInt(InputBox("Filas", "Filas: ", "3"));
	texto  = rellenoZigZag(limpiarCadena(texto), filas);
	int f = 1;
	int c = 1;
	bool sw = true;
	String matriz[100][500];

	for(int i = 1; i <= filas; i++){
		for(int j = 1; j <= texto.Length(); j++){
			matriz[i][j] = "";
		}
	}


	for(int i = 1; i <= texto.Length(); i++){
		matriz[f][c] = texto[i];
		//desciende
		if(sw){
			if(f != filas){
				f++;
			} else {
				sw = false;
				f--;
			}
		}else{
			if(f != 1){
				f--;
			} else {
				sw = true;
				f++;
			}
		}
		c++;
	}

	String cifrado = "";
	for(int i = 1; i <= filas; i++){
		for(int j = 1; j <= texto.Length(); j++){
			cifrado = cifrado + matriz[i][j];
		}
	}

	RichEdit2->Text = cifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Descifrar5Click(TObject *Sender)
{
	// Descifrado Zig Zag

	String texto = RichEdit2->Text;
	RichEdit3->Text = texto;
	int filas = StrToInt(InputBox("Filas", "Filas: ", "3"));

	String descifrado = "";

	//inicializando
	int msgLen = texto.Length(), i, j, k = -1, row = 1, col = 1, m = 1;
	String railMatrix[100][500];

	//matriz vacia
	for(i = 1; i <= filas; ++i)
		for(j = 1; j <= msgLen; ++j)
			railMatrix[i][j] = "";

	//rellenar con * el zig zag
	for(i = 1; i <= msgLen; ++i){
		railMatrix[row][col++] = "*";

		if(row == 1 || row == filas)
			k= k * (-1);

        row = row + k;
    }

	//Reemplazando * por el texto
	for(i = 1; i <= filas; ++i)
		for(j = 1; j <= msgLen; ++j)
			if(railMatrix[i][j] == "*")
				railMatrix[i][j] = texto[m++];

	row = col = 1;
	k = -1;

    //Leyendo en zig zag
	for(i = 1; i <= msgLen; ++i){
		descifrado = descifrado + railMatrix[row][col++];

		if(row == 1 || row == filas)
			k= k * (-1);

        row = row + k;
	}

	RichEdit4->Text = descifrado;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Descifrar1Click(TObject *Sender)
{
	//DESCIFRAR POR GRUPO
	String s = RichEdit2->Text;
	RichEdit3->Text = s;
	String clave = "";
//	do{
		clave = InputBox("Key o Clave", "Clave: ", "Solo numeros [1 - 9]");
		clave = clave.Trim();
//	} while(clave.Length() == 0);

	int const columnas = clave.Length();
	String mensaje = rellenar(limpiarCadena(s), columnas);
	int const filas = mensaje.Length() / columnas;

	String matriz[1000][20];
	String matriz2[1000][20];

	for(int m = 1; m <= mensaje.Length(); m++){
		for(int i = 1; i <= filas; i++){
			for(int j = 1; j <= columnas; j++){
				matriz[i][j] = mensaje[m];
				m++;
			}
		}
	}

	// Cargando matriz
//	int coll = 0;
//	for(int m = 1; m <= mensaje.Length(); m++){
////		for(int i = 1; i <= filas; i++){
//			for(int j = 1; j <= clave.Length(); j++){
//				coll = StrToInt(clave[j]);
////				matriz[i][j] = mensaje[m];
////				m++;
//				for(int k = 1; k <= filas; k++){
////					colX = colX + matriz[i][col];
//					matriz[k][coll] = mensaje[m];
//					m++;
//				}
//			}
////		}
//	}
//	String a = "";
//	for (int i = 1; i <= 20; i++) {
//		for (int j = 1; j <= 20; j++) {
//			 if (matriz[i][j] == " " || matriz[i][j] == "") {
//				a = a + "_";
//			 }
//			 a = a + matriz[i][j];
//		}
//		a = a + "\n";
//	}
//	RichEdit2->Text = a;
//	return;

	String colX = "";

	//copiando ordenado segun la clave
	int col = 0;

	//se recorre toda la clave
	for(int x = 1; x <= clave.Length(); x++){

		//se copia la columna correspondiente al primer caracter de la clave
		col = StrToInt(clave[x]);
		for(int i = 1; i <= filas; i++){
			colX = colX + matriz[i][x];
		}

		//se pega en la nueva matriz recorriendo la columna copiada
		for(int f = 1; f <= filas; f++){
			matriz2[f][col] = colX[f];
		}
		colX = "";
	}

//	String a = "";
//	for (int i = 1; i <= 20; i++) {
//		for (int j = 1; j <= 20; j++) {
////			if (matriz[i][j] == " " || matriz[i][j] == "") {
////				a = a + "_";
////			 }
//			 a = a + matriz[j][i];
//		}
//		a = a + "\n";
//	}
//	RichEdit2->Text = a;
//	return;

	String cifrado = "";

	for(int j = 1; j <= 20; j++){
		for(int i = 1; i <= 20; i++){
			cifrado = cifrado + matriz2[i][j];
		}
		cifrado = cifrado + " ";
	}


	RichEdit4->Text = cifrado;
}
//---------------------------------------------------------------------------

