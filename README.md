# RebootCableModem
 Automate rebooting a Netgear CM600 (and probably others) modem with MacOS Calendar event

# Steps
1. Open Automator
2. Choose Workflow
3. Select Utilities and then double-click "Run Shell Script"
4. Paste in the RebootCableModem.workflow bash/zsh script
5. Modify username/password if needed
6. File -> Save...: select Workflow type, name file RebootCableModem.workflow
7. File -> Save...: select Application type, name file RebootCableModem.app
8. Open Calendar
9. New Event
10. <select your schedule>
11. Set Alert:
12.   - Custom
13.   - Open File
13.   - Other...
14.   - <choose RebootCableModem.app>
15.   - OK
