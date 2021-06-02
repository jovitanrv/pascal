program penyewaanKendaraan;

uses crt;

const Nmax = 20;
	type penyewa = record
						nama, jk, tglsewa, nomorhp, kodekend : string;
						lamasewa, id : integer;
						biayatotal, biayaperhari : real;
					end;
	type listpenyewa = array[1..Nmax] of penyewa;
var
	x, i : integer;
	j:integer=0;
	jum:integer=0; {data member}
	datpenyewa : listpenyewa;
	ArsipPenyewa : file of penyewa;
//__________________________________________________________________________________________________________________________________________

procedure loadData;
	begin
		assign(ArsipPenyewa,'penyewa.txt');
		reset(ArsipPenyewa);
		while not eof(ArsipPenyewa) do
		begin		 	
		 	jum:=jum+1;
		 	read(ArsipPenyewa,datpenyewa[jum]);
		 end;
	end;

procedure saveData;
	begin

		Rewrite(ArsipPenyewa);
		for i:=1 to jum do
		begin
			write(ArsipPenyewa,datpenyewa[i]);
		end;
		close(ArsipPenyewa);
	end;
//___________________________________________________________________________________________________________________________________________

procedure opening;
	begin
	clrscr;
		gotoxy(30, 7); writeln('===================================================');
		gotoxy(30, 8); writeln('|                                                 |');
		gotoxy(30, 9); writeln('|                 SELAMAT DATANG DI               |');
		gotoxy(30, 10); writeln('|                AZKABAN VEHICLE RENT             |');
		gotoxy(30, 11); writeln('|                                                 |');
		gotoxy(30, 12); writeln('|                                                 |');
		gotoxy(30, 13); writeln('|            Dimana anda dapat berkendara         |');
		gotoxy(30, 14); writeln('|           nyaman dengan harga terjangkau        |');
    	gotoxy(30, 15); writeln('|                                                 |');
    	gotoxy(30, 16); writeln('|                                                 |');
    	gotoxy(30, 17); writeln('|                                                 |');
    	gotoxy(30, 18); writeln('|                                                 |');
		gotoxy(30, 19); writeln('|                                      30/11/2017.|');
		gotoxy(30, 20); writeln('|                     created by: Jovita Nurvania.|');
		gotoxy(30, 21); writeln('===================================================');
		gotoxy(30, 22); writeln('                                                ');
		gotoxy(30, 23); writeln('                                                ');
		gotoxy(30, 24); writeln('                                                ');
		gotoxy(30, 25); writeln('                   tekan enter untuk melanjutkan');
		gotoxy(30, 26); writeln('                   -----------------------------');
		readln;
	end;

//___________________________________________________________________________________________________________________________________________

procedure mobil;
	var
		pilmobil : integer;

	begin
		repeat
		clrscr;
			gotoxy(30, 7); writeln('====================================================');
			gotoxy(30, 8); writeln('|                PILIHAN MOBIL                     |');
			gotoxy(30, 9); writeln('|==================================================|');
			gotoxy(30, 10); writeln('|                                                  |');
			gotoxy(30, 11); writeln('|            1. Honda Brio                         |');
			gotoxy(30, 12); writeln('|            2. Suzuki Karimun                     |');
			gotoxy(30, 13); writeln('|            3. Daihatsu Ayla                      |');
			gotoxy(30, 14); writeln('|            4. Toyota Avanza                      |');
			gotoxy(30, 15); writeln('|            5. Toyota Alphard                     |');
			gotoxy(30, 16); writeln('|                                                  |');
			gotoxy(30, 17); writeln('|            0. Exit                               |');
			gotoxy(30, 18); writeln('|                                                  |'); 
			gotoxy(30, 19); writeln('====================================================');
			gotoxy(30, 22); write('Kode Mobil yang anda pilih: ');
			readln(pilmobil);
			case pilmobil of
					1:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 150.000');
						datpenyewa[jum].biayaperhari := 150.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='HBR';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					2:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 150.000');
						datpenyewa[jum].biayaperhari := 150.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='KRM';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					3:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 200.000');
						datpenyewa[jum].biayaperhari := 200.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='AYL';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					4:begin						
						gotoxy(30, 25); writeln('Biaya perhari : Rp 300.000');
						datpenyewa[jum].biayaperhari := 300.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='AVZ';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					5:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 800.000');
						datpenyewa[jum].biayaperhari := 800.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='ALP';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					0:begin
						opening;
					end;
			end;
		until (pilmobil=0);
	end;

