#Terraform - Procédure ESXi#

- Installer les ovftools* sur la machine hôte et modifier la variable PATH 
- Créer la VM sur Workstation et la configurer
- Fermer la machine (pas de mise en pause)
- Onglet VM -> Manage -> Change Hardware Compatibility -> ESXI version 7 (ou version souhaitée) -> Create new clone of this virtual machine
- Aller sur la nouvelle machine clonée
- Onglet File -> Export to OVF

#Import ESXi avec Terraform#

- Sur ESXi, Configurer le SSH
- Dans le script Terraform, modifier les lignes esxi_hostname,esxi_username et esxi_password. (le fichier est commenté)
- Modifier également les lignes guest_name, disk_store, memsize et numvcpus en fonction de la configuration voulue
- Modifier la ligne ovf_source pour indiquer la destination du fichier.
- Modifier la ligne virtual_network si besoin.
- La partie provisionning n'est pas encore testée.

Pour plus de renseignements, notamment sur les options disponibles :
https://github.com/jauderho/terraform-provider-esxi

Pour les ovftools, c'est disponible ici :
https://customerconnect.vmware.com/downloads/get-download?downloadGroup=OVFTOOL443&download=true&fileId=74320a4eb35e621513b247c6c0002e03&uuId=afad978f-68fb-44bc-b116-cfe481bf8a11
