<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agrinho 2026 - Festejando a Conexão Campo-Cidade</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <div class="container">
        <h1>Agrinho 2026</h1>
        <p>Festejando a Conexão Campo-Cidade</p>

        <nav>
            <a href="#sobre">Sobre</a>
            <a href="#campo">Campo</a>
            <a href="#cidade">Cidade</a>
            <a href="#conexao">Conexão</a>
            <a href="#quiz">Quiz</a>
        </nav>
    </div>
</header>

<section class="hero">
    <div class="hero-content">
        <h2>Do Campo à Cidade</h2>
        <p>Uma parceria que alimenta, desenvolve e transforma vidas.</p>
        <a href="#sobre" class="btn">Explorar</a>
    </div>
</section>

<section id="sobre" class="container">
    <h2>🌎 Sobre o Projeto</h2>
    <p>
        O campo produz alimentos, matérias-primas e recursos essenciais.
        A cidade transforma, comercializa e distribui esses produtos.
        Juntos, eles formam uma conexão indispensável para a sociedade.
    </p>
</section>

<section id="campo" class="cards-section">
    <h2>🌱 O Campo</h2>

    <div class="cards">
        <div class="card">
            <h3>Agricultura</h3>
            <p>Produção de alimentos que chegam diariamente às cidades.</p>
        </div>

        <div class="card">
            <h3>Tecnologia Rural</h3>
            <p>Máquinas modernas e inovação aumentam a produtividade.</p>
        </div>

        <div class="card">
            <h3>Sustentabilidade</h3>
            <p>Produzir preservando os recursos naturais.</p>
        </div>
    </div>
</section>

<section id="cidade" class="cards-section cidade">
    <h2>🏙️ A Cidade</h2>

    <div class="cards">
        <div class="card">
            <h3>Comércio</h3>
            <p>Distribui os produtos produzidos no campo.</p>
        </div>

        <div class="card">
            <h3>Indústria</h3>
            <p>Transforma matérias-primas em produtos para consumo.</p>
        </div>

        <div class="card">
            <h3>Serviços</h3>
            <p>Conectam produtores, empresas e consumidores.</p>
        </div>
    </div>
</section>

<section id="conexao" class="container">
    <h2>🔄 Campo + Cidade</h2>

    <div class="timeline">
        <div class="item">🌱 Plantio</div>
        <div class="item">🚜 Colheita</div>
        <div class="item">🚚 Transporte</div>
        <div class="item">🏪 Comércio</div>
        <div class="item">🍽️ Consumo</div>
    </div>
</section>

<section id="quiz" class="container quiz">
    <h2>🎯 Quiz Rápido</h2>

    <p>De onde vêm a maioria dos alimentos consumidos nas cidades?</p>

    <button onclick="resposta()">Do Campo</button>

    <p id="resultado"></p>
</section>

<footer>
    <h3>Agrinho 2026</h3>
    <p>Projeto desenvolvido para demonstrar a importância da conexão entre campo e cidade.</p>
</footer>

<script src="script.js"></script>
</body>
</html>
