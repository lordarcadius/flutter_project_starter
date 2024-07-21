{{flutter_js}}
{{flutter_build_config}}

window.addEventListener('load', function () {
    var loading = document.querySelector('#loading');
    _flutter.loader.load({
        onEntrypointLoaded: async function(engineInitializer) {
            loading.classList.add('main_done');
            const appRunner = await engineInitializer.initializeEngine();
        
            loading.classList.add('init_done');
            await appRunner.runApp();
            window.setTimeout(function () {
                loading.remove();
            }, 200);
          }
    });
});