<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Podzespoły komputerowe</title>
    <link rel="stylesheet" href="assets/css/styl_1.css">
</head>
<body>
    <header>
        <div class="logo">
            <h1>Sklep komputerowy</h1>
        </div>
        <nav class="menu">
            <a href="index.php">Główna</a>
            <a href="noweprod.php">Nowe produkty</a></a>
        </nav>
    </header>
    <main>
        <h2>Wprowadzanie nowych produktów</h2>
        <fieldset>
            <form method="post">
                <label for="typ">Typ produktu</label>
                <select name="typ" id="typ">
                    <?php require_once('assets/php/categories.php') ?>
                </select><br>
                <label for="producent">Producent</label>
                <select name="producent" id="producent">
                    <?php require_once('assets/php/producers.php') ?>
                </select><br>
                <label for="nazwa">Nazwa produktu</label>
                <input type="text" name="nazwa" id="nazwa"><br>
                <label for="opis">Opis produktu</label>
                <input type="text" name="opis" id="opis"></br>
                <label for="dostepnosc">Dostępność</label>
                <select name="dostepnosc" id="dostepnosc">
                    <option value="0">Nie</option>
                    <option value="1">Tak</option>
                </select></br>
                <label for="cena">Cena</label>
                <input type="number" name="cena" id="cena"><br>
                <input type="submit" value="Dodaj">
            </form>
        </fieldset>
    </main>
    <?php require_once('assets/php/addprod.php') ?>
    <footer>
        <div class="stopka1">
            <h3>Sklep komputerowy</h3>
            <p>ul. Legnicka 61, Wrocław</p>
            <p>Współpracujemy z hurtowanią <a href="http://www.ddata.pl/" target="blank_">ddata</a></p>
        </div>
        <div class="stopka2">
            <p>Stronę wykonał: 00000000000</p>
        </div>
        <div class="stopka3">
            <p>Zadzwoń do nas: 71 506 50 60</p>
        </div>
        <div class="stopka4">
            <img style="height: 200px;" src="assets/images/sklep.jpg" alt="sklep komputerowy">
        </div>
    </footer>
</body>
</html>