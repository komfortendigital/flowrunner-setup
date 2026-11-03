# FlowRunner setup

Set this up once and FlowRunner keeps itself up to date. No more zip files.

## Mac

1. Open **Terminal** (press Cmd+Space, type Terminal, press Enter).
2. Paste this line and press Enter:

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/komfortendigital/flowrunner-setup/main/install.sh)"
```

3. Paste the **team code** from ClickUp and press Enter (it stays hidden while you paste, that is normal).

## Windows

1. Open **PowerShell** (press the Windows key, type PowerShell, press Enter).
2. Paste this line and press Enter:

```
irm https://raw.githubusercontent.com/komfortendigital/flowrunner-setup/main/install.ps1 | iex
```

3. Paste the **team code** from ClickUp and press Enter.

Wait for **"Done. FlowRunner now updates itself."** and close the window. That's it.

## What it does

- Finds your FlowRunner folder by itself (or installs FlowRunner if you don't have it yet).
- Checks for a new version every 15 minutes in the background.
- When one is ready, FlowRunner's panel says **"Update ready"**. Click it when no run is going.
- Your jobs and approvals are never touched.

## First time using FlowRunner?

If the window says **ONE LAST STEP**: in Chrome open `chrome://extensions`, turn on **Developer mode**, press **Load unpacked** and pick the folder it names.

## Need help?

Send Sibbi the last lines the window showed.
