'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"flutter_bootstrap.js": "1584ab00e0f75c64e3d9a69afb806573",
"canvaskit/skwasm_st.wasm": "b2953209b604653bd60218023cba4fbf",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.wasm": "4b92197bab99c18b9edc6bf64a6dc0e6",
"canvaskit/chromium/canvaskit.wasm": "efcf298250fd42f5e92783783a580476",
"canvaskit/chromium/canvaskit.js.symbols": "e878fd5eeae47b666d050659717fe4c4",
"canvaskit/chromium/canvaskit.js": "9dc7a140b1f0755e6321e9c61b9bd4d9",
"canvaskit/skwasm_st.js.symbols": "0433a19df15722775200727248c3295e",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/canvaskit.wasm": "a5ae4a0b6ab49a8cd2ecaaea9a99b41d",
"canvaskit/skwasm.js.symbols": "3a68e6227874dc620b3d35fdccf1aa77",
"canvaskit/canvaskit.js.symbols": "9cd6c6f6517e7d232456285d2e0f4b9a",
"canvaskit/canvaskit.js": "8cf6e87eff144e2453a9640bfa1a4ad0",
"main.dart.js": "0c8dab776b718f3ff7f72bbd4dd70ade",
"version.json": "d1e2fe4cfdc2e8ad5fd8dd1a0613302a",
"assets/FontManifest.json": "78a1b2847c108027a20e6d53e57fb03d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "7b235b06daed5b7fd2c24c20d09d2d7e",
"assets/assets/lotties/welcome_hello.json": "b3941572002b9cfebed11766ca10eeb0",
"assets/assets/images/goland-original.svg": "8bbf0ecc6db59bd9387d3ca1da22f2b2",
"assets/assets/images/docker-original.svg": "1380befa46d4027b411bc47b093424a9",
"assets/assets/images/objectivec-plain.svg": "611b22eba29c734d9947e2d2127398ce",
"assets/assets/images/typescript-original.svg": "c06d3c068de68e5654d05552e26e3452",
"assets/assets/images/git-original.svg": "fef8e95112e6ab6f2169430ee510db5e",
"assets/assets/images/emoji_mail.png": "6c420302b4e66646801123da14ae4c1c",
"assets/assets/images/javascript-original.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/images/flutter-original.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/images/emoji_url.png": "5964163e7dfbf4707b1dbb15b409278b",
"assets/assets/images/emoji_cake.png": "7bc82d116a6233e9dc1144fea3839f1f",
"assets/assets/images/swift-original.svg": "714948ba4cf994b64135be84ced494e2",
"assets/assets/fonts/HarmonyOS_Sans_Bold.ttf": "06fb3d4be835cdfda0fcc9e63f6c0392",
"assets/assets/fonts/HarmonyOS_Sans_Regular.ttf": "497d2f1b6827666193f84c28fe83ae92",
"assets/NOTICES": "54afe0154f04aa63071f39014a1344f0",
"assets/AssetManifest.bin": "b5a7b4158e07d3f3d2e9d8430106f4bb",
"assets/fonts/MaterialIcons-Regular.otf": "aa157b404eb04c7060167b900e916563",
"assets/AssetManifest.bin.json": "527060c1f9326097bde5e204e69b48f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "e5e84309cf2bb744bcd246c80005f178",
"/": "e5e84309cf2bb744bcd246c80005f178",
"manifest.json": "c0b3482ea641e3872830fd0af99c0aec",
"flutter.js": "76f08d47ff9f5715220992f993002504"};
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
