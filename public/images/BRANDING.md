# Shadowdactyl Branding Assets

Complete branding package for Shadowdactyl Panel.

## Asset Structure

```
public/images/
├── logo/
│   ├── shadowdactyl-main.svg          # Main logo (800x800)
│   ├── shadowdactyl-favicon.svg       # Favicon (512x512)
│   └── shadowdactyl-compact.svg       # Navbar/header logo
├── wallpapers/
│   ├── shadowdactyl-wallpaper-hd.svg  # Dark wallpaper (2400x1600)
│   └── shadowdactyl-light.svg         # Light theme wallpaper
```

## Color Palette

### Primary Colors
- **Purple (Main)**: `#9333ea` - Primary brand color
- **Dark Purple**: `#6b21a8` - Secondary
- **Light Purple**: `#c084fc` - Accents
- **Dark Background**: `#0f0015` - Main background
- **Deep Navy**: `#1a0a2e` - Secondary background

### Accent Colors
- **Magenta**: `#ff00ff` - Eye glow, highlights
- **Light Purple**: `#a855f7` - Wings, details
- **White**: `#ffffff` - Text, contrast

## Usage Guidelines

### Logo
- Use `shadowdactyl-main.svg` for primary branding
- Use `shadowdactyl-compact.svg` in navigation bars
- Use `shadowdactyl-favicon.svg` for browser tabs

### Wallpapers
- `shadowdactyl-wallpaper-hd.svg` - Desktop backgrounds (2400x1600)
- `shadowdactyl-light.svg` - Light theme backgrounds
- Apply to admin dashboards, login pages

### Branding Elements
- Dragon icon represents power and control
- Hexagon shield with "S" and "D" = stability and design
- Purple + Black color scheme = modern, professional, gaming
- Tagline: "POWER. CONTROL. FREEDOM"

## Implementation

### In HTML
```html
<img src="/images/logo/shadowdactyl-main.svg" alt="Shadowdactyl" width="200">
```

### CSS Background
```css
.header {
  background: url('/images/wallpapers/shadowdactyl-wallpaper-hd.svg');
  background-size: cover;
}
```

### Favicon
```html
<link rel="icon" href="/images/logo/shadowdactyl-favicon.svg" type="image/svg+xml">
```

---

**Brand**: Shadowdactyl®
**Version**: 1.0
**Status**: Active