# Stardrift Desktop Dashboard
A cozy Rainmeter desktop setup inspired by space wallpapers, glassmorphism, and productivity dashboards.

## Features
### Clock
Minimal floating clock displaying:
* Current time
* Current date

### Calendar
Custom monthly calendar widget with:
* Automatic month switching
* Current day highlighting
* Upcoming events section
* Google Calendar integration via iCal (.ics)

### Spotify Widget
Spotify media player displaying:
* Album artwork
* Song title
* Artist name
* Playback progress
* Media controls

### Photo Frames
Customizable glass-themed polaroid image holders for:
* Artwork of Current Anime or Books
* Favorite photos
* Personal inspiration

### Lily Stickers
Decorative floating character stickers that can be positioned independently across the desktop.

### System Monitoring
Widgets for:
* CPU Usage
* RAM Usage
* Network Activity
* Swap Usage
* Power/Battery Status
* System Uptime

### University Shortcuts
Quick access panel for:
* Student portals
* University resources
* Frequently used academic links

## Preview
<img width="1917" height="1077" alt="layout" src="https://github.com/user-attachments/assets/8815f449-7912-46fe-bdee-4f1a0503baaf" />

## Installation

### 1. Install Rainmeter
Download and install: https://www.rainmeter.net/

### 2. Download This Repository
Download this repository as a ZIP file and extract it.

### 3. Copy Skins
Copy all folders into:

```text
Documents\Rainmeter\Skins
```

### 4. Refresh Rainmeter
Open Rainmeter and refresh all skins.

## 📅 Google Calendar Setup (Optional)
To enable automatic Google Calendar synchronization:

### Step 1
Open Google Calendar settings.

### Step 2
Locate your calendar's Secret address in iCal format

### Step 3
Open:
```text
gcalendar\@Resources\Data\UpdateCalendar.ps1
```
Replace:
```powershell
$calendarUrl = "ENTER THE SECRET ICS LINK FROM GOOGLE CALENDER HERE"
```
with your Google Calendar iCal URL.

### Step 4
Refresh the Rainmeter skin.
The calendar widget will now automatically pull events from Google Calendar.
Do NOT share your secret iCal URL publicly.

## 🎨 Customization
### Wallpaper
Replace: wallpaper.jpg with your own wallpaper.

### Photo Frames
Replace images inside the polaroid widgets with your own:
* Current Book
* Current Anime
* Personal Photos

### Colors
Most widgets use editable variables for:
* Accent colors
* Text colors
* Transparency levels

## Built With
* Rainmeter
* Lua
* PowerShell
* Google Calendar iCal Integration
* WebNowPlaying
