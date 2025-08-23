/* web/flutter_bootstrap.js
   Custom bootstrap
*/

{{flutter_js}}
{{flutter_build_config}}

(function () {
  // DOM elements we control
  const loader = document.getElementById('loader');
  const loaderStatus = document.getElementById('loader-status');
  const MIN_DISPLAY_MS = 2200;
  const FADE_OUT_MS = 700;

  const _loaderShownAt = Date.now();
  let _removeTimeoutId = null;

  function setStatus(msg) {
    try {
      if (loaderStatus) loaderStatus.textContent = msg;
    } catch (e) {
      // ignore
    }
  }

  function removeLoader() {
    if (!loader) return;
    if (_removeTimeoutId) return;
    const elapsed = Date.now() - _loaderShownAt;
    const wait = Math.max(0, MIN_DISPLAY_MS - elapsed);
    _removeTimeoutId = setTimeout(() => {
          loader.classList.add('fade-out');
          setTimeout(() => {
            try { loader.remove(); } catch (e) {}
            _removeTimeoutId = null;
          }, FADE_OUT_MS);
    }, wait);
  }

  // Short helper: will be called if something goes wrong
  function onErrorFallback(err) {
    console.error('Bootstrap error:', err);
    // show message, then remove loader after short delay
    setStatus('Failed to start app — loading fallback');
    setTimeout(removeLoader, 1500);
  }

  try {
    // Start the loader process; onEntrypointLoaded fires when the entrypoint script
    // and service worker (if configured) are initialized.
    _flutter.loader.load({
      onEntrypointLoaded: async function (engineInitializer) {
        try {
          setStatus('Initializing engine...');
          const appRunner = await engineInitializer.initializeEngine();
          setStatus('Starting app...');
          await appRunner.runApp();
          removeLoader();
          // Safety: also remove when flutter-first-frame arrives (in case runApp didn't guarantee paint)
          window.addEventListener('flutter-first-frame', function () {
            removeLoader();
          });
        } catch (err) {
          onErrorFallback(err);
        }
      },
    });
    // Safety fallback if load() never triggers callbacks
    setTimeout(() => {
      if (document.getElementById('loader')) {
        // if still showing after 15s, remove and let user interact
        removeLoader();
      }
    }, 15000);
  } catch (err) {
    onErrorFallback(err);
  }
})();