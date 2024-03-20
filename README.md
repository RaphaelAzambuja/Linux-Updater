# Atualização e Limpeza do Sistema (Linux Debian/Ubuntu)

Este script Bash foi criado para automatizar o processo de atualização e limpeza de sistemas baseados em Debian, Ubuntu e distros baseadas nos mesmos. Ele realiza as seguintes etapas:

1. Atualiza os repositórios do sistema(incluindo flatpaks).
2. Realiza uma atualização completa do sistema.
3. Executa a limpeza do sistema, incluindo a remoção de pacotes não utilizados e pastas vazias no sistema.

## Como Usar

1. Baixe o script `updater.sh` para o seu sistema.
2. Abra um terminal e navegue até o diretório onde o script está localizado.
3. Conceda permissões de execução ao script usando o seguinte comando:
    
    ```
    chmod +x updater.sh
    ```
    
4. Execute o script com privilégios de superusuário (root) usando `sudo`:
    
    ```
    sudo ./updater.sh
    ```

O script verificará se o sistema usa os comandos `apt` ou `dpkg` e executará as ações apropriadas para atualizar e limpar o sistema. Certifique-se de estar conectado à internet, pois o script requer acesso aos repositórios online.

**Nota:** Garanta que o script e o sistema tenham as permissões adequadas antes de executá-lo.