<div align="center">

# ⚔️ Duel CLI
### Jogo de **Ataque**, **Parry** e **Especial** (Player vs Máquina)

<p>Um jogo de linha de comando em que o jogador enfrenta a máquina usando <b>ataques</b>, <b>parry</b> (defesa com contra-golpe) e um <b>golpe especial</b> carregado por parries bem-sucedidos. Projeto concebido com fins educacionais.</p>

<br/>

<img alt="Platform" src="https://img.shields.io/badge/plataforma-CLI-informational">
<img alt="Mode" src="https://img.shields.io/badge/modo-1%20jogador%20(IA)-blue">
<img alt="Purpose" src="https://img.shields.io/badge/educacional-sim-success">

</div>

---

<details open>
<summary><b>Visão geral</b></summary>

- **Plataforma:** Console (CLI)  
- **Modos:** 1 jogador (contra IA)

**Mecânicas principais**
- **Ataque:** reduz a vida do oponente.  
- **Parry:** se executado no tempo certo, anula o ataque recebido e aumenta a barra de especial.  
- **Especial:** ao atingir **100%**, pode ser usado **uma única vez**; **não pode ser cancelado/interrompido**.

> **Objetivo:** vencer o oponente esvaziando a vida dele antes que ele esvazie a sua, administrando risco e tempo para carregar e usar o especial e atacar na hora certa.
</details>

### Controles (padrão)

| Ação   | Tecla                                 |
|:------ |:------------------------------------- |
| Atacar | <kbd>Q</kbd>                          |
| Parry  | <kbd>E</kbd>                          |
| Sair   | <kbd>Esc</kbd> / <kbd>Ctrl</kbd> + <kbd>C</kbd> |

### Conceitos didáticos abordados

- **Loop de jogo & controle de tempo** (*delta time* / FPS)  
- **Separação de responsabilidades** (engine vs. domínio de combate)  
- **Padrão Command** para desacoplar entrada (teclado) das ações (atacar/parry)  
- **Estado & progressão** (vida, barra de especial, cooldowns)
- **Observables** (Padrão baseado em eventos)  
- **IA básica** (decisão de ataque/defesa com heurísticas simples)

---

<sub>© 2025 Duel CLI — Livre para uso educacional.</sub>
