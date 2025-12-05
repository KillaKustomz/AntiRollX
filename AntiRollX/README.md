# 🚗 AntiRollX
### *AntiRollX - Vehicle Flip & Roll Prevention System for FiveM*

[![Cover](github.com/KillaKustomz/AntiRollX/tree/main/AntiRollX/assets/images/icon1.png)

AntiRollX is a lightweight, standalone FiveM resource that removes unrealistic “arcade-style” vehicle control by disabling mid-air steering and preventing players from manually flipping their vehicle while upside down. Designed for immersion-focused roleplay servers.

---

## ✨ Features (v1.1.0)

### 🛫 **Mid-Air Steering Prevention**
- Disables all player steering inputs **anytime the vehicle becomes airborne**
- No more air rolls, pitch adjustments, or stunt-style mid-air corrections
- Vehicles must follow *pure GTA physics* until they land

### 🚫 **Upside-Down Flip Prevention**
- When a vehicle is on its roof and nearly stationary:
  - Steering inputs are blocked
  - Prevents unrealistic manual self-righting

### 🎯 **Enhanced Crash Realism**
- Jumps, ramps, hill launches, and collisions are now fully physics-based
- Players must approach terrain and speed thoughtfully
- Crash outcomes feel more authentic and unpredictable

### ⚙️ **Lightweight & Client-Side**
- Minimal performance impact
- No external dependencies
- Compatible with every major framework (ESX, QBCore, QBox, VRP, Standalone)

### 🧩 **Plug-and-Play Installation**
- Drop into resources and go
- No configuration required (config coming in v1.2)

---


## 📦 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/KillaKustomz/AntiRollX.git
   ```
   
###	*OR*
   
1. **Download** the latest release

2. **Extract** to your `resources` folder
	```bash
	/resources/AntiRollX
	```
3. **Add** this line to your `server.cfg`:
	```cfg
	ensure AntiRollX
	```
4. **Restart** your server

That's it — no dependencies, no configuration required.

## 🛠️ How It Works

AntiRollX monitors the player's current vehicle and applies control restrictions based on:

• Vehicle airborne state
Detected via IsEntityInAir(vehicle)
→ Steering controls disabled while in the air
• Vehicle roll angle
Detected via GetEntityRoll(vehicle)
→ Roll > 75° or < -75° + speed < 2 m/s disables steering

This ensures players cannot exploit unrealistic movement to correct jumps, recover from flips, or maintain “arcade-like” direction control.

## 📁 File Structure

```bash
AntiRollX/
│
├── client.lua        # Airborne + upside-down control prevention
└── fxmanifest.lua    # Resource metadata
```

## 🧪 Compatibility

AntiRollX is fully standalone and compatible with:

• ESX
• QBCore
• QBox
• VRP
• Custom frameworks
• Standalone setups

Runs on all artifacts supporting fx_version 'cerulean'.

## 🔧 Configuration

Currently zero-config by design.

Planned optional configuration includes:

• Adjustable roll sensitivity
• Speed threshold customization
• Vehicle class whitelist/blacklist
• Timer-based flip prevention
• Cooldowns or damage-based effects

## 📜 Example Behavior

| Scenario                         | Result              |
| -------------------------------- | ------------------- |
| Vehicle upside down & stationary | ❌ Steering disabled |
| Vehicle upside down but sliding  | ✔ Steering allowed  |
| Vehicle upright                  | ✔ No restrictions   |
| Quad/bike flipped                | ❌ Steering disabled |

## ❤️ Contributing

Contributions, bug reports, and enhancements are welcome!

To contribute:

1. Fork the repo
2. Create a feature branch
3. Submit a pull request

## 📜 License

**GPL-3.0 License**

This project is licensed under the **GNU General Public License v3.0**.

You are free to:

- ✔ Run the program for any purpose  
- ✔ Study how the program works  
- ✔ Modify it  
- ✔ Share it  
- ✔ Distribute modified versions  

However, **any distributed modified version must also be open-source** and licensed under **GPL-3.0**.  
Closed-source forks or redistributions are **not permitted**.

Full license text is available here:  
https://www.gnu.org/licenses/gpl-3.0.en.html


## 🏷️ Credits

AntiRollX Development Team
Originally created by KillaKustomz