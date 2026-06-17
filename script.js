
/* ==========================================================================
   AGRINHO DIGITAL - MOTOR DE INTERATIVIDADE E PROGRESSO
   ========================================================================== */

document.addEventListener("DOMContentLoaded", () => {
    const botoesMissao = document.querySelectorAll(".btn-missao");
    const placarXp = document.querySelector(".user-score-badge");

    // Lê o XP inicial tratando pontuação brasileira (ex: 1.250 vira 1250)
    let totalXp = parseInt(placarXp.textContent.replace(/[^\d]/g, ""), 10) || 0;

    const adicionarXp = (novosPontos) => {
        totalXp += novosPontos;
        // Atualiza a interface formatando o número de volta com ponto de milhar
        placarXp.textContent = `🏆 ${totalXp.toLocaleString("pt-BR")} XP`;
        
        // Efeito visual de pulso no contador
        placarXp.style.transform = "scale(1.15)";
        setTimeout(() => {
            placarXp.style.transform = "scale(1)";
        }, 200);
    };

    botoesMissao.forEach((botao) => {
        botao.addEventListener("click", function() {
            const card = this.closest(".card-missao");
            if (!card) return;

            const progressBar = card.querySelector(".progress-bar");
            const statusTexto = card.querySelector(".footer-left");
            const xpTexto = card.querySelector(".xp-reward").textContent;
            const valorXp = parseInt(xpTexto.replace(/[^\d]/g, ""), 10) || 0;

            let progressoAtual = parseInt(progressBar.style.width, 10) || 0;

            if (progressoAtual < 100) {
                progressoAtual += 34; // Avança o progresso a cada clique
                
                if (progressoAtual >= 100) {
                    progressoAtual = 100;
                    statusTexto.textContent = "✅ Concluída!";
                    statusTexto.style.color = "var(--color-success)";
                    
                    adicionarXp(valorXp);
                    
                    // Altera o estado do botão para concluído
                    this.textContent = "Concluída";
                    this.disabled = true;
                    this.style.opacity = "0.5";
                    this.style.cursor = "not-allowed";
                } else {
                    statusTexto.textContent = "Em andamento...";
                }
                
                progressBar.style.width = `${progressoAtual}%`;
            }
        });
    });
});
