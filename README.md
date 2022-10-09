# RebootCableModem
 Automate rebooting a Netgear CM600 (and probably others) modem with MacOS Calendar event

# Steps
1. Open Automator
2. Select Utilities and then double-click "Run Shell Script"
3. Paste in the script
4. Modify username/password if needed
5. File -> Save...: select Workflow type, name file RebootCableModem.workflow
6. File -> Save...: select Application type, name file RebootCableModem.app
7. Open Calendar
8. New Event
9. <select your schedule>
10. Set Alert:
11.   - Custom
12.   - Open File
13.   - Other...
14.   - <choose RebootCableModem.app>
15.   - OK
