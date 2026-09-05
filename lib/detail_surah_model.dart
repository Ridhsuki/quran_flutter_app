import 'dart:convert';

class SurahModel {
    final int? code;
    final String? message;
    final Data? data;

    SurahModel({
        this.code,
        this.message,
        this.data,
    });

    factory SurahModel.fromJson(String str) => SurahModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SurahModel.fromMap(Map<String, dynamic> json) => SurahModel(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "message": message,
        "data": data?.toMap(),
    };
}

class Data {
    final int? nomor;
    final String? nama;
    final String? namaLatin;
    final int? jumlahAyat;
    final String? tempatTurun;
    final String? arti;
    final String? deskripsi;
    final Map<String, String>? audioFull;
    final List<Ayat>? ayat;
    final SuratSelanjutnya? suratSelanjutnya;
    final bool? suratSebelumnya;

    Data({
        this.nomor,
        this.nama,
        this.namaLatin,
        this.jumlahAyat,
        this.tempatTurun,
        this.arti,
        this.deskripsi,
        this.audioFull,
        this.ayat,
        this.suratSelanjutnya,
        this.suratSebelumnya,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        nomor: json["nomor"],
        nama: json["nama"],
        namaLatin: json["namaLatin"],
        jumlahAyat: json["jumlahAyat"],
        tempatTurun: json["tempatTurun"],
        arti: json["arti"],
        deskripsi: json["deskripsi"],
        audioFull: Map.from(json["audioFull"]!).map((k, v) => MapEntry<String, String>(k, v)),
        ayat: json["ayat"] == null ? [] : List<Ayat>.from(json["ayat"]!.map((x) => Ayat.fromMap(x))),
        suratSelanjutnya: json["suratSelanjutnya"] == null ? null : SuratSelanjutnya.fromMap(json["suratSelanjutnya"]),
        suratSebelumnya: json["suratSebelumnya"],
    );

    Map<String, dynamic> toMap() => {
        "nomor": nomor,
        "nama": nama,
        "namaLatin": namaLatin,
        "jumlahAyat": jumlahAyat,
        "tempatTurun": tempatTurun,
        "arti": arti,
        "deskripsi": deskripsi,
        "audioFull": Map.from(audioFull!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "ayat": ayat == null ? [] : List<dynamic>.from(ayat!.map((x) => x.toMap())),
        "suratSelanjutnya": suratSelanjutnya?.toMap(),
        "suratSebelumnya": suratSebelumnya,
    };
}

class Ayat {
    final int? nomorAyat;
    final String? teksArab;
    final String? teksLatin;
    final String? teksIndonesia;
    final Map<String, String>? audio;

    Ayat({
        this.nomorAyat,
        this.teksArab,
        this.teksLatin,
        this.teksIndonesia,
        this.audio,
    });

    factory Ayat.fromJson(String str) => Ayat.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Ayat.fromMap(Map<String, dynamic> json) => Ayat(
        nomorAyat: json["nomorAyat"],
        teksArab: json["teksArab"],
        teksLatin: json["teksLatin"],
        teksIndonesia: json["teksIndonesia"],
        audio: Map.from(json["audio"]!).map((k, v) => MapEntry<String, String>(k, v)),
    );

    Map<String, dynamic> toMap() => {
        "nomorAyat": nomorAyat,
        "teksArab": teksArab,
        "teksLatin": teksLatin,
        "teksIndonesia": teksIndonesia,
        "audio": Map.from(audio!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}

class SuratSelanjutnya {
    final int? nomor;
    final String? nama;
    final String? namaLatin;
    final int? jumlahAyat;

    SuratSelanjutnya({
        this.nomor,
        this.nama,
        this.namaLatin,
        this.jumlahAyat,
    });

    factory SuratSelanjutnya.fromJson(String str) => SuratSelanjutnya.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SuratSelanjutnya.fromMap(Map<String, dynamic> json) => SuratSelanjutnya(
        nomor: json["nomor"],
        nama: json["nama"],
        namaLatin: json["namaLatin"],
        jumlahAyat: json["jumlahAyat"],
    );

    Map<String, dynamic> toMap() => {
        "nomor": nomor,
        "nama": nama,
        "namaLatin": namaLatin,
        "jumlahAyat": jumlahAyat,
    };
}

