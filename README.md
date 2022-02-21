# Neovim

Neovim es un editor de texto basado en Vim diseñado para la extensibilidad y usabilidad,
para fomentar nuevas aplicaciones y contribuciones.

## Instalación

### Prerequisitos

#### Python, Pip y Pipenv

```bash
$ sudo apt-get install python3-pip
$ pip3 install pipenv
```

#### Git

```bash
$ sudo apt-get install git
```

#### Node.js

```bash
$ sudo apt-get install npm
```

- Puede utilizar [nvm](https://github.com/nvm-sh/nvm), para usar diferentes versiones de node.
- Para poder visualizar los iconos en la terminal es necesaria una [nerdfont](https://www.nerdfonts.com/font-downloads)

# Configuración

### Estructura de directorios

```bash
$HOME/.config/nvim/
├── after
│   └── plugin
├── colors
├── general
├── plug
├── plugin
└── utils
```

> After/plugin: Configuraciones de los plugins instalados.
> colors: Colores del tema
> general: Configuraciones globales de vim
> plug: Plugins que serán instalados con [vim-plug](https://github.com/junegunn/vim-plug)
> plugin: Maps de los plugins
> utils: Documentos que no tienen sentido
