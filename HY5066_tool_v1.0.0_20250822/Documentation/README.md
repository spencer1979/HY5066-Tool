# HY5066 Bluetooth Control Tool - Development Repository

**Private development repository for HY5066 Bluetooth Module Control Tool**

## Project Overview

This is a PyQt5-based GUI application for controlling HY5066 Bluetooth modules via AT commands. The application provides a user-friendly interface for managing Bluetooth connections, audio settings, and device configuration.

## Key Features

- **Multi-language Support**: English and Traditional Chinese (繁體中文)
- **HY5066 Module Control**: Complete AT command interface
- **Serial Communication**: Auto-detection of COM ports
- **Audio Control**: Volume and EQ settings
- **PayPal Donation Integration**: Support the developer
- **Professional Release System**: Automated build and deployment

## Development Environment

- **Language**: Python 3.11+
- **GUI Framework**: PyQt5
- **Build Tool**: PyInstaller
- **Version Control**: Git (dual repository setup)
- **Author**: Spencer Chen (spencerchen7@gmail.com)

## File Description

- `HY5066_setup.py` - Original command-line version
- `HY5066_gui.py` - PyQt GUI version (recommended)
- `install_dependencies.py` - Dependency installation script
- `build_exe.py` - Executable packaging script
- `create_release.py` - Release package creation script
- `MULTI_LANGUAGE_GUIDE.md` - Multi-language feature guide
- `README.md` - This documentation

## Installation Steps

### 1. Install Dependencies
Run the installation script:
```bash
python install_dependencies.py
```

Or install manually:
```bash
pip install PyQt5 pyserial
```

### 2. Run the Program

#### GUI Version (Recommended)
```bash
python HY5066_gui.py
```

#### Command-line Version
```bash
python HY5066_setup.py
```

#### Pre-compiled Executable
```bash
# Download from release folder or build yourself:
python build_exe.py
# Then run: dist/HY5066_tool.exe
```

## Usage Guide

### GUI Version Features

1. **Connection Settings**
   - Select COM port (automatically scans available ports)
   - Set baud rate (default 9600)
   - Connect/disconnect to Bluetooth module

2. **Command Operations**
   - **Query Commands**: Query Bluetooth address, name, volume, etc.
   - **Audio Commands**: Play tones, set volume
   - **Settings Commands**: Enable/disable various features
   - **Audio Effects**: EQ settings (NORMAL, BOOST, TREBLE, POP, ROCK, CLASSIC, JAZZ, DANCE, BASS)
   - **System Commands**: Reboot module
   - **Manual Commands**: Enter custom AT commands

3. **Real-time Log**
   - Shows all sent commands and received responses
   - Timestamped entries
   - Clearable log

4. **Language Selection**
   - Menu bar → Language → Select preferred language
   - Settings are automatically saved
   - Interface updates immediately

## Supported HY5066 AT Commands

| Function | Command | Description |
|----------|---------|-------------|
| Query Bluetooth Address | BT+GAD | Get Bluetooth MAC address |
| Query Bluetooth Name | BT+GNM | Get Bluetooth device name |
| Set Bluetooth Name | COM+SNAME+[name] | Set Bluetooth device name |
| Query Prompt Sound Volume | COM+MTS | Query prompt sound volume |
| Set Volume | COM+V[0-99] | Set volume 0-99 |
| Query Volume | COM+GV | Query current volume |
| Query EQ Settings | COM+MEQ | Query current EQ mode |
| EQ - NORMAL | COM+SETEQNORMAL | Set EQ to NORMAL mode |
| EQ - BOOST | COM+SETEQBOOST | Set EQ to BOOST mode |
| EQ - TREBLE | COM+SETEQTREBLE | Set EQ to TREBLE mode |
| EQ - POP | COM+SETEQPOP | Set EQ to POP mode |
| EQ - ROCK | COM+SETEQROCK | Set EQ to ROCK mode |
| EQ - CLASSIC | COM+SETEQCLASSIC | Set EQ to CLASSIC mode |
| EQ - JAZZ | COM+SETEQJAZZ | Set EQ to JAZZ mode |
| EQ - DANCE | COM+SETEQDANCE | Set EQ to DANCE mode |
| EQ - BASS | COM+SETEQBASS | Set EQ to BASS mode |
| Set Sound Effects | COM+SETTS[0-16] | Set sound effect mode 0-16 |
| Prompt Sound Control | COM+TONEON/OFF | Enable/disable prompt sound |
| Power-on Reconnect | COM+GOBACKON/OFF | Enable/disable power-on auto reconnect |
| Call Function | COM+CALLON/OFF | Enable/disable call function |
| MIC Settings | COM+MICDIFFER/SINGLE | Differential/single-ended input |
| Audio Output | COM+STEREO/MONO | Stereo/mono output |
| Query Channel Status | COM+MCHANST | Query audio channel status |
| DAC Always-on | COM+MDACALWAYSON/OFF | DAC always-on switch |
| Reboot Module | COM+REBOOT | Restart the module |

## Hardware Connection

1. Connect HY5066 module to USB-to-Serial converter
2. Confirm wiring:
   - GND → GND
   - VCC → 3.3V or 5V
   - TXD → Converter RXD
   - RXD → Converter TXD

## Troubleshooting

1. **No COM ports found**
   - Ensure USB-to-Serial converter is properly connected
   - Check drivers in Device Manager

2. **Connection failed**
   - Check baud rate setting (usually 9600 or 115200)
   - Verify hardware connections

3. **No response**
   - Check command format is correct
   - Try different baud rates
   - Ensure module power supply is normal

4. **Language issues**
   - Check if `language_config.json` exists in program directory
   - Try deleting config file to reset to default language
   - Ensure program has write permissions

## Building Executable

### Prerequisites
- Python 3.7+
- PyInstaller

### Build Commands
```bash
# Build executable
python build_exe.py

# Create release package
python create_release.py
```

## Version History

- v1.0 - Initial command-line version
- v2.0 - Added PyQt GUI version
- v2.1 - Added multi-language support (English + Traditional Chinese)
- v2.2 - Added executable packaging and release creation

## Features Summary

✅ **GUI Interface** - User-friendly graphical interface  
✅ **Multi-Language** - English and Traditional Chinese support  
✅ **35 AT Commands** - Complete HY5066 command set  
✅ **Real-time Communication** - Live command/response logging  
✅ **Auto Port Detection** - Automatic COM port scanning  
✅ **Executable Package** - Standalone .exe for easy distribution  
✅ **Cross-Resolution** - Adaptable to different screen sizes
