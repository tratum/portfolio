'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/asset/fonts/Afacad/Afacad-Italic-VariableFont_wght.ttf": "87d1dfed742d2669846347bc42003b43",
"assets/asset/fonts/Afacad/Afacad-VariableFont_wght.ttf": "74ad078bfbf23ddaa9e746ad7c0d4f31",
"assets/asset/fonts/Anton/Anton-Regular.ttf": "055c4df4e2f8c7a4d4675cdd8fa68da0",
"assets/asset/fonts/Kanit/Kanit-Black.ttf": "98e93fc09832d3891a57162b83ecb930",
"assets/asset/fonts/Kanit/Kanit-ExtraBold.ttf": "41df63b2d1938bf065ba71700f32b623",
"assets/asset/fonts/Noto_Sans/NotoSans-Italic-VariableFont_wdth,wght.ttf": "e0a392b12c2557a8a6c6d14a5d93c5ba",
"assets/asset/fonts/Noto_Sans/NotoSans-VariableFont_wdth,wght.ttf": "870b4afd90ef78b125287c2ce7d1b41b",
"assets/asset/fonts/Yatra_One/YatraOne-Regular.ttf": "60b597406a6a70df5bcdabd5bf65d4f5",
"assets/asset/image/dart.png": "2e0719b33b5cdd1ece46611b4d3d4a81",
"assets/asset/image/deskSetup.png": "f900d742ab4b0870766d268c7d99ed27",
"assets/asset/image/glowingStar.png": "b0ce58eda858dfdb1327c6514d1a7fd1",
"assets/asset/image/icon_flutter.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/asset/image/java.png": "74e943d82452f81f6a0bb0b51ac6785d",
"assets/asset/image/mongodb.png": "9b46dcf7dee5947442926446e96f1626",
"assets/asset/image/namaste.png": "2d088c1fc7fee3b1f08a4cebc96edc9c",
"assets/asset/image/pin.png": "eac552f32d6797b0e18f7d5819340603",
"assets/asset/image/profile_photo-circular.png": "3d0a675a563bb773f9906da3d78b90ba",
"assets/asset/image/project1.png": "d14a40fabfad89b3de9036b68d996335",
"assets/asset/image/python.png": "6606c48fbf49fc629449aa11170b8c1c",
"assets/asset/image/rasa.png": "7c33d958341c31aeb19426f2f094e9fb",
"assets/asset/image/scrollDown.png": "d860b4d27f50a57f3811e41499f1f864",
"assets/asset/image/stamp.png": "a4415fad6e6afe8ba82be8ee80204d9b",
"assets/asset/svg/abstract-shape-lineart-vector.svg": "192961a4fa8eae581f097a6de129b091",
"assets/asset/svg/circular-frame-vector.svg": "c954419d57049431fa8d43d9602c7060",
"assets/asset/svg/waving-hand.svg": "f5ad16445e07fcdb46f4342dec7663e2",
"assets/AssetManifest.bin": "af2797f905641b36210ede0c976c8d75",
"assets/AssetManifest.json": "5201e662b13df5ae9e5b67ddc995d7e5",
"assets/FontManifest.json": "eedf62e4f9b92232bcd54333afceb342",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "04d5d3f924f5558ac493329406880dd3",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "f25e8e701660fb45e2a81ff3f43c6d5c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "56a0aba429b61413eb99b3a14560ac6d",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "c8d0c8fa46d5f3592a9f9f4dcc608201",
"icons/Icon-512.png": "f4e6e5859c0c5b981da994d816b6854f",
"icons/Icon-maskable-192.png": "c8d0c8fa46d5f3592a9f9f4dcc608201",
"icons/Icon-maskable-512.png": "f4e6e5859c0c5b981da994d816b6854f",
"index.html": "186c454a0f988d34ce4b97b612b6723a",
"/": "186c454a0f988d34ce4b97b612b6723a",
"main-icon.png": "a39ddc47bd15186e62d13644679475e1",
"main.dart.js": "8c7ceaf41fef2de53ef13f348e92f827",
"manifest.json": "73dd58b34b064c5e50c6d31f66150d76",
"version.json": "54d0bdd389f0cd61c12aecc828b814fd"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
