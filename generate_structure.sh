#!/bin/bash

# Criar estrutura de diretórios
mkdir -p "farm-nostr-game/docs" \
         "farm-nostr-game/renderpacks/cozy-pixel-v1/assets/backgrounds" \
         "farm-nostr-game/renderpacks/cozy-pixel-v1/assets/spritesheets" \
         "farm-nostr-game/renderpacks/cozy-pixel-v1/assets/thumbnails" \
         "farm-nostr-game/worlds/farm01/maps" \
         "farm-nostr-game/worlds/farm01/crops" \
         "farm-nostr-game/worlds/farm01/examples" \
         "farm-nostr-game/tools"

# Criar arquivos na raiz
touch "farm-nostr-game/README.md" "farm-nostr-game/LICENSE" "farm-nostr-game/.gitignore"

# Criar documentação
touch "farm-nostr-game/docs/"{kinds.md,worlddefinition.md,mapstate.md,plantstate.md,plantaction.md,renderpack.md}

# Criar arquivos do renderpack (JSONs com {})
echo "{}" > "farm-nostr-game/renderpacks/cozy-pixel-v1/manifest.json"
echo "{}" > "farm-nostr-game/renderpacks/cozy-pixel-v1/frames.json"
echo "{}" > "farm-nostr-game/renderpacks/cozy-pixel-v1/palette.json"
touch "farm-nostr-game/renderpacks/cozy-pixel-v1/CHANGELOG.md"

# Criar assets placeholder
touch "farm-nostr-game/renderpacks/cozy-pixel-v1/assets/backgrounds/farm.png"
touch "farm-nostr-game/renderpacks/cozy-pixel-v1/assets/spritesheets/"{tiles.png,crops.png,overlays.png}
touch "farm-nostr-game/renderpacks/cozy-pixel-v1/assets/thumbnails/cozy-pixel-v1.png"

# Criar arquivos do mundo (JSONs com {})
echo "{}" > "farm-nostr-game/worlds/farm01/world.json"
echo "{}" > "farm-nostr-game/worlds/farm01/maps/farm.json"
echo "{}" > "farm-nostr-game/worlds/farm01/crops/catalog.json"
echo "{}" > "farm-nostr-game/worlds/farm01/crops/parsnip.json

# Criar exemplos
echo "{}" > "farm-nostr-game/worlds/farm01/examples/example_world_event.json"
echo "{}" > "farm-nostr-game/worlds/farm01/examples/example_map_event.json"
echo "{}" > "farm-nostr-game/worlds/farm01/examples/example_plant_event.json"
echo "{}" > "farm-nostr-game/worlds/farm01/examples/example_action_event.json

# Criar tools
touch "farm-nostr-game/tools/"{build_frames.ts,validate_manifest.ts,README.md}

echo "Estrutura criada com sucesso em farm-nostr-game/"
