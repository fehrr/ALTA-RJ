local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPNclient = Tunnel.getInterface("lotus_login")

src = {}
Tunnel.bindInterface("lotus_login",src)
Proxy.addInterface("lotus_login",src)
print (aaa)


function src.getPrimaryName()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local identity = vRP.getUserIdentity(user_id)

        print(identity.nome)
        return identity.nome.. ' ' .. identity.sobrenome
    end
end

