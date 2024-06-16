#!/bin/bash

#rutas en HOME
BASH_ALIASES=~/.bash_aliases
BASHRC=~/.bashrc

#rutas en env_config
BASH_ALIASES_CONF=./conf_files/bash_aliases.cfg
BASHRC_CONF=./conf_files/bashrc.cfg

if [ -f "$BASH_ALIASES" ]; then
  echo "El archivo .bash_aliases ya existe en el directorio HOME."
else
  if [ -f "$BASH_ALIASES_CONF" ]; then
    cp "$BASH_ALIASES_CONF" "$BASH_ALIASES"
    echo "El archivo .bash_aliases ha sido creado a partir de $BASH_ALIASES_CONF."
  else
    echo "ERROR: El archivo de configuración $BASH_ALIASES_CONF no existe."
  fi
fi

if [ ! -f "$BASHRC" ]
  echo "ERROR: El archivo .bashrc no existe en el directorio HOME."
else 
  if [ -f "$BASHRC_CONF" ]; then
    cat "$BASHRC_CONF" >> "$BASHRC"
    echo "El contenido de $BASHRC_CONF ha sido añadido al final de $BASHRC."
  else
    echo "ERROR: El archivo de configuración $BASHRC_CONF no existe."
  fi
fi

