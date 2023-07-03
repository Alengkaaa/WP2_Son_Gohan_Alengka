<html>
    <head>
        <title>Form Input D-Lemas</title>
    </head>
    <body>
        <center>
            <form action="<?= base_url('matakuliah/cetak'); ?>"
            method="post">
            <table>
                <tr>
                    <th colspan="3">
                        Form Input D-Lemas
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
                    <input type="text" name="nama" id="nama"placeholder="Required">
                    <?=form_error('nama');?>
                </td>
            </tr>
            <tr>
                <th>NIS</th>
                <th>:</th>
                <td>
                    <input type="text" name="nis" id="nis"
                    placeholder="Required">
                    <?=form_error('nis');?>
                </td>
            </tr>
            <tr>
                <th>Kelas</th>
                <th>:</th>
                <td>
                    <input type="text" name="kelas" id="kelas"
                    placeholder="Required">
                    <?=form_error('kelas');?>
                </td>
            </tr>
            <tr>
                <th>Tanggal Lahir</th>
                <th>:</th>
                <td>
                    <input type="text" name="tanggal" id="tanggal"
                    placeholder="Required">
                    <?=form_error('tanggal');?>
                </td>
            </tr>
            <tr>
                <th>Tempat Lahir</th>
                <th>:</th>
                <td>
                    <input type="text" name="tempat" id="tempat"
                    placeholder="Required">
                    <?=form_error('tempat');?>
                </td>
            </tr>
            <tr>
                <th>Alamat</th>
                <th>:</th>
                <td>
                    <textarea type="text" name="alamat" id="alamat"
                    placeholder="Required"></textarea>
                    <?=form_error('alamat');?>
                </td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td>: <input type="radio" name="jenis" value="Pria">Pria</td>
                <td><input type="radio" name="jenis" value="Wanita">Wanita</td>
            </tr>
            <tr>
            <tr>
                <td>Agama</td>
                <td>:<select name="agama" >
                <option value="islam">Islam</option>
                <option value="kristen">Kristen</option>
                <option value="Katolik">Katolik</option>
                <option value="budha">Budha</option>
                <option value="hindu">Hindu</option>
                <option value="protestan">Protestan</option>
                <option value="konghucu">Konghucu</option></select></td>
                </tr>
                <tr>
                    <td colspan="3" align="">
                        <input type="submit" value="input">
                        <input type="reset" value="Batal">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
