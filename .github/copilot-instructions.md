# Copilot Instructions for Minecraft Datapack Workspace

## Overview
This workspace contains multiple Minecraft datapacks, each with its own structure, functions, and custom logic. The main datapack for development is `(Arquivo de Testes) Projeto Esconde-Esconde`, which implements a hide-and-seek game mode with custom gadgets, advancements, dialogs, and more.

## Key Directories & Files
- `data/<namespace>/function/` — Main logic scripts (.mcfunction) for custom behaviors and gadgets.
- `data/<namespace>/advancement/`, `dialog/`, `dimension/`, etc. — Support files for game mechanics, UI, and world configuration.
- `pack.mcmeta` — Metadata for each datapack.
- Other folders (e.g., `Soccer/`, `gerador de loot/`, `Pacote de Mapas/`) are separate datapacks with their own logic.

## Project-Specific Patterns
- **Function Organization:** Scripts are grouped by feature (e.g., `gadgets/clone_jump/trigger.mcfunction`). Use clear folder hierarchies for maintainability.
- **Advancements & Dialogs:** Custom advancements and dialogs are JSON files under their respective folders. Follow Minecraft's data format strictly.
- **Naming Conventions:** Use lowercase, underscores, and descriptive names for files and folders. Namespace all custom content (e.g., `hns:` for hide-and-seek).
- **Cross-Component Communication:** Functions often call other functions using `function <namespace>:<path>`. Keep dependencies explicit and avoid circular calls.

## Developer Workflows
- **Testing:** To test changes, reload the datapack in Minecraft (`/reload` command) and use in-game triggers or commands to activate features.
- **Debugging:** Use Minecraft's `/function` and `/data` commands to inspect state and run scripts directly. Add temporary debug output with `say` or `tellraw`.
- **Builds:** No automated build system; manual file edits and Minecraft reloads are standard.

## Integration Points
- **External Dependencies:** No external libraries; all logic is native Minecraft commands and JSON formats.
- **Compatibility:** Ensure all custom content is properly namespaced and does not conflict with vanilla or other datapacks in the workspace.

## Example Patterns
- To trigger a gadget: `function hns:gadgets/clone_jump/trigger`
- To add an advancement: Place a JSON file in `data/hns/advancement/` and reference it in-game.

## Best Practices
- Keep functions short and focused; split complex logic into multiple files.
- Document custom mechanics and triggers in comments within `.mcfunction` files.
- Validate JSON files with Minecraft's built-in error messages after reload.

---
_If any section is unclear or missing important details, please provide feedback so this guide can be improved._
