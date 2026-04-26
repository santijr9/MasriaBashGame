#!/bin/bash


#sudo apt update
#sudo apt install feh

# move es un 'cd vitaminado. Lo que hace es un cd,
# luego limpia la pantalla, y muestra alguna imagen o .escenario de la pantalla a la que llegas.

gamedir='$HOME/MasriaBashGame'

# Si ya existe el juego, lo borra.
if [[ -d $gamedir ]]
then
	rm -rf $gamedir
fi

# aqui un if (si ya habia partida anterior, preguntar si quiere nueva o seguir.)

# Pasos de la instalacion. carpeta y ejecutable
mkdir -p $HOME/MasriaBashGame && \
mkdir -p $HOME/MasriaBashGame/bin && \
mkdir -p $HOME/MasriaBashGame/musica && \

#cp move $HOME/bin/move
#chmod +x $HOME/bin/move
#cp cat_game $HOME/bin/cat_game
#chmod +x $HOME/bin/cat_game
#cp continuegame $HOME/bin/continuegame
#chmod +x $HOME/bin/continuegame

cp Masria.tar.gz $HOME/MasriaBashGame/Masria.tar.gz && \
cp caratula.png $HOME/MasriaBashGame/caratula.png && \

cp masria $HOME/MasriaBashGame/bin/masria && \
chmod +x $HOME/MasriaBashGame/bin/masria && \

#preparar bashrc_game
cp bashrc_game $HOME/MasriaBashGame/bashrc_game && \
cp musica/masria.mp3 $HOME/MasriaBashGame/musica/masria.mp3 && \

# Descomprimir escenario Limpio nueva partida:
cd $HOME/MasriaBashGame && \
tar -xzvf $HOME/MasriaBashGame/Masria.tar.gz && \



#MAC OS X
PATH=$PATH:$HOME/MasriaBashGame/bin && \

echo "PATH=$PATH:$HOME/MasriaBashGame/bin" >> $HOME/.bashrc && \
echo "PATH=$PATH:$HOME/MasriaBashGame/bin" >> $HOME/.zshrc

#echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> $HOME/MasriaBashGame/bashrc_game

if [[ $? -eq 0 ]]
then
	echo "El juego se ha instalado correctamente."
	read -p "Pulsa [INTRO] para empezar una nueva partida." aaa
	masria
	
else
	echo "algo no ha ido bien en la instalacion."
fi
