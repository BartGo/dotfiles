
VENV_NAME=sandman2
DB_NAME=sqlite.db

pip install --upgrade pew 

echo "Purge and recreate virtual environment $VENV_NAME..."
#pew wipeenv $VENV_NAME
#pew rm $VENV_NAME
pew new -d  $VENV_NAME
pew in $VENV_NAME pip install --upgrade sandman2

echo "pew in $VENV_NAME sandman2ctl sqlite+pysqlite:///$DB_NAME" > devrun.sh
echo ""
echo "To (R)un in venv $VENV_NAME: devrun.sh"
