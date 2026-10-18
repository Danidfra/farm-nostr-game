# Farm Nostr Game – Cozy Pixel Renderpack v1 🌱

This repository provides a **renderpack-only** reference implementation for a
Nostr-based farming game.

It is designed to be used as:
- a **fallback asset pack** for clients
- an **example renderpack** for world/map creators
- a base for future custom worlds using the same protocol

No game logic lives here — only **assets + layout metadata**.

---

## 📦 Renderpack: Cozy Pixel v1

### Base URL

https://raw.githubusercontent.com/Danidfra/farm-nostr-game/master/renderpacks/cozy-pixel-v1/

### Manifest

renderpacks/cozy-pixel-v1/manifest.json

Direct link:

https://raw.githubusercontent.com/Danidfra/farm-nostr-game/master/renderpacks/cozy-pixel-v1/manifest.json

---

## 🗺️ Available Maps

### Farm (v1)

Layout file:

meta/maps/farm.v1.json

Direct link:

https://raw.githubusercontent.com/Danidfra/farm-nostr-game/master/renderpacks/cozy-pixel-v1/meta/maps/farm.v1.json

**Description**
- Single farming field
- Fixed background image
- Centered planting grid
- Grid size: **9 × 4**
- Tile size: **96 × 96 px**

The layout defines:
- the background image
- the plantable area (rectangle)
- how the grid should be computed by the client

---

## 🎨 Assets

### Backgrounds

assets/backgrounds/farm.png

### Crops
Each crop image is a horizontal spritesheet with growth stages.

assets/crops/
├── carrot.png
├── parsnip.png
├── pumpkin.png
└── strawberry.png

Conventions:
- One crop per file
- Horizontal layout
- One frame per growth stage
- Frame size = `tileSize` (96px)

---

## 🧠 Client Rendering Rules (Recommended)

Clients consuming this renderpack should:
1. Load `manifest.json`
2. Resolve the selected map layout (`farm.v1`)
3. Render the background
4. Compute the planting grid inside `plantAreaRect`
5. Center each crop sprite inside its grid cell

All spacing between plants is computed automatically by the client.

---

## 🔗 Intended Usage with Nostr

This renderpack is meant to be referenced by Nostr events (e.g. MapState / World events).

Example tags:
```json
[
  ["renderpack_url", "https://raw.githubusercontent.com/Danidfra/farm-nostr-game/master/renderpacks/cozy-pixel-v1"],
  ["layout", "farm.v1"]
]

Clients may:
	•	fetch assets directly from this repository
	•	or override them with custom renderpacks

⸻

🧩 Philosophy
	•	Assets are replaceable
	•	Layouts are explicit
	•	Worlds are client-rendered
	•	Events describe state, not visuals

This allows:
	•	multiple clients
	•	custom art styles
	•	shared game state across different UIs

⸻

📜 License

- **Metadata and documentation** (the manifests, crop and map JSON, and this
  README): MIT. See [LICENSE](LICENSE).
- **Artwork** (the images under `renderpacks/*/assets/`): generated with ChatGPT
  image generation. It is not covered by LICENSE: how it may be reused, and what
  is and is not claimed about it, is in [ASSETS.md](ASSETS.md).

---