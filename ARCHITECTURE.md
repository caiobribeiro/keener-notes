# ARCHITECTURE

## Goal
This doc has the main goal to organize the process of app development for Keener Notes.

## Rules
- Global layers MUST to be in "shared" folder;
- Models and Data Transfer Object (DTO) must be in "models" folder for earch module, or in "shared/models";
- Each feature must have it own folder with all layers need to run feature uses cases;
- Screaming architecture MUST be used, that means that each file screams whats it is, exemple: home_PAGE, home_STORE, job_MODEL;
- Every design pattern used have to be listed in the session "Design Patterns" within this doc, otherwise it will be considered wrong implementation;
- New Packages and plugins only will be allowed in the project after analysis and approved by this project responsible;
- It is not allowed to have a concrete class as a dependency of a layer. Cohesion will only be accepted with abstract classes or interfaces. With the exception of the Store;

## Design Patterns
- Repository Pattern: External implementations, as API access;
- Service Pattern: To isolate code snippets with other responsibilities;
- Dependency Injection: Resolve class dependencies;
- State pattern: Standard that assists in state management.
- Store: Store and update states;
- Data Transfer Object: Reserved to transfer data between classes;


## Packages
Packages from The official package repository for Dart and Flutter apps.


- [Modular] - Modularized routes and Modularized Dependency Injection;
- [MobX] - State manager;


    [MobX]: <https://pub.dev/packages/mobx/>
    [Modular]: <https://pub.dev/packages/flutter_modular>
    [Appwrite]: <https://pub.dev/packages/appwrite>
    [SharedPreferences]: <https://pub.dev/packages/shared_preferences>
    [ExpansionTileCard]: <https://pub.dev/packages/expansion_tile_card>
