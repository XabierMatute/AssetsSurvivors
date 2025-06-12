# AssetsSurvivors

## Overview

**AssetsSurvivors** is a work-in-progress (WIP) game inspired by the mechanics of **Vampire Survivors**, created as a learning project to explore game development concepts. The goal is to build a simple yet engaging game while experimenting with gameplay mechanics, enemy behaviors, and player progression systems. This project is developed using the **Godot Engine**, leveraging its powerful tools for 2D game development.

The game features a player navigating a test chamber, fighting off waves of enemies, and interacting with the environment. The current implementation includes basic player movement, enemy spawning, and animations.

## Features

### Gameplay Mechanics
- **Player Movement**: Smooth movement with collision detection.
- **Enemy Behavior**: Basic enemy entities with animations and interactions.
- **Test Chamber**: A simple environment for testing gameplay mechanics.

### Visual Design
- **Animated Sprites**: Includes animations for both the player and enemies.
- **Enemy Assets**: Alien plant-themed enemies with sprite sheets and animations.

### Development Tools
- **Godot Engine**: Used for scene management, scripting, and asset integration.
- **Asset Management**: Organized structure for sprites, animations, and textures.

## Code Structure

### Core Gameplay
- **Player Scene**: [`player.tscn`](assetssurvivors/player/player.tscn) defines the player entity, including movement, animations, and collision shapes.
- **Enemy Scene**: [`alien_plant.tscn`](assetssurvivors/enemies/alien_plant.tscn) implements the alien plant enemy with animations and collision detection.
- **Test Chamber**: [`test_chamber_1.tscn`](assetssurvivors/test/test_chamber_1.tscn) serves as the main scene for testing gameplay mechanics.

### Assets
- **Enemy Sprites**: Alien plant enemy assets located in [`assets/alien_plant_enemy`](assetssurvivors/assets/alien_plant_enemy).
- **Sprite Sheets**: Includes sprite sheets for animations, such as [`alien_plant_enemy_sheet.png`](assetssurvivors/assets/alien_plant_enemy/PNG/spritesheet/alien_plant_enemy_sheet.png).

### Configuration
- **Project Settings**: [`project.godot`](assetssurvivors/project.godot) contains engine configuration and input mappings.

## Competencies Involved

### Technical Skills
- **Game Development**: Learning the basics of scene management, scripting, and asset integration in Godot.
- **Animation**: Implementing sprite animations for dynamic gameplay.
- **Collision Detection**: Setting up collision shapes for player and enemy interactions.

### Creative Skills
- **Visual Design**: Using sprite sheets and animations to create engaging visuals.
- **Level Design**: Designing a test chamber to experiment with mechanics.

### Problem-Solving
- **Debugging**: Identifying and fixing issues in movement, collisions, and animations.
- **Optimization**: Structuring assets and scenes for efficient development.

### Learning Goals
- **Experimentation**: Exploring different gameplay mechanics and features.
- **Iteration**: Improving the game step-by-step based on testing and feedback.

## Status

This project is a **work-in-progress** (WIP). The current focus is on implementing basic gameplay mechanics and refining the player and enemy interactions. Future updates will include:
- Additional enemy types.
- Player progression systems.
- Expanded environments and levels.

## How to Run

1. Clone the repository.
2. Open the project in **Godot Engine**.
3. Run the main scene (`test_chamber_1.tscn`) to test the current implementation.

## Acknowledgments

Special thanks to the Godot Engine community for providing resources and tutorials that helped kickstart this project.