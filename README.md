
I) Environment Setup

	1) Install AWS CLI on local windows machine 
	2) Install eksctl  on local windows machine 
	 
	3) Installing Chocolatey on local windows machine 
       via PowerShell:
       
       1. Press the Windows key and type "PowerShell". Select the Run as administrator option to open the Windows PowerShell.
       
           Get-ExecutionPolicy
           
           Set-ExecutionPolicy AllSigned
           
           Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
           
	4) Install kubctl on local windows machine
	
II) Create cluster,deployment, service

	kubectl create cluster -f cluster.yaml


    kubectl apply -f deployment.yaml

    kubectl expose deployment laravel --type=NodePort --name=laravel-service
