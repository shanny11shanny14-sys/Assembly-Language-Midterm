
# ARM Assembly Language — Midterm Project

##  Project Overview｜專案介紹

本專案為中原大學資訊工程學系「組合語言與嵌入式系統」課程的期中分組實作，使用 ARM Assembly Language 完成組員資料顯示、學號輸入與加總功能。

透過本次實作，學習 ARM 處理器的基本運作方式，包含 CPU 暫存器操作、記憶體存取、函式呼叫、堆疊管理及不同程式模組之間的整合。

### Course Information

- Course：組合語言與嵌入式系統
- Semester：113 學年度第 1 學期
- Instructor：朱守禮教授
- Team：Group 02
- Language：ARM Assembly Language

---

##  My Contribution｜個人貢獻

本專案為三人共同完成的課程作業，我主要負責 **main.s 主程式開發、功能模組整合及程式流程控制**。

### 1. 主程式架構與流程控制

負責設計 main.s 的執行流程，透過 `bl name` 與 `bl id` 呼叫不同功能模組，使程式依序完成組員姓名顯示、學號輸入及加總運算，最後整合輸出完整資訊。

### 2. 模組整合與資料存取

將組員分別完成的 name.s 與 id.s 整合至主程式，透過跨模組的全域符號存取組員姓名、學號及加總結果。

使用 `ldr` 指令載入資料位址與數值，並配合 `printf` 完成組員資訊的整合輸出。

### 3. 函式呼叫與堆疊管理

運用 ARM 組合語言的 `bl` 指令進行函式呼叫，並透過 `stmfd` 與 `ldmfd` 保存及還原返回位址，確保主程式能按照預期順序執行並正常結束。

### 4. 整體功能測試與除錯

負責測試不同功能模組整合後的執行結果，確認姓名顯示、學號輸入及加總功能能夠正確銜接。

透過反覆測試與除錯，進一步理解 ARM 組合語言中的資料傳遞、函式呼叫及程式執行流程。

### 5. 學習收穫

透過這次實作，我了解到一個完整的程式不只是各個函式能夠獨立執行，更重要的是不同模組之間的資料傳遞與流程整合。

在負責主程式的過程中，我進一步理解 ARM 組合語言的函式呼叫機制、暫存器操作及堆疊管理，也培養了模組整合、程式除錯與系統化思考的能力。

---

## 🛠 Development Environment｜開發環境

| Tool | Purpose |
|---|---|
| ARM Assembly | 主要程式語言 |
| GCC / GAS | 編譯與組譯 |
| GDB | 程式除錯 |
| Code::Blocks | 程式開發與測試 |
| Notepad++ | 編輯原始碼 |
| WinSCP | 本機與虛擬機檔案傳輸 |

---

##  Project Structure｜專案架構

```text
ARM-Assembly-Midterm/
│
├── main.s       # 主程式與功能整合
├── name.s       # 組別與組員姓名顯示
├── id.s         # 學號輸入與加總
└── README.md    # 專案說明
```

### main.s — Main Program

負責整合 name.s 與 id.s，控制程式執行順序，並輸出完整組員資訊及學號總和。

### name.s — Name Display

負責儲存及顯示組別名稱與三位組員的英文姓名。

### id.s — ID Processing

負責讀取組員學號、進行加總運算，以及處理使用者輸入的命令。

---

## ⚙️ Core Implementation｜核心技術

本專案主要使用以下 ARM 組合語言技術：

| Technique | Description |
|---|---|
| Register Operations | CPU 暫存器操作 |
| Load / Store | 記憶體資料存取 |
| Conditional Execution | 條件式指令 |
| Operand2 | 立即數、暫存器及移位運算 |
| Stack Management | 堆疊與返回位址管理 |
| Function Calls | 使用 BL 指令呼叫函式 |
| C Library Functions | 使用 printf、scanf |

---

##  Execution Flow｜執行流程

程式執行流程如下：

1. 主程式呼叫 name 函式，顯示組別及組員姓名。
2. 呼叫 id 函式，讀取三位組員學號。
3. 透過 ARM 組合語言指令計算學號總和。
4. 根據使用者輸入的命令顯示資料。
5. 返回主程式，整合輸出組員資訊與學號總和。
6. 程式執行結束。

---

##  Team Members & Contributions｜組員與分工

| Member | Contribution |
|---|---|
| 謝采凌 | main.s、主程式整合與流程控制 |
| 曹湘婷 | id.s、學號輸入與加總處理 |
| 徐雨瑄 | name.s、資料區設計與姓名顯示 |

本專案為三人共同完成的課程作業，各組員分別負責不同模組，最後整合為完整的 ARM Assembly 程式。

---

##  Project Summary｜專案總結

透過這次 ARM 組合語言期中實作，我們將不同功能模組整合為完整程式，並透過實際操作加深對暫存器、記憶體及函式呼叫機制的理解。

對我而言，負責 main.s 的過程讓我學習到如何整合不同組員完成的程式模組，並確認資料傳遞與執行流程的正確性，也為後續進行較大型的程式開發與專題研究累積了實作經驗。

