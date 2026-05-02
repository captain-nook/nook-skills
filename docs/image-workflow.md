# Image Workflow

This project assumes that image handling is optional.

## Two Image Types

1. Fixed brand images:
   - Header image
   - Footer image or QR-code image
   - Put these in the article template.

2. Per-article illustrations:
   - Generated or inserted only when needed.
   - Ask the user before generating images.
   - Insert as standard Markdown image links.

## Recommended Pipeline

```text
local/generated image -> PicGo/PicList -> image bed URL -> Markdown image link -> WeChat rendered body
```

## PicGo/PicList Note

Some PicGo desktop setups fail to read image paths containing Chinese characters or spaces. The helper script copies files to an ASCII-only temporary folder before uploading.

See:

```powershell
scripts/upload_wechat_images.ps1
```

## Image Upload Helper

Example:

```powershell
.\scripts\upload_wechat_images.ps1 -Files ".\examples\image1.png",".\examples\image2.png"
```

The script returns JSON containing source paths, staged paths, and uploaded URLs.

## Privacy

Do not commit:

- WeChat credentials
- PicGo/PicList secrets
- R2/S3 keys
- private QR codes unless intended for public release
- unpublished article assets unless intended for public release
