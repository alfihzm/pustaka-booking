<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Laporan Data Buku Perpustakaan Online</title>
    <style type="text/css">
        .table-data {
            width: 100%;
            border-collapse: collapse;
        }
        .table-data th, .table-data td {
            border: 1px solid black;
            font-size: 11pt;
            font-family: Verdana;
            padding: 10px;
        }
        h3 {
            font-family: Verdana;
        }
    </style>
</head>
<body>
    <h3><center>Laporan Data Buku Perpustakaan Online</center></h3>
    <br/>
    <table class="table-data">
        <thead>
            <tr>
                <th>No</th>
                <th>Judul Buku</th>
                <th>Pengarang</th>
                <th>Penerbit</th>
                <th>Tahun Penerbit</th>
                <th>ISBN</th>
                <th>Stok</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            foreach($buku as $b){
            ?>
            <tr>
                <td><?= $no++; ?></td>
                <td><?= htmlspecialchars($b['judul_buku'], ENT_QUOTES, 'UTF-8'); ?></td>
                <td><?= htmlspecialchars($b['pengarang'], ENT_QUOTES, 'UTF-8'); ?></td>
                <td><?= htmlspecialchars($b['penerbit'], ENT_QUOTES, 'UTF-8'); ?></td>
                <td><?= htmlspecialchars($b['tahun_terbit'], ENT_QUOTES, 'UTF-8'); ?></td>
                <td><?= htmlspecialchars($b['isbn'], ENT_QUOTES, 'UTF-8'); ?></td>
                <td><?= htmlspecialchars($b['stok'], ENT_QUOTES, 'UTF-8'); ?></td>
            </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
    <script type="text/javascript">
        window.print();
    </script>
</body>
</html>