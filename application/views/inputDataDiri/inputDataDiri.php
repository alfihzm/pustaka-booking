<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Input Data Diri </title>
</head>

<body>
	<form action="<?= base_url('datadiri/tampil') ?>" method="post">
		<table>
			<tr>
				<td colspan="2"> Form Input Data Diri </td>
			</tr>

			<tr>
				<td> NIM </td>
				<td>
					<input type="text" name="nim">
				</td>
			</tr>

			<tr>
				<td> Nama </td>
				<td> <input type="text" name="nama"></td>
			</tr>

			<tr>
				<td> Prodi </td>
				<td>
					<select id="prodi" name="prodi">
						<option value="Sistem Informasi"> Sistem Informasi </option>
						<option value="Teknologi Informasi"> Teknologi Informasi </option>
						<option value="Ilmu Komputer"> Ilmu Komputer </option>
					</select>
				</td>
			</tr>

			<tr>
				<td> Alamat </td>
				<td>
					<textarea id="alamat" name="alamat" rows="7" cols="19">

                    </textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="submit">
	</form>
</body>

</html>