procedure motor;
	var
		pilmotor: integer;

	begin
		repeat
		clrscr;
			gotoxy(30, 7); writeln('====================================================');
			gotoxy(30, 8); writeln('|                 PILIHAN MOTOR                    |');
			gotoxy(30, 9); writeln('|==================================================|');
			gotoxy(30, 10); writeln('|                                                  |');
			gotoxy(30, 11); writeln('|             1. Honda Spacy                       |');
			gotoxy(30, 12); writeln('|             2. Yamaha Nmax                       |');
			gotoxy(30, 13); writeln('|             3. Honda Vixion                      |');
			gotoxy(30, 14); writeln('|             4. Honda Scoopy                      |');
			gotoxy(30, 15); writeln('|             5. Honda Beat                        |');
			gotoxy(30, 16); writeln('|                                                  |');
			gotoxy(30, 17); writeln('|             0. Exit                              |');
			gotoxy(30, 18); writeln('|                                                  |');
			gotoxy(30, 19); writeln('====================================================');
			gotoxy(30, 22); write('Kode Motor yang anda pilih: '); 
			readln(pilmotor);
				case pilmotor of
					1:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 50.000');
						datpenyewa[jum].biayaperhari := 50.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='SPC';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					2:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 60.000');
						datpenyewa[jum].biayaperhari := 60.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='NMX';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					3:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 70.000');
						datpenyewa[jum].biayaperhari := 70.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='VXN';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					4:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 50.000');
						datpenyewa[jum].biayaperhari := 50.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='SPY';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					5:begin
						gotoxy(30, 25); writeln('Biaya perhari : Rp 40.000');
						datpenyewa[jum].biayaperhari := 40.000;
						datpenyewa[jum].biayatotal:=datpenyewa[jum].biayaperhari*datpenyewa[jum].lamasewa;
						gotoxy(30, 26); writeln('Biaya total : Rp ',datpenyewa[jum].biayatotal:3:3);
						datpenyewa[jum].kodekend:='HBT';
						gotoxy(30, 27); writeln('Kode Kendaraan : ',datpenyewa[jum].kodekend);
						readln;
					end;
					0:begin
						opening;
					end;
				end;
		until (pilmotor=0);
	end;
//___________________________________________________________________________________________________________________

procedure pilihanKendaraan;
	begin
		//repeat
		clrscr;
			gotoxy(30, 7); writeln('====================================================');
			gotoxy(30, 8); writeln('|             PILIHAN KENDARAAN                    |');
			gotoxy(30, 9); writeln('|==================================================|');
			gotoxy(30, 10); writeln('|                                                  |');
			gotoxy(30, 11); writeln('|              1. Motor                            |');
			gotoxy(30, 12); writeln('|              2. Mobil                            |');
			gotoxy(30, 13); writeln('|                                                  |');
			gotoxy(30, 14); writeln('|              0. Back                             |');
			gotoxy(30, 15); writeln('|                                                  |');
			gotoxy(30, 16); writeln('====================================================');
			gotoxy(30, 19); write('   Kode Kendaraan yang anda pilih: ');	
			readln(x);
				case x of
					1:begin
						motor;
						end;
					2:begin
						mobil;
					end;
					0:begin

					end;
				end;
		//until (x=0);
	end;

//___________________________________________________________________________________________________________________________

