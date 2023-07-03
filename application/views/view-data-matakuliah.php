<html>
    <head>
        <title>Tampil Data Matakuliah</title>
    </head>
    <body>
        <center>
            <table>
                <tr>
                    <th colspan="3">
                        Tampil Data Mata Kuliah
                    </th>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr>
                    </td>
                </tr>
                <tr>
                    <th>Nama Lengkap</th>
                    <th>:</th>
                    <td>
                        <?= $nama; ?>
                    </td>
                </tr>
                <tr>
                    <th>NIS</th>
                    <th>:</th>
                    <td>
                        <?= $nis; ?>
                    </td>
                </tr>
                <tr>
                    <th>Kelas</th>
                    <th>:</th>
                    <td>
                        <?= $kelas; ?>
                    </td>
                </tr>
                <tr>
                    <th>Tanggal Lahir</th>
                    <th>:</th>
                    <td>
                        <?= $tanggal; ?>
                    </td>
                </tr>
                <tr>
                    <th>Tempat Lahir</th>
                    <th>:</th>
                    <td>
                        <?= $tempat; ?>
                    </td>
                </tr>
                <tr>
                    <th>Alamat</th>
                    <th>:</th>
                    <td>
                        <?= $alamat; ?>
                    </td>
                </tr>
                <tr>
                    <td><b>Jenis Kelamin</b></td>
                    <td>:</td>
                    <td>
                        <?= $jenis; ?>
                    </td>
                </tr>
                <tr>
                    <th>Agama</th>
                    <th>:</th>
                    <td>
                        <?= $agama; ?>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <a href="<?= base_url('matakuliah');
                        ?>">Kembali</a>
                        </td>
                    </tr>
                </table>
            </center>
</body>
</html>