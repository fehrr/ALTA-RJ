$(document).ready(() => {
    window.addEventListener('message', function ({data}) {
        if(data.action == 'vipsystem'){
            openVipSystem()
        }
    });
})

const openVipSystem = () => {
    window.invokeNative("openUrl", "https://five-m.store/loja/projectxroleplay")
}