function cariData1(search : string): integer;
    var

    temp : integer;
    cek : boolean;
    begin
        cariData1:=0;
    	temp:=0;
    	cek := false;
    	j:=0;
    		while ((not cek) and (j<=jum)) do
    		begin
    			if (datpenyewa[j].nama = search) then
    				begin
    					cek := true;
    					temp:= j;
       				end
    			else
    				begin
    					j:=j+1;
    				end;
				cariData1:=temp;
			end;
	readln;
    end;

//______________________________________________________________________________________________________________________________

procedure sortData;
	var 
		temp2: penyewa;
		k: integer;
		i: integer;
	begin
		for i:=jum downto 2 do
		begin
			for k:= 2 to i do
			begin
				if (datpenyewa[k].lamasewa > datpenyewa[k-1].lamasewa) then
				begin
					temp2 := datpenyewa[k];
					datpenyewa[k] := datpenyewa[k-1];
					datpenyewa[k-1] := temp2;
				end;
			end;
		end;
	end;

procedure tampilData;
	var
		i:integer;
	begin
		clrscr;
		for i:=1 to jum do
		begin
			sortData;
			gotoxy(30, 7); writeln('===================================================');
			gotoxy(30, 9); writeln('Nomor Pelanggan : ',datpenyewa[i].id);
			gotoxy(30, 10); writeln('Nama : ',datpenyewa[i].nama);
    		gotoxy(30, 11); writeln('Nomor Handphone : ',datpenyewa[i].nomorhp);
    		gotoxy(30, 12); writeln('Jenis Kelamin : ',datpenyewa[i].jk);
    		gotoxy(30, 13); writeln('Tanggal Sewa : ',datpenyewa[i].tglsewa);
    		gotoxy(30, 14); writeln('Lama Sewa : ',datpenyewa[i].lamasewa);
    		gotoxy(30, 15); writeln('Kode Kendaraan : ',datpenyewa[i].kodekend);
    		gotoxy(30, 16); writeln('Biaya perhari : Rp ',datpenyewa[i].biayaperhari:3:3);
    		gotoxy(30, 17); writeln('Biaya total : Rp ',datpenyewa[i].biayatotal:3:3);
    		gotoxy(30, 18); writeln;
    		gotoxy(30, 19); writeln('==================================================');
    		readln;
		end;
	end;

//_______________________________________________________________________________________________________________________

procedure datagagaldihapus;
	begin
		clrscr;
		gotoxy(30, 13); writeln('=========================================================');
    	gotoxy(30, 14); writeln('|                     TERIMAKASIH                       |');
    	gotoxy(30, 15); writeln('=========================================================');
    	readln;
	end;

procedure datadihapus;
	begin
		clrscr;
		gotoxy(30, 13); writeln('=========================================================');
        gotoxy(30, 14); writeln('|                DATA BERHASIL DIHAPUS                  |');
        gotoxy(30, 15); writeln('=========================================================');
        readln;
	end;

