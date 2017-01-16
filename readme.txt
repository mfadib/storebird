
/*==========================*/
/*======== SISTEM ==========*/
/*====== STORE BIRD ========*/
/*==========================*/

PENJELASAN

ya oke ini penjelasan
tentang aplikasi storebird
sistem berbasis mobile android
dan dengan api server menggunakan
php framework lumen
pertama kita bahas terlebih dahulu tentang
restApi, dalam restapi server terdiri dari 4 komponen yaitu
User=
untuk manajemen user
Post=
untuk manajemen postingan (info, tips trik, dan news/blog oleh admin)
Forum=
untuk manajemen forum didalam sistem
Store=
untuk manajemen penjualan yang dilakukan oleh admin
comment=
untuk manajemn komentar post,forum dan store

dan inilah penjelasan rest yang digunakan.

url birds ini menggunakan
Controller
dengan fungsi View
ini adalah controller BirdController dengan fungsi view, difungsi ini mengakses
model Bird untuk mengakses database Birds yang ada diserver
OrderBy untuk mengurutkan hasil dari respon yang mengguankan field updated_at dengan jenis DESC-ENDING(dari yang terakhir di update)
dengan message null, tidak ada pesan karena status TRUE dan ini contoh FALSE dengan message keterangan pesan
dan begitu controller dan respon yang lainnya sama seperti yang sudah dijelaskan, hasil dari restapi ini akan berbentuk json yang akan diterima oleh sistem android untuk merespon data dan mengolahnya atau menampilkannya.
ini contoh hasil dari restapi dengan url
storebird.mfadib.com/api/v1/forums
yang akan mendapatkan hasil data semua forum yang ada disistem, contoh diatas terdapat 3 data forum dengan id=3,2,1 disini karena diurutkan berdasarkan yang terakhir diupdate maka yang tampil diatas adalah id dengan nomor 3

oke selanjutkan kita bahas tentang sistem androidnya...

ini adalah tampilan awalnya,...

disini sistem membutuhkan akses internet untuk mengambil data yang ada diserver, dalam sistem ini terdapat 3 jenis user(admin,member,non-member), ini penjelasannya non-member atau (user) dapat menggunakan aplikasi tanpa harus memiliki akun, namun jika tidak memiliki akun user hanya bisa melihat dan tidak dapat membuat forum(thread) sendiri ataupun komentar untuk postingan atau forum yang ada. ini contoh penggunakan aplikasi tanpa user login,

dan bisa dilihat user hanya dapat melihat2 konten yang ada disistem, dan selanjutnya kita coba user untuk login sebagai member

icon plus dengan warna merah untuk menambah thread baru dalam forum(karena user dapat menginputkan thread didalam sistem ini)

dan dapat memberikan komentar pada forum

dan itulah perbedaan user (non-member) dengan user login, dapat membuat forum, dapat memberikan komentar,

baik selanjutnya user admin, admin disini dapat memasukan semua data seperti store, post, dan juga forum dan dapat juga meng-edit ataupun menghapus konten yang ada disistem dan ini contohnya...

mungkin ini saja penjelasan dari sistem ini, terima kasih.