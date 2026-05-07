<div align="center">

# 离职.skill

> 一个用于生成完整离职申请包的 AI Skill。

</div>

---

这个 Skill 会先询问或识别用户的真实离职原因，然后自动改写成更正式、稳妥、体面的表达，并生成一份完整离职申请包。

## 能力范围

默认输出一份完整离职申请包，包含：

1. 离职申请表填写建议
2. 面谈准备
3. 提离职流程建议

如果用户没有说明离职原因，Skill 会先问：

```text
这次离职的真实原因更接近什么？可以直接说真实想法，我会帮你改成正式、稳妥、体面的表达。
```

## 快速安装

### macOS / Linux

Claude Code 全局安装：

```bash
curl -fsSL https://raw.githubusercontent.com/SAIL-Fang/leave_skill/main/scripts/install.sh | sh -s -- claude global
```

OpenCode 全局安装：

```bash
curl -fsSL https://raw.githubusercontent.com/SAIL-Fang/leave_skill/main/scripts/install.sh | sh -s -- agents
```

Codex / OpenClaw 全局安装：

```bash
curl -fsSL https://raw.githubusercontent.com/SAIL-Fang/leave_skill/main/scripts/install.sh | sh -s -- codex
```

### Windows PowerShell

Claude Code 全局安装：

```powershell
& ([scriptblock]::Create((Invoke-RestMethod https://raw.githubusercontent.com/SAIL-Fang/leave_skill/main/scripts/install.ps1))) -Target claude -Scope global
```

OpenCode 全局安装：

```powershell
& ([scriptblock]::Create((Invoke-RestMethod https://raw.githubusercontent.com/SAIL-Fang/leave_skill/main/scripts/install.ps1))) -Target agents
```

Codex / OpenClaw 全局安装：

```powershell
& ([scriptblock]::Create((Invoke-RestMethod https://raw.githubusercontent.com/SAIL-Fang/leave_skill/main/scripts/install.ps1))) -Target codex
```

如果目标目录已存在，脚本会直接报错，避免覆盖本地修改。安装完成后，重启或新开一个会话，让宿主重新扫描 skills。

## 使用示例

### 只说要离职

输入：

```text
帮我写离职申请
```

Skill 会先询问真实离职原因，再生成完整申请包。

### 已经提供真实原因

输入：

```text
我想离职，真实原因是受不了领导，帮我准备完整离职申请包
```

Skill 会把原因改写成更稳妥的表达，并一次性输出申请表填写建议、面谈准备和提离职流程建议。

### 想知道怎么跟领导开口

输入：

```text
我准备因为职业发展离职，帮我想想怎么跟领导说，以及申请表怎么填
```

输出会包含线上开场白，例如：

```text
X工，方便会议室聊一下么？我有个事情想当面和您沟通一下。
```

也会包含线上找领导的开场白、会议室面谈开场话术，以及面谈问题 Q&A 建议。

## 离职申请表默认字段

如果用户没有提供公司实际表单，Skill 默认按这些字段生成填写建议：

1. 申请人
2. 所在部门 / 团队
3. 岗位 / 职位
4. 申请日期
5. 预计最后工作日
6. 离职原因
7. 工作交接安排
8. 补充说明 / 备注

未知信息会使用 `<待补充>`，不会替用户编造。

## 面谈准备范围

面谈部分固定覆盖：

1. 员工的离职原因
2. 员工未来的职业规划
3. 员工在公司工作的最大收益
4. 员工与同事合作情况
5. 员工对公司其他的意见及建议

关于公司、领导、团队和同事的描述，无论真实体验好坏，都会默认改成正向或中性偏正向表达。

## 提离职流程建议

流程建议会覆盖：

1. 先在线上找领导，例如：`X工，方便会议室聊一下么？我有个事情想当面和您沟通一下。`
2. 进入会议室后，用准备好的开场话术说明“这阵子考虑了很久，决定提出离职”。
3. 领导追问时，使用面谈准备里的 Q&A 建议回答。
4. 最后主动表达会配合离职流程和工作交接。

## 项目结构

```text
leave_skill/
├── README.md
├── SKILL.md
├── evals/
│   └── evals.json
├── references/
│   └── templates.md
└── scripts/
    ├── install.ps1
    └── install.sh
```

## 文件说明

- `SKILL.md`：核心 skill 定义，包含触发说明、工作流程、输出结构和表达原则。
- `references/templates.md`：可复用话术模板，包括申请表表达、面谈 Q&A、线上开场白和会议室面谈开场话术。
- `evals/evals.json`：用于后续评测 skill 行为的示例任务。
- `scripts/install.sh` / `scripts/install.ps1`：快速安装脚本。

## 不适合

- 替用户伪造事实
- 代替用户做法律、劳动仲裁、赔偿或合规判断
- 输出攻击性、侮辱性或泄密内容

## License

MIT