procedure hapusData;
	var
		hps,j : integer;
		yt : string;
		temp : penyewa;
	begin
		clrscr;
		gotoxy(30, 7); writeln('======================================================');
		gotoxy(30, 8); writeln('|                                                    |');
		gotoxy(30, 9); writeln('|                                                    |');
		gotoxy(30, 10); writeln('|             SELAMAT DATANG DI MENU UNTUK           |');
		gotoxy(30, 11); writeln('|                MENGHAPUS DATA PENYEWA              |');
		gotoxy(30, 12); writeln('|                                                    |');
		gotoxy(30, 13); writeln('|                                                    |');
		gotoxy(30, 14); writeln('======================================================');
		writeln;
		gotoxy(30, 17); write('Masukkan nomor pelanggan yang ingin dihapus: ');
		readln(hps);
		if ((hps <= jum) and (hps>0)) then
			begin
			clrscr;
			gotoxy(30, 8); writeln('========================================================');
			gotoxy(30, 9); writeln('|             DATA PENYEWA YANG AKAN DIHAPUS           |');
			gotoxy(30, 10); writeln('========================================================');
			gotoxy(30, 12); writeln('Pelanggan nomor : ',datpenyewa[hps].id);
    		gotoxy(30, 13); writeln('Nama : ',datpenyewa[hps].nama);
    		gotoxy(30, 14); writeln('Nomor handphone: ',datpenyewa[hps].nomorhp);
    		gotoxy(30, 15); writeln('Jenis Kelamin : ',datpenyewa[hps].jk);
    		gotoxy(30, 16); writeln('Tanggal sewa : ',datpenyewa[hps].tglsewa);
    		gotoxy(30, 17); writeln('Lama sewa : ',datpenyewa[hps].lamasewa);
    		gotoxy(30, 18); writeln('Kode Kendaraan : ',datpenyewa[hps].kodekend);
    		gotoxy(30, 19); writeln('Biaya perhari : Rp ',datpenyewa[hps].biayaperhari:3:3);
    		gotoxy(30, 20); writeln('Biaya total : Rp ',datpenyewa[hps].biayatotal:3:3);
    		gotoxy(30, 24); write('Apakah anda yakin pelanggan ke-',hps,' sudah mengembalikan kendaraan? [y/t] '); readln(yt);
    			if (yt='y') then
    				begin
    				datpenyewa[hps].id := 0;
    				datpenyewa[hps].nama := ' ';
    				datpenyewa[hps].nomorhp := ' ';
   		 			datpenyewa[hps].jk := ' ';
   					datpenyewa[hps].tglsewa := ' ';
   					datpenyewa[hps].lamasewa := 0;
   					datpenyewa[hps].biayaperhari := 0;
   					datpenyewa[hps].biayatotal := 0;
    				for j:=1 to jum-1 do
   						begin
    					if ((datpenyewa[hps].id=0)and(datpenyewa[hps].nama='')and(datpenyewa[hps].nomorhp='')and(datpenyewa[hps].jk='')and(datpenyewa[hps].tglsewa='')and(datpenyewa[hps].lamasewa=0)and(datpenyewa[hps].biayaperhari=0)and(datpenyewa[hps].biayatotal=0)) then
    						begin
    						temp:=datpenyewa[j];
    						datpenyewa[j]:=datpenyewa[j+1];
    						datpenyewa[j+1]:=temp;
    						end;
    					end;
    					jum:=jum-1;   
    					datadihapus;
                	end
    			else
    				datagagaldihapus;
    		end
    	else if ((hps > jum) and (hps<=0)) then
    		begin
    		clrscr;
			gotoxy(30, 8); writeln('========================================================');
			gotoxy(30, 9); writeln('|             DATA YANG DICARI BELUM ADA               |');
			gotoxy(30, 10); writeln('========================================================');
			readln;
    		end;  	
    readln;
    end;

//_______________________________________________________________________________________________________________________

