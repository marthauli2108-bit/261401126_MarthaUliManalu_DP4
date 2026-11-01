program UrutNilaiUAS;
uses crt;

//METODE: input n (1-5). Tiap mahasiswa diinput 4 nilai (tugas, kuis, UTS, UAS), rata-rata = jumlah / 4. Kalau rata-rata >= 70 berarti LULUS, kalau tidak TIDAK LULUS. 
var
    n, i : integer;
    tugas, kuis, uts, uas, rata : real;

begin
    clrscr;
//input jumlah mahasiswa, ulangi kalau di luar 1..5 
    repeat
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);
    if (n < 1) or (n > 5) then
        writeln('Jumlah harus antara 1 sampai 5!');
    until (n >= 1) and (n <= 5);

    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);
        write('  Nilai tugas : '); readln(tugas);
        write('  Nilai kuis  : '); readln(kuis);
        write('  Nilai UTS   : '); readln(uts);
        write('  Nilai UAS   : '); readln(uas);

//hitung rata-rata 
    rata := (tugas + kuis + uts + uas) / 4;

//tentukan lulus atau tidak
    writeln('  Rata-rata   : ', rata:0:2);
    if rata >= 70 then
        writeln('  Status      : LULUS')
    else
        writeln('  Status      : TIDAK LULUS');
    end;

readln;
end.