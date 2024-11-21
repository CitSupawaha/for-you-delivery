'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "f393d3c16b631f36852323de8e583132",
"main.dart.js": "4782f77e7d68f3809a93814485a45ad3",
"splash/img/light-3x.png": "9f88343e4defed2b22d3938f8c0ee3d6",
"splash/img/light-1x.png": "ed3e5d9aad59582b235d0730b7aa26cb",
"splash/img/light-2x.png": "64648b7756b07b2c7be53dee8679db34",
"splash/img/dark-3x.png": "9f88343e4defed2b22d3938f8c0ee3d6",
"splash/img/dark-1x.png": "ed3e5d9aad59582b235d0730b7aa26cb",
"splash/img/light-background.png": "b681c96ae0ef243053f1ae8135476e60",
"splash/img/dark-background.png": "5298bc3f3dfad16321bbcc7ca8b1aab4",
"splash/img/dark-4x.png": "7a15cb2dc3eb27915b4381ae0761cde7",
"splash/img/light-4x.png": "7a15cb2dc3eb27915b4381ae0761cde7",
"splash/img/dark-2x.png": "64648b7756b07b2c7be53dee8679db34",
"assets/FontManifest.json": "c0675d6ae82570cded3b4c92092ffa67",
"assets/AssetManifest.bin": "b91b0961ae951bf125e514db5e37d5f5",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/iconsax/lib/assets/fonts/iconsax.ttf": "071d77779414a409552e0584dcbfd03d",
"assets/assets/logo4.jpg": "52c0645ac2aa614e5b580b8d56c266ce",
"assets/assets/logo5.png": "66d87aa2298e45471af5a5cf59c967a0",
"assets/assets/logo2.png": "ffd4aa897970186682b7e34d515d9236",
"assets/assets/logo3.svg": "0ed6bb5d9fc299d8488ec7ce0e67a55c",
"assets/assets/fonts/IBMPlexSansThai-Regular.ttf": "fc735dbc25f53b2e86fa1bc9b48dcd07",
"assets/assets/fonts/IBMPlexSansThai-Bold.ttf": "349b7a81784d32544b940eef1b732d61",
"assets/assets/fonts/IBMPlexSansThai-Light.ttf": "ff4e85b8a5479112c66053957ec7ee73",
"assets/assets/fonts/IBMPlexSansThai-Medium.ttf": "1a97ab43394a81f589e1998d872a5afb",
"assets/assets/fonts/IBMPlexSansThai-SemiBold.ttf": "0957429280bd077b91df947b7da608f7",
"assets/assets/fonts/IBMPlexSansThai-Thin.ttf": "d43db428ddfb9d112cb7bcbdd818c1cb",
"assets/assets/fonts/IBMPlexSansThai-ExtraLight.ttf": "94176889157e8cbf070a04f0ecebb8e2",
"assets/assets/logo2.jpg": "25d71dfc0b2f705402f670c2e87a30eb",
"assets/assets/images/signup2.png": "c12a9f0925fb5dfab543b08303ae4e9f",
"assets/assets/images/background.png": "c886f8024e2a806c1687ba937295a2af",
"assets/assets/images/food.png": "63a5fa220511c293ddf4d3e87906bbe7",
"assets/assets/images/banner2.png": "5c177fd69c621bb8eb083c0ea1379ae1",
"assets/assets/images/product3.png": "e491b3e15da3484b1c2ee48008836ed4",
"assets/assets/images/pizza1.png": "6f57535cbfbc2a72d1aaf98b85e1473f",
"assets/assets/images/onboarding1.png": "5a862d149dd4e3368f1cd5374b295930",
"assets/assets/images/signup1.png": "7dde38837fe4610ba16801bee0476d30",
"assets/assets/images/pizza2.png": "da30033297bbdf0eba2a8900606c7c54",
"assets/assets/images/background1.png": "5298bc3f3dfad16321bbcc7ca8b1aab4",
"assets/assets/images/onboarding2.png": "d5128b5836fd663265b993fbc0ef9a57",
"assets/assets/images/background2.png": "b681c96ae0ef243053f1ae8135476e60",
"assets/assets/images/product.png": "b4f7a0ff7c4580d7764a90e4b0d85c3f",
"assets/assets/images/banner.png": "8d93259324e740b361aff5f851e2efd4",
"assets/assets/images/signup3.svg": "3afc8ba01f22c6787da43796d6a68d2a",
"assets/assets/images/product2.jpg": "087102712c0856492776602e18693ac9",
"assets/assets/images/signup4.svg": "aeb338c70e1a45784ab416b966df5b78",
"assets/assets/images/pizza3.png": "66d9a19767861180f58b93650f25e0a2",
"assets/assets/images/food-1.png": "de58b26ec1b51838c72198865cbc52dd",
"assets/assets/images/product2.png": "8d6123cc373b2be53199dc5d3ae316cd",
"assets/assets/icons/google-icon.png": "ce5eb041e950dd2043e229cf7ba02833",
"assets/assets/icons/facebook.png": "09083e12990c46b25377e576047803c0",
"assets/assets/onboarding.png": "8c2564919486e04aee6f99cb0731945d",
"assets/assets/logo.png": "16264d55fa9eb6df73fd8cf9c42f1c25",
"assets/NOTICES": "108e175643a432e8e2386f92f50893fd",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "56b18bb97a07e4ec4b1340365eb9f6d8",
"assets/web/manifest.json": "2a626e23ec2efd27b9ddcec650b07bba",
"assets/AssetManifest.bin.json": "d64b1454a42b83bdb4c325c608bacabe",
"index.html": "92d97b4eb36ff28c66d406a2b2e73166",
"/": "92d97b4eb36ff28c66d406a2b2e73166",
"manifest.json": "2a626e23ec2efd27b9ddcec650b07bba",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "f9a949ac4b628901f1073cdd7ab6631a",
"flutter_bootstrap.js": "20758679a616d25fcabd63d21b4c0b28"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
