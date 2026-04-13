# 离职申请助手.skill

> 一个用于辅助填写离职申请、整理离职原因、准备离职面谈回答的 AI Skill。

它适合这些场景：

- 不知道离职申请表应该填什么
- 想把离职原因写得更正式、稳妥、体面
- 想提前准备 HR / 主管面谈会问到的问题
- 想整理最后工作日、交接、假期、报销、资产归还等检查项

## 功能

- 辅助填写离职申请表
- 起草和润色离职原因
- 生成提交前检查清单
- 准备离职面谈高频问题回答
- 将敏感或情绪化表达改写为更稳妥的版本

## 快速安装

#### macOS / Linux

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

#### Windows PowerShell

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

> 如果目标目录已存在，脚本会直接报错，避免覆盖本地修改。

安装完成后，重启或新开一个会话，让宿主重新扫描 skills。

## 快速使用

直接用自然语言触发，例如：

```text
帮我写一份离职申请
```

```text
帮我准备离职面谈，重点是离职原因、未来规划、对公司的建议
```

```text
我真实想法是“受不了领导”，帮我改成适合写进离职申请和面谈的话术
```

## 详细安装 / Installation

仓库地址：`https://github.com/SAIL-Fang/leave_skill.git`

### Claude Code

#### macOS / Linux

安装到当前项目：

```bash
mkdir -p .claude/skills
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git .claude/skills/leave-application-assistant
```

全局安装：

```bash
mkdir -p ~/.claude/skills
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git ~/.claude/skills/leave-application-assistant
```

#### Windows PowerShell

安装到当前项目：

```powershell
New-Item -ItemType Directory -Force .claude\skills | Out-Null
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git .claude\skills\leave-application-assistant
```

全局安装：

```powershell
New-Item -ItemType Directory -Force "$HOME\.claude\skills" | Out-Null
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git "$HOME\.claude\skills\leave-application-assistant"
```

### OpenCode

#### macOS / Linux

安装到 `~/.agents/skills`：

```bash
mkdir -p ~/.agents/skills
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git ~/.agents/skills/leave-application-assistant
```

#### Windows PowerShell

安装到 `~/.agents/skills`：

```powershell
New-Item -ItemType Directory -Force "$HOME\.agents\skills" | Out-Null
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git "$HOME\.agents\skills\leave-application-assistant"
```

### Codex / OpenClaw 风格目录

#### macOS / Linux

安装到 `~/.codex/skills`：

```bash
mkdir -p ~/.codex/skills
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git ~/.codex/skills/leave-application-assistant
```

#### Windows PowerShell

安装到 `~/.codex/skills`：

```powershell
New-Item -ItemType Directory -Force "$HOME\.codex\skills" | Out-Null
git clone --depth 1 https://github.com/SAIL-Fang/leave_skill.git "$HOME\.codex\skills\leave-application-assistant"
```

## 使用

你可以直接用自然语言触发，不一定非要输入命令名。

例如：

```text
帮我写一份离职申请
```

```text
我下个月离职，帮我整理最后工作日、离职原因和交接清单
```

```text
帮我准备离职面谈，重点是离职原因、未来规划、对公司的建议
```

```text
我真实想法是“受不了领导”，帮我改成适合写进离职申请和面谈的话术
```

## 这个 Skill 会帮你整理哪些内容

默认围绕这些内容工作：

1. 申请人
2. 申请日期
3. 最后工作日
4. 离职原因
5. 补充意见
6. 工作交接安排
7. 假期确认
8. 差旅报销 / 借款 / 资产归还检查项
9. 离职面谈高频问题回答

常见面谈问题包括：

1. 为什么离职
2. 未来职业规划是什么
3. 在公司最大的收获是什么
4. 与团队合作情况如何
5. 对公司或团队有什么建议

## 示例

### 示例 1：填写离职申请

输入：

```text
帮我写离职申请。最后工作日是 5 月 31 日，原因偏职业发展，语气希望正式一点。
```

输出会类似：

```markdown
## 离职申请表填写建议
- 申请人：<待补充>
- 申请日期：<当天日期或待确认>
- 最后工作日：2026-05-31
- 离职原因：经过认真考虑，我决定基于个人职业发展方向和阶段性规划提出离职申请。感谢公司和团队在任职期间给予的支持与帮助，我会在最后工作日前认真完成工作交接。
- 补充意见：我会积极配合工作交接，尽量保障相关工作的平稳过渡。
```

### 示例 2：准备离职面谈

输入：

```text
帮我准备离职面谈，我不想说得太冲，但真实原因是发展空间有限。
```

输出会类似：

```markdown
## 离职面谈准备
### 1. 离职原因
这次离职主要还是基于我现阶段的职业发展考虑。我希望下一阶段能获得更匹配的发展空间和成长机会，所以做出了这个决定。

### 2. 未来规划
接下来我会优先结合自己的长期规划，寻找更适合持续成长的方向。
```

## 项目结构

```text
leave_skill/
├── README.md
├── SKILL.md
├── scripts/
│   ├── install.ps1
│   └── install.sh
└── references/
    └── templates.md
```

## 文件说明

- `SKILL.md`
  核心 skill 定义，包含触发说明、工作方式、输出格式和处理原则。

- `references/templates.md`
  可复用模板，包括：
  - 简短稳妥版离职原因
  - 真诚正式版离职原因
  - 面谈回答模板
  - 提交前检查清单模板

- `scripts/install.sh` / `scripts/install.ps1`
  用于快速安装到 Claude Code、OpenCode/Agent Skills、Codex 风格目录。

## 适合与不适合

适合：

- 需要把离职信息整理成正式文案
- 需要提前准备面谈话术
- 需要一份离职前检查清单

不适合：

- 替用户伪造事实
- 代替用户做法律、劳动仲裁或合规判断
- 输出攻击性、侮辱性或泄密内容

## 注意事项

- 这个 Skill 的目标是帮助你更清晰、更稳妥地表达，而不是替你决定是否离职。
- 敏感信息、实际劳动争议、补偿谈判等问题，建议结合公司制度和专业意见判断。
- 如果你的真实诉求比较强烈，建议先让 Skill 帮你出两个版本：
  - 表单提交版
  - 面谈表达版

## License

MIT