procedure editData;
	var
		nomorp: Integer;
	begin
		clrscr;
		gotoxy(30, 7); writeln('======================================================');
		gotoxy(30, 8); writeln('|                                                    |');
		gotoxy(30, 9); writeln('|                                                    |');
		gotoxy(30, 10); writeln('|             SELAMAT DATANG DI MENU UNTUK           |');
		gotoxy(30, 11); writeln('|                MENGEDIT DATA PENYEWA               |');
		gotoxy(30, 12); writeln('|                                                    |');
		gotoxy(30, 13); writeln('|                                                    |');
		gotoxy(30, 14); writeln('======================================================');
		gotoxy(30, 16); write(' Masukkan nomor pelanggan yang ingin diedit : ');
		readln(nomorp);
		if ((nomorp <= jum) and (nomorp>0)) then
			begin
				clrscr;
				gotoxy(30, 2); writeln('========================================================');
				gotoxy(30, 3); writeln('|           DATA PENYEWA YANG INGIN DIEDIT             |');
				gotoxy(30, 4); writeln('========================================================');
				gotoxy(30, 6); writeln('Nomor pelanggan : ',datpenyewa[nomorp].id);
				gotoxy(30, 7); writeln('Nama : ',datpenyewa[nomorp].nama);
    			gotoxy(30, 8); writeln('Nomor hape : ',datpenyewa[nomorp].nomorhp);
    			gotoxy(30, 9); writeln('Jenis Kelamin : ',datpenyewa[nomorp].jk);
    			gotoxy(30, 10); writeln('Tanggal sewa : ',datpenyewa[nomorp].tglsewa);
    			gotoxy(30, 11); writeln('Lama sewa : ',datpenyewa[nomorp].lamasewa);
    			gotoxy(30, 12); writeln('Kode Kendaraan : ',datpenyewa[nomorp].kodekend);
    			gotoxy(30, 13); writeln('Biaya perhari : Rp ',datpenyewa[nomorp].biayaperhari:3:3);
    			gotoxy(30, 14); writeln('Biaya total : Rp ',datpenyewa[nomorp].biayatotal:3:3);
				gotoxy(30, 16); writeln('========================================================');
				gotoxy(30, 17); writeln('|                 EDIT DATA PENYEWA                    |');
				gotoxy(30, 18); writeln('========================================================');
				gotoxy(30, 19); writeln;

					gotoxy(30, 20); writeln(' Nomor pelanggan : ',datpenyewa[nomorp].id);
				repeat
					gotoxy(30, 21); write(' Nama : '); readln(datpenyewa[nomorp].nama);
				until ((datpenyewa[nomorp].nama)<>'');
				repeat
					gotoxy(30, 22); write(' Nomor handphone : '); readln(datpenyewa[nomorp].nomorhp);
				until ((datpenyewa[nomorp].nomorhp)<>'');
				repeat
					gotoxy(30, 23); write(' Jenis kelamin [l/p] :  '); readln(datpenyewa[nomorp].jk);
				until ((datpenyewa[nomorp].jk)<>'');
				repeat
					gotoxy(30, 24); write(' Tanggal sewa (dd/mm/yy) :  '); readln(datpenyewa[nomorp].tglsewa);
				until ((datpenyewa[nomorp].tglsewa)<>'');
				repeat
					gotoxy(30, 25); write(' Lama sewa (dalam hari) :   '); readln(datpenyewa[nomorp].lamasewa);
				until ((datpenyewa[nomorp].lamasewa)>=1);
				writeln;
				gotoxy(30, 27); writeln('========================================================');
				gotoxy(30, 28); writeln('|                DATA BERHASIL DIPERBARUI              |');
				gotoxy(30, 29); writeln('========================================================');
				readln;
			end;
	end;
//__________________________________________________________________________________________________________________

procedure cariData;
    var
    temp: Integer;
    search: string;
    begin
    	clrscr;
    	gotoxy(30, 7); writeln('================================================');
    	gotoxy(30, 8); write('Masukan Nama Yang Ingin Dicari = ');
    	readln(search);
    	gotoxy(30, 9); writeln('================================================');
    	temp := cariData1(search);
    	if temp <> 0 then
    		begin
    			gotoxy(30, 12); writeln('Nomor pelanggan : ',datpenyewa[temp].id);
    			gotoxy(30, 13); writeln('Nama : ',datpenyewa[temp].nama);
    			gotoxy(30, 14); writeln('Nomor handphone: ',datpenyewa[temp].nomorhp);
    			gotoxy(30, 15); writeln('Jenis Kelamin : ',datpenyewa[temp].jk);
    			gotoxy(30, 16); writeln('Tanggal sewa : ',datpenyewa[temp].tglsewa);
    			gotoxy(30, 17); writeln('Lama sewa : ',datpenyewa[temp].lamasewa);
    			gotoxy(30, 18); writeln('Kode Kendaraan : ',datpenyewa[temp].kodekend);
    			gotoxy(30, 19); writeln('Biaya perhari : Rp ',datpenyewa[temp].biayaperhari:3:3);
    			gotoxy(30, 20); writeln('Biaya total : Rp ',datpenyewa[temp].biayatotal:3:3);
    			readln;
    		end
    	else
    		begin
    		clrscr;
    		gotoxy(30, 11); writeln('===============================================');
    		gotoxy(30, 12); writeln('| Nama yang anda cari tidak ditemukan datanya |');
    		gotoxy(30, 13); writeln('===============================================');
    		end;
    readln;
    end;
