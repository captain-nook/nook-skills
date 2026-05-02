param(
  [Parameter(Mandatory = $true)]
  [string[]]$Files,

  [string]$UploadServer = "http://127.0.0.1:36677/upload"
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$stamp = Get-Date -Format "yyyyMMddHHmmss"
$stageDir = Join-Path $repoRoot ".tmp\wechat_article_images\$stamp"
New-Item -ItemType Directory -Force -Path $stageDir | Out-Null

$staged = @()
$mapping = @()

for ($i = 0; $i -lt $Files.Count; $i++) {
  $source = (Resolve-Path -LiteralPath $Files[$i]).Path
  $ext = [System.IO.Path]::GetExtension($source)
  if ([string]::IsNullOrWhiteSpace($ext)) {
    $ext = ".png"
  }

  $targetName = "wechat-image-{0:D2}{1}" -f ($i + 1), $ext.ToLowerInvariant()
  $target = Join-Path $stageDir $targetName
  Copy-Item -LiteralPath $source -Destination $target -Force
  $staged += $target
  $mapping += [pscustomobject]@{
    source = $source
    staged = $target
  }
}

$body = @{ list = $staged } | ConvertTo-Json -Depth 4
$response = Invoke-RestMethod -Uri $UploadServer -Method Post -ContentType "application/json" -Body $body

if (-not $response.success) {
  throw "PicGo upload failed: $($response.message)"
}

$result = @()
for ($i = 0; $i -lt $mapping.Count; $i++) {
  $result += [pscustomobject]@{
    source = $mapping[$i].source
    staged = $mapping[$i].staged
    url = $response.result[$i]
  }
}

$result | ConvertTo-Json -Depth 4
