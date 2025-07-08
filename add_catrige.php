<?php
include('header.php');
include('include/connect_db.php');

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $barcode = $_POST['barcode'] ?? '';
    $name = $_POST['name'] ?? '';
    $brand = $_POST['brand'] ?? '';
    $user = $_POST['user'] ?? '';
    $printer = $_POST['printer'] ?? '';
    $status = $_POST['status'] ?? '';
    // Формуємо дату і час у форматі Y-m-d H:i:s
    $date = $_POST['date'] ?? '';
    $time = $_POST['time'] ?? '';
    $date_time = '';
    if ($date !== '') {
        $date_time = $date;
        if ($time !== '') {
            $date_time .= ' ' . $time . ':00';
        } else {
            $date_time .= ' ' . date('H:i:s');
        }
    }

    // Стилізоване повідомлення як у style.css (зелений фон, чорний текст)
    if ($stmt = $mysql->prepare("INSERT INTO catriges (barcode, name_catrige, mark, user, printer, status_catrige, date_time) VALUES (?, ?, ?, ?, ?, ?, ?)")) {
        $stmt->bind_param("sssssss", $barcode, $name, $brand, $user, $printer, $status, $date_time);

        if ($stmt->execute()) {
            echo "<div style='max-width:600px;margin:10px auto;text-align:center;background:#04AA6D;border:1px solid #04AA6D;padding:10px 0;border-radius:10px;color:#111;font-size:18pt;'>Картридж додано успішно!</div>";
        } else {
            echo "<div class='error-message' style='max-width:600px;margin:10px auto;text-align:center;background:#ffe6e6;border:1px solid #ffb2b2;padding:10px;border-radius:5px;color:#a94442;'>Помилка при додаванні: " . $mysql->error . "</div>";
        }
        $stmt->close();
    }
}
?>
<main class="home">
    <div class="FindCatrige" style="max-width: 600px; margin: 0 auto;">
        <h2 style="text-align:center;">Додати картридж</h2>
        <form method="post" action="">
            <table style="width:100%;">
                <tr>
                    <td style="width:200px;"><label for="barcode">Штрих-код:</label></td>
                    <td><input type="text" name="barcode" id="barcode" required style="width:100%;"></td>
                </tr>
                <tr>
                    <td style="width:200px;"><label for="name">Назва картриджа:</label></td>
                    <td><input type="text" name="name" id="name" required style="width:100%;"></td>
                </tr>
                <tr>
                    <td><label for="brand">Марка:</label></td>
                    <td><input type="text" name="brand" id="brand" required style="width:100%;"></td>
                </tr>
                <tr>
                    <td><label for="user">Користувач:</label></td>
                    <td><input type="text" name="user" id="user" required style="width:100%;"></td>
                </tr>
                <tr>
                    <td><label for="printer">Принтер:</label></td>
                    <td><input type="text" name="printer" id="printer" required style="width:100%;"></td>
                </tr>
                <tr>
                    <tr>
    <td><label for="status">Статус:</label></td>
    <td>
        <select name="status" id="status" required style="width:100%;">
            <option value="">-- Оберіть статус --</option>
            <option value="На заправку">На заправку</option>
            <option value="Новий">Новий</option>
            <option value="Заправка">Заправка</option>
            <option value="Відправлено на заправку">Відправлено на заправку</option>
            <option value="Повернуто з заправки">Повернуто з заправки</option>
            <option value="Списано">Списано</option>
        </select>
    </td>
</tr>

                </tr>
                <tr>
                    <td><label for="date">Дата:</label></td>
                    <td>
                        <input type="date" name="date" id="date" required style="width:60%;" placeholder="дд.мм.рррр">
                        <input type="time" name="time" id="time" required style="width:38%;" step="1" value="<?php echo date('H:i:s'); ?>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center; padding-top:15px;">
                        <button type="submit" style="padding:8px 30px;">Додати</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</main>
<?php
include('footer.php');
?>