//_____________________________________________________________________________________________________________________

procedure pendaftarbaru;
	begin
		if jum <= Nmax then
		begin
			jum:=jum+1;
			clrscr;
			gotoxy(30, 6); writeln('============================================================');
			gotoxy(30, 7); writeln('|                    SILAHKAN MENDAFTAR                    |');
			gotoxy(30, 8); writeln('============================================================');
			gotoxy(30, 10); writeln(' Nomor pelanggan : ',jum);
			datpenyewa[jum].id := jum;
			repeat
				gotoxy(30, 11); write(' Nama : '); readln(datpenyewa[jum].nama);
			until ((datpenyewa[jum].nama)<>'');
			repeat
				gotoxy(30, 12); write(' Nomor handphone : '); readln(datpenyewa[jum].nomorhp);
			until ((datpenyewa[jum].nomorhp)<>'');
			repeat
				gotoxy(30, 13); write(' Jenis kelamin [l/p] :  '); readln(datpenyewa[jum].jk);
			until ((datpenyewa[jum].jk)<>'');
			repeat
				gotoxy(30, 14); write(' Tanggal sewa (dd/mm/yy) :  '); readln(datpenyewa[jum].tglsewa);
			until ((datpenyewa[jum].tglsewa)<>'');
			repeat
				gotoxy(30, 15); write(' Lama sewa (dalam hari) :   '); readln(datpenyewa[jum].lamasewa);
			until ((datpenyewa[jum].lamasewa)>=1);
			writeln;
			gotoxy(30, 18); writeln('============================================================');
			gotoxy(30, 19); writeln('|           tekan enter untuk memilih kendaraan            |');
			gotoxy(30, 20); writeln('============================================================');
			readln;
			pilihanKendaraan();			
	    end
	    else
	    begin
	    	gotoxy(30, 13); writeln('============================================================');
	    	gotoxy(30, 14); writeln('|               Maaf, kendaraan sudah habis.               |');
	    	gotoxy(30, 15); writeln('|                Mohon datang lain kali.                   |');
	    	gotoxy(30, 16); writeln('============================================================');
	    end;
    end;
//_____________________________________________________________________________________________________

procedure home;
   	var
   		pilmenu:integer;
	begin
	clrscr;
		repeat
			clrscr;
				gotoxy(30, 7); writeln('=====================================================================');
				gotoxy(30, 8); writeln('|                   MENU UTAMA :                                    |');
				gotoxy(30, 9); writeln('|===================================================================|');
				gotoxy(30, 10); writeln('|                                                                   |');
				gotoxy(30, 11); writeln('|          1. Menyewa kendaraan                                     |');
				gotoxy(30, 12); writeln('|          2. Mencari data                                          |');
				gotoxy(30, 13); writeln('|          3. Edit data                                             |');
				gotoxy(30, 14); writeln('|          4. Hapus data (Kendaraan sudah dikembalikan)             |');
				gotoxy(30, 15); writeln('|          5. Tampilkan Data                                        |');
        		gotoxy(30, 16); writeln('|                                                                   |');
				gotoxy(30, 17); writeln('|          0. Exit                                                  |');
				gotoxy(30, 18); writeln('|                                                                   |');
				gotoxy(30, 19); writeln('=====================================================================');
				gotoxy(30, 20); writeln;
				gotoxy(44, 22); write('Pilih nomor: ');
				readln(pilmenu);
					case pilmenu of
						1: pendaftarbaru;
				    	2: cariData;
			       		3: editData;
						4: hapusData;
						5: tampilData;
					end;
		until (pilmenu=0);
	end;

//__________________________________________________________________________________________________________

BEGIN
	jum:=0;
	textbackground(7);
	textcolor(1);
	loadData;
	opening;
	home;
	saveData;
	readln;
END.
