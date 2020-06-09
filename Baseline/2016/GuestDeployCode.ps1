New-GuestConfigurationPolicy `
-ContentUri "https://shawninttestdiag.blob.core.windows.net/hardeningaudit/Baseline2016.zip?sp=r&st=2019-12-13T01:55:02Z&se=2020-08-01T08:55:02Z&spr=https&sv=2019-02-02&sr=b&sig=hEpcB1fMbz97vBlLOsQbM9v5zlwC%2B36bCME5qGH2%2Bg0%3D" `
-DisplayName "Test Windows Server 2016" `
-Path '.\GuestConfigurationTester' `
-Platform 'Windows' `
-Description 'Ensure VMs running Windows Server 2016 OS meet WTW base hardening requirements' `
-Verbose

select-azsubscription -Subscription "TW-ITCORP-POCLAB"

Publish-GuestConfigurationPolicy -Path '.\GuestConfigurationTester' 