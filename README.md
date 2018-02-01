# Axon.ivy Angular Demo

Demonstrates how Axon.ivy can be used in conjunction with client-side JavaScript Frameworks like Angular, React.

Beta

## Technologies
* Backend: Axon.ivy Digital Business Platform 7.0 and later
* Frontend: Angular 5 + Material Design

## Requirements
* Axon.ivy Designer
* Node.js 
* npm or yarn

## Development
The backend can be developed with the Axon.ivy Designer. To access the provided REST services while developing the ivy Designer needs to be started and running on Port 8081.

The frontend in the spa/ folder can be developed with any IDE/Editor suited for TypeScript development (e.g. VS Code). Run following command in the spa/ folder to start the development server (proxies Request to http://localhost:4200/ivy/ to http://localhost:8081/ivy/):

    npm start

Access the SPA on http://localhost:4200/.

## Building
Build the code for the integration into the ivy Project with:

    npm run build-prod

## Troubleshooting
If a Basic Authentication dialog pops up use following test credentials: user/user.