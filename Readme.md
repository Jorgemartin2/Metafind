# MetaFind - OSINT Metadata Finder

MetaFind é um script em **Bash** que automatiza a busca por arquivos específicos na web e extrai seus metadados, utilizando ferramentas como **Lynx** e **ExifTool**.

## 🛠️ Requisitos
Antes de executar o script, certifique-se de ter os seguintes pacotes instalados:

- **Lynx** - Para buscas textuais na web
- **ExifTool** - Para extração de metadados de arquivos
- **wget** - Para baixar arquivos automaticamente

Caso não estejam instalados, o script verifica e instala automaticamente (necessário sudo).

## ✨ Como Usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/Jorgemartin2/metafind.git
   cd metafind
   ```
2. Torne o script executável:
   ```bash
   chmod +x metafind.sh
   ```
3. Execute o script passando o **site** e a **extensão de arquivo** desejada:
   ```bash
   ./metafind.sh exemplo.com pdf
   ```

## 🔄 O que o Script Faz
1. **Verifica e instala** as dependências necessárias (caso ausentes).
2. **Realiza buscas no Google** por arquivos da extensão especificada dentro do site informado.
3. **Filtra os links** e baixa os arquivos encontrados.
4. **Extrai os metadados** dos arquivos baixados usando o **ExifTool**.
5. **Remove os arquivos baixados** após a extração dos metadados.

## 🛡️ Aviso
Este script deve ser utilizado **apenas para fins educacionais e de pesquisa OSINT**. O uso indevido pode violar leis e os termos de serviço de websites. **Use com responsabilidade!**

## 🔗 Contribuições
Sinta-se à vontade para contribuir! Se tiver sugestões, abra uma *issue* ou envie um *pull request*.

## 🌟 Autor
**[Jorge Martin](https://github.com/Jorgemartin2)**  
Desenvolvedor entusiasta de Cybersecurity.

---
Feito com ❤️ e Bash! 💀
