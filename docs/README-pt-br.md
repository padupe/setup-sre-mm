# Setup SRE-MM

## Descrição
Instalação das principais ferramentas utilizadas pelo time de SRE:
- [DBeaver](https://dbeaver.io/)
- [decK](https://docs.konghq.com/deck/)
    - *O decK ajuda a gerenciar a configuração do [Kong](https://konghq.com/) de maneira declarativa*
- [Discord](https://discord.com/)
- [Docker](https://www.docker.com/)
- [Node.js](https://nodejs.org/en/)
    - *usando o pacote [nvm](https://github.com/nvm-sh/nvm)*
- [Postman](https://www.postman.com/)
- [Python](https://www.python.org/)

## Contexto de Negócio
Efetuar as instalações necessárias no ambiente dos novos colaboradores do time de SRE da MadeiraMadeira.

## Requisitos
- SO Linux/Ubunt;
- Usuário "Raiz";

## Passo a Passo
1. Abra um Terminal
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd>

2. Navegue pelo diretório do seu ambiente até a pasta desejada

3. Clone este repositório

> SSH
```
git clone git@github.com:padupe/setup-sre-mm.git
```

> HTTPS
```
git clone https://github.com/padupe/setup-sre-mm.git
```

4. Abra o Projeto
```
cd setup-sre-mm
```

5. Conceda permissão de acesso ao arquivo binário `install.sh`
```
sudo chmod +x install.sh 
```

6. Rode o comando:
```
./install.sh
```

7. Realize as confirmações quando necessário

8. Pronto :partying_face: