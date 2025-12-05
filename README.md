# 🚗 AntiRollX
### *AntiRollX - Vehicle Flip & Roll Prevention System for FiveM*

AntiRollX is a lightweight, standalone FiveM script that prevents players from unrealistically flipping or steering their vehicle while it's upside down. Designed as an immersion add-on for serious roleplay servers.

---

## ✨ Features

- 🔒 **Disables steering input when a vehicle is upside down**  
- 🎯 **Prevents unrealistic manual flipping**  
- ⚙️ *Fully client-side, zero performance cost*  
- 🌐 **Works on any framework** (ESX, QBCore, QBox, VRP, Standalone)  
- 🧩 Drag-and-drop ready  

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

AntiRollX continuously checks:

• The vehicle's roll angle
• The vehicle's speed

If both conditions are met:

• Roll > 75° or Roll < -75°
• Speed < 2 m/s

➡️ The script disables steering controls (left/right/up/down), preventing unrealistic manual flipping while upside down.

This encourages realistic recovery scenarios such as:

• Tow trucks
• Fire/rescue response
• /flip cooldown commands
• RP-based vehicle recovery

## 📁 File Structure

```bash
AntiRollX/
│
├── client.lua        # Core rollover prevention script
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


