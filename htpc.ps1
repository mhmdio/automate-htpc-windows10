iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
choco install -y python2
choco install -y pip
choco install -y git
choco install -y conemu
choco install -y nssm
choco install -y qbittorrent
choco install -y openhardwaremonitor
choco install -y smartmontools
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
pip install Pillow
pip install psutil 
git clone https://github.com/Hellowlol/HTPC-Manager c:\HTPCManager
nssm install HTPCManager
net start HTPCManager
