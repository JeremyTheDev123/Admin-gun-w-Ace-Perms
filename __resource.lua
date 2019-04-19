Name 'Admin Gun Script With Ace Perms'
Auther 'JeremyTheDev'
Description 'Enable admin gun if your an admin.'
EXECUTE_CFG_INFO 'exec jeremys.admin.cfg'
ADD_ACE_INFO 'add_ace admin.gun jeremys.admin allow'
ADD_PRINCIPLE_INFO 'add_principal identifier.steam:STEAM_HEX_HERE admin.gun'

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_script "client.lua"
server_script "server.lua"