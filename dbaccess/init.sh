PATH=/usr/sbin:$PATH; export PATH
LD_LIBRARY_PATH=/lib:/usr/lib; export LD_LIBRARY_PATH

echo [P12TST] > /etc/odbc.ini
echo Driver          = ODBC Driver 13 for SQL Server >> /etc/odbc.ini
echo Description     = Protheus 12 Teste >> /etc/odbc.ini
echo Server          = mssql >> /etc/odbc.ini
echo Port            = 1433 >> /etc/odbc.ini
echo DataBase        = P12TST >> /etc/odbc.ini
echo AnsiNPW         = Yes >> /etc/odbc.ini
echo QuotedID        = Yes >> /etc/odbc.ini
echo AutoTranslate   = Yes >> /etc/odbc.ini

odbcinst -i -s -l -f /etc/odbc.ini
odbcinst -s -q

ulimit -n 65536
ulimit -s 1024
ulimit -c unlimited
ulimit -f unlimited
ulimit -v unlimited