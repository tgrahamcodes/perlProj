# Win32.pl
# Tom Graham

# variables

use win32;
$login = Win32::LoginName();
$NetBIOS = Win32::NodeName();
$FileSystem = Win32::FsType();
$Directory = Win32::GetCwd();
$OS_Name = Win32::GetOSName();

$Arch_Name = Win32::GetArchName();
$Chip = Win32::GetChipName();
$NT = Win32::IsWinNT();
$W95 = Win32::IsWin95();
$Uptime = Win32::GetTickCount();
$DomainName = Win32::DomainName();
$OSVersion = Win32::GetOSVersion();

# output
print "\nSystem Information:\n";
print "\nSystem Uptime:\t\t $Uptime s\n";
print "Login Username:\t\t $login\n";
print "NetBIOS:\t\t $NetBIOS\n";
print "Domain Name:\t\t $DomainName\n";
print "Filesystem:\t\t $FileSystem\n";
print "Working Directory:\t $Directory\n";
print "Operating System:\t $OS_Name\n";
print "OS Version:\t\t $OSVersion\n";
print "Archicture:\t\t $Arch_Name\n";
print "Chip:\t\t\t $Chip\n";

# conditionals check if windows 95 print yes, if windows nt print yes
if ($W95){
    print "Win95:\t\t Yes";
}
if ($NT){
    print "WinNT:\t\t\t Yes";
}

print "\n\n";