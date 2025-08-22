# HY5066 Bluetooth Module Control Tool

A powerful and user-friendly GUI tool for controlling HY5066 Bluetooth audio modules via UART/Serial communication.

## 🚀 Features

### Core Functionality
- **🎵 Audio Control**: Volume settings, EQ presets, audio effects
- **🔧 Configuration**: Bluetooth name, pairing settings, system parameters  
- **📡 Serial Communication**: Robust UART/Serial interface with auto-discovery
- **🌐 Multi-language**: English and Traditional Chinese support
- **📋 Command Library**: Complete AT command reference for HY5066

### User Interface
- **🎨 Modern GUI**: Clean, intuitive PyQt5 interface
- **⚡ Real-time**: Live communication log and instant feedback
- **🔄 Auto-discovery**: Automatic COM port detection and connection
- **📱 Responsive**: Works on various screen resolutions

### Advanced Features
- **🎯 Quick Commands**: Pre-configured buttons for common operations
- **📊 Status Monitoring**: Real-time device status and settings query
- **🛡️ Error Handling**: Comprehensive error detection and recovery
- **💾 Settings**: Automatic language preference saving

## 📦 Download & Installation

### Quick Start (Recommended)
1. Download the latest release from [Releases](../../releases)
2. Extract the ZIP file to your desired location
3. Run `Launch_HY5066_tool.bat` or double-click `HY5066_tool.exe`
4. That's it! No installation required.

### System Requirements
- **OS**: Windows 10/11 (64-bit)
- **Hardware**: HY5066 Bluetooth module connected via USB-to-Serial adapter
- **Ports**: Available COM port for serial communication

## 🔌 Hardware Setup

### Connection Diagram
```
PC USB Port → USB-to-Serial Adapter → HY5066 Module
                                    ├─ VCC (3.3V/5V)
                                    ├─ GND
                                    ├─ RX → TX (Adapter)
                                    └─ TX → RX (Adapter)
```

### Supported Adapters
- CH340/CH341 USB-to-Serial
- FTDI FT232 series
- Prolific PL2303
- Any standard USB-to-TTL adapter

## 🎮 Usage Guide

### First Launch
1. The tool will show a welcome screen with a 10-second countdown
2. Connect your HY5066 module to a COM port
3. Click "Refresh" to detect available ports
4. Select your COM port and baud rate (default: 9600)
5. Click "Connect" to establish communication

### Basic Operations

#### Audio Control
- **Volume**: Set system volume (0-16) or prompt tone volume
- **EQ Presets**: Choose from 9 audio profiles (Normal, Rock, Jazz, etc.)
- **Audio Effects**: Enable/disable various sound enhancements

#### Bluetooth Management
- **Device Name**: Change Bluetooth broadcast name
- **Pairing Control**: Enable/disable pairing mode
- **Connection Settings**: Auto-reconnect and power-on behavior

#### System Configuration  
- **MIC Settings**: Configure microphone input mode
- **DAC Control**: Always-on digital audio converter settings
- **Output Mode**: Stereo/Mono audio output selection

### Command Interface
- Use the manual command field for custom AT commands
- All commands support both BT+ and COM+ prefixes
- Real-time communication log shows all traffic

## 📚 AT Command Reference

### Basic Commands
| Command | Description | Example |
|---------|-------------|---------|
| `BT+GAD` | Get Bluetooth address | Returns MAC address |
| `BT+GNAME` | Get device name | Returns current name |
| `COM+MTS?` | Query volume settings | Returns volume level |

### Volume Control
| Command | Description | Range |
|---------|-------------|-------|
| `COM+SETTS{XX}` | Set prompt volume | 00-16 |
| `COM+V{XX}` | Set default volume | 00-16 |

### EQ Settings
| Command | Description |
|---------|-------------|
| `COM+SETEQ00` | Normal mode |
| `COM+SETEQ01` | Boost mode |
| `COM+SETEQ02` | Treble mode |
| `COM+SETEQ08` | R&P mode |

*See full command reference in the Documentation folder*

## 🛠️ Troubleshooting

### Connection Issues
- **COM Port Not Found**: Install proper USB-to-Serial drivers
- **Connection Failed**: Check baud rate (try 9600, 38400, 115200)
- **No Response**: Verify hardware connections and power supply

### Common Solutions
- **"ERR" Response**: Check command syntax and parameter ranges  
- **Timeout Errors**: Reduce baud rate or check cable quality
- **Command Not Working**: Ensure correct prefix (BT+ or COM+)

## 🔄 Updates & Changelog

### Version 1.0.2 (2025-08-22)
- Initial release
- Complete HY5066 command support
- Multi-language interface (English/Chinese)
- Auto COM port detection
- Real-time communication logging
- Startup splash screen with donation info

## 💝 Support the Developer

If you find this tool helpful, consider buying me a coffee! ☕

**PayPal**: [spencer.chen7@gmail.com](https://paypal.me/spencerchen7)

Your support helps maintain and improve this tool for everyone.

## 📄 License

This project is released under the MIT License. See LICENSE file for details.

## 🤝 Contributing

While this is a public release repository, the main development happens in a private repository. 

For bug reports or feature requests:
1. Open an issue in this repository
2. Provide detailed description and system information
3. Include communication logs if relevant

## 📞 Contact

- **Author**: Spencer Chen
- **Email**: spencer.chen7@gmail.com
- **Tool Version**: 1.0.2
- **Release Date**: 2025-08-22

---

**⚠️ Disclaimer**: This tool is provided as-is. Always backup your HY5066 module settings before making changes. The author is not responsible for any damage caused by improper use.

**🎯 Keywords**: HY5066, Bluetooth, Serial, UART, Audio Control, AT Commands, PyQt5, GUI Tool
