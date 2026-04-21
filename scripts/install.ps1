param(
    [ValidateSet('claude', 'agents', 'codex')]
    [string]$Target = 'claude',

    [ValidateSet('global', 'project')]
    [string]$Scope = 'global'
)

$repoUrl = 'https://github.com/SAIL-Fang/leave_skill.git'
$skillName = 'leave-application-assistant'
if ($Target -ne 'claude' -and $Scope -eq 'project') {
    throw "-Scope project is only supported when -Target claude"
}
switch ($Target) {
    'claude' {
        if ($Scope -eq 'project') {
            $dest = Join-Path '.claude\skills' $skillName
        } else {
            $dest = Join-Path "$HOME\.claude\skills" $skillName
        }
    }
    'agents' {
        $dest = Join-Path "$HOME\.agents\skills" $skillName
    }
    'codex' {
        $dest = Join-Path "$HOME\.codex\skills" $skillName
    }
}

$parent = Split-Path -Parent $dest
New-Item -ItemType Directory -Force $parent | Out-Null

if (Test-Path $dest) {
    throw "Target already exists: $dest. Remove it first if you want a clean reinstall."
}

git clone --depth 1 $repoUrl $dest
Write-Output "Installed to $dest"
