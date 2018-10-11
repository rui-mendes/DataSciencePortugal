echo ""
echo "Instalar mini-conda no ubuntu, xubuntu, debian, ..."
echo "                                     rui@martins.pt"
echo ""

cd ~
FILE_NAME="Miniconda3-latest-Linux-x86_64.sh"
echo "A fazer download do ficheiro "$FILE_NAME"..."
echo ""
echo ""
echo ""
wget https://repo.continuum.io/miniconda/$FILE_NAME
echo ""
echo ""
echo ""
echo "Se durante a instalação perguntar:"
echo "   Do you wish the installer to prepend the Miniconda3 install location"
echo "Selecciona YES"
echo "Press <ENTER> to continue"
read
echo ""
echo ""
echo ""

bash $FILE_NAME
rm $FILE_NAME

echo "Fazer reload do .bashrc para evitar ter que reiniciar o terminal..."
source .bashrc
echo "Versão instalada:"
conda --version
echo "Press <ENTER> to continue"
read
echo ""
echo ""
echo ""
echo "A actualizar o conda..."
conda update conda
echo ""
echo ""
echo ""

echo "Versão instalada:"
conda --version
echo "Press <ENTER> to continue"
read
echo ""
echo ""
echo ""

echo "A instalação terminou com sucesso."
echo ""
echo ""
echo ""
echo "Para criares o ambiente virtual para o workshop1 carrega em <ENTER>"
echo "Caso prefiras fazer manualmente, carrega em [CTRL] + [C]"
echo ""
read



conda env list
conda create --name dspt-workshop1 python=3
conda info --envs

source activate dspt-workshop1

conda install jupyter pandas matplotlib

mkdir -p ~/dspt-workshop1
cd ~/dspt-workshop1

jupyter notebook

source deactivate


