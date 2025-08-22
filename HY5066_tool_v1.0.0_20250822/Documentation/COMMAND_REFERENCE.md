# HY5066 藍芽模塊命令參考卡

## 🔍 查詢命令
- `BT+GAD` - 查詢藍芽位址
- `BT+GNM` - 查詢藍芽名稱
- `COM+MTS` - 查詢提示音音量（0-16）
- `COM+GV` - 查詢開機默認音量（00-16）
- `COM+TONE` - 顯示音量資訊
- `COM+MTONE` - 查詢音量表資訊
- `COM+MEQ` - 查詢 EQ 設定
- `COM+MMICST` - 查詢 MIC 狀態
- `COM+MCHANST` - 查詢通道狀態
- `COM+MDACALWAYS?` - 查詢 DAC 常開狀態

## ⚙️ 基本設定命令
- `COM+SNAME+[名稱]` - 設定藍芽名稱
- `COM+SETTS[0-16]` - 設定提示音音量（範圍 0-16）
- `COM+V[00-16]` - 設定開機默認音量（範圍 00-16）
- `COM+TONEON/OFF` - 提示音開關
- `COM+GOBACKON/OFF` - 上電回連開關
- `COM+CALLON/OFF` - 通話功能開關

## 🎵 音訊控制命令
- `COM+STEREO` - 立體聲輸出
- `COM+MONO` - 單聲道輸出
- `COM+MICDIFFER` - MIC 差分輸入
- `COM+MICSINGLE` - MIC 單端輸入
- `COM+MDACALWAYSON/OFF` - DAC 常開開關

## 🎧 EQ 音效命令
- `COM+SETEQNORMAL` - EQ 正常模式
- `COM+SETEQBOOST` - EQ 增強模式
- `COM+SETEQTREBLE` - EQ 高音模式
- `COM+SETEQPOP` - EQ 流行模式
- `COM+SETEQROCK` - EQ 搖滾模式
- `COM+SETEQCLASSIC` - EQ 古典模式
- `COM+SETEQJAZZ` - EQ 爵士模式
- `COM+SETEQDANCE` - EQ 舞曲模式
- `COM+SETEQBASS` - EQ 低音模式
- `COM+SETTS[0-16]` - 設定音效模式

## 🔄 系統命令
- `COM+REBOOT` - 重啟模塊（需重啟生效）

## 📝 使用說明
1. 參數命令範例：
   - 設定提示音音量：`COM+SETTS5` (提示音音量設為 5, 範圍 0-16)
   - 設定開機默認音量：`COM+V05` (開機音量設為 05, 範圍 00-16)
   - 設定名稱：`COM+SNAME+MyBluetooth`
   - 查詢提示音音量：`COM+MTS`
   - 查詢開機默認音量：`COM+GV`
   - 顯示音量資訊：`COM+TONE`
   - 查詢音量表資訊：`COM+MTONE`

2. 查詢命令會返回相應的狀態資訊
3. 設定命令通常需要 REBOOT 後生效
4. BT+ 前綴僅用於查詢藍芽相關資訊
5. COM+ 前綴用於其他所有控制命令

## 🔧 波特率設定
- 預設波特率：9600
- 支援波特率：9600, 19200, 38400, 57600, 115200

## ⚡ 快速測試
1. 查詢藍芽名稱：`BT+GNM`
2. 查詢音量：`COM+GV`
3. 播放提示音：`COM+MTS`
4. 設定音量到 70：`COM+V70`
