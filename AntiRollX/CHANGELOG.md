# 📜 AntiRollX Changelog
All notable changes to this project will be documented in this file.

This project adheres to **Semantic Versioning**.  
Format: `MAJOR.MINOR.PATCH`

---

## [1.1.0] - 2025-02-07
### ✨ Added
- **Airborne control prevention:**  
  Vehicles now lose all steering influence while airborne, preventing unrealistic mid-air movement.
- Enhanced realism by forcing vehicles to follow pure GTA physics during jumps or crashes.
- Updated `fxmanifest.lua` to reflect new version and improved description.
- Updated README to document new airborne behavior.

### 🛠 Improved
- Internal logic reorganized for cleaner branching and better readability.

---

## [1.0.0] - 2025-02-06
### 🎉 Initial Release
- Base version of AntiRollX released.
- Prevents unrealistic steering/flip corrections when vehicles are upside down.
- Lightweight client-side loop monitoring roll angle and speed.
- Framework-agnostic; works on ESX, QBCore, QBox, VRP, and standalone.
- Included README and MIT/GPL-ready formatting options.
