# Starvite (Next.js)

1. Pasang Node.js 22.13 atau lebih baru.
2. `npm install`
3. Mode pengembangan: `npm run dev` lalu buka http://localhost:3000
4. Produksi: `npm run build` lalu `npm start`

Variabel: `DB_FILE` (default `ajak.db`), `PORT`, `TRUST_PROXY=1` jika di balik proxy/CDN.
Halaman pemilik di `/`, halaman tamu di `/u/<kode>`, API di `/api/undangan`.
`ajak.db` lama bisa langsung dipakai.

Lagu yang diunggah tersimpan di folder `musik/` (tanpa batas ukuran dari aplikasi). Ubah lokasinya dengan `MUSIK_DIR`.
