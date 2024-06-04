<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Data Diri </title>
</head>
<body>
    <table>
        <tr>
            <td colspan="2"> Data Diri </td>
        </tr>

        <tr>
            <td> NIM </td>
            <td>
                <?= $nim ?>
            </td>
        </tr>

        <tr>
            <td> Nama </td>
            <td>
                <?= $nama ?>
            </td>
        </tr>

        <tr>
            <td> Prodi </td>
            <td>
                <?= $prodi ?>
            </td>
        </tr>

        <tr>
            <td> Alamat </td>
            <td>
                <?= $alamat ?>
            </td>
        </tr>
    </table>
    <a href="<?= base_url('datadiri') ?>"> Input Lagi </a>
</body>
</html>