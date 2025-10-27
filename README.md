Daily Downloads Organizer

Automatically organizes your downloads by date on Windows!

What It Does
- Creates a new folder in your `Downloads` directory each day, named in `MM.dd.yyyy` format.  
- Updates a `Today` link that always points to the current day’s folder.  
- Lets any browser save directly into the correct daily folder.

Setup Instructions
1. Copy the `Organize-Downloads.ps1` file to your user folder (e.g. `C:\Users\<YourName>`).
2. Open **Task Scheduler** → **Create Task**:
   - Trigger: *at log in* (daily)
   - Action:  
     ```
     Program/script: powershell.exe
     Arguments: -ExecutionPolicy Bypass -File "C:\Users\<YourName>\Organize-Downloads.ps1"
     ```
3. In **browser Settings → Downloads**, set the location to `Downloads\Today`.

Now all new downloads automatically go into the correct dated folder! 
