
# Proposal structure

This proposal of structure for Electron and Browser projects that have the same UI.

- desktop: All code related to Electron app;
- browser All code related to Browser app;
- ui-app: All code related to app UI;
- backend: All code related to server;

Each module, or environment, has its own "package.json"  to define its dependencies and scripts.
The project scope has the responsibility for managing this all modules and set the scripts to run each one (having its own package.json for that).

When the developer would like to start desktop application, in this case it could do:
- npm install that will install the dependencies of all the projects;
- npm start desktop that will start the desktop application.
	- In this step, it can build the ui-app and desktop because it has dependencies between itself.


