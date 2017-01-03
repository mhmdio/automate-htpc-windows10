iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
choco feature enable -n=allowGlobalConfirmation
choco install -y python2
choco install -y pip
choco install -y git
choco install -y conemu
choco install -y nssm
choco install -y qbittorrent
choco install -y openhardwaremonitor
choco install -y smartmontools
choco install -y sabnzbd
choco install -y couchpotato
choco install -y sonarr
choco install -y kodi
choco install -y plexmediaserver
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

pip install Pillow
pip install psutil

git clone https://github.com/Hellowlol/HTPC-Manager c:\HTPC\HTPCManager
nssm install HTPCManager c:\python27\python.exe "c:\HTPC\HTPCManager\Htpc.py"
nssm set HTPCManager AppDirectory "c:\HTPC\HTPCManager"
nssm set HTPCManager Start SERVICE_AUTO_START
nssm start HTPCManager

git clone https://github.com/rembo10/headphones.git c:\HTPC\Headphones
nssm install Headphones c:\python27\python.exe "c:\HTPC\Headphones\headphones.py"
nssm set Headphones AppDirectory "c:\HTPC\Headphones"
nssm set Headphones Start SERVICE_AUTO_START
nssm start Headphones

dir >$null 2>&1
