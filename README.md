<img alt='Chess App Icon' src="https://github.com/rajdip-datta-bipl/chess/blob/main/assets/icons/icon.png" width = 250/></a>

# ♟️ AI Chess - Flutter Chess Game

A feature-rich chess application built with **Flutter** and **Flame** engine, offering both single-player AI modes with varying difficulty levels and offline two-player gameplay. The app features beautiful customizable themes, multiple piece styles, and a powerful chess AI powered by the minimax algorithm with alpha-beta pruning.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)


## ✨ Features

### 🎮 Game Modes

-   **Single Player**: Play against an intelligent AI opponent with 6 difficulty levels
-   **Two Player Mode**: Offline multiplayer on the same device
-   **Side Selection**: Choose to play as white, black, or random
-   **Timed Games**: Optional time controls for competitive play

### 🎨 Customization

-   **7 Beautiful Themes**: Including Grey, Dark, Amoled, Lewis, Cherry Funk, Sage, Warm Tan, and Jargon Jade
-   **7 Piece Themes**: Classic, Angular, 8-Bit, Letters, Video Chess, Lewis Chessmen, and Mexico City
-   **Dark Mode Support**: Multiple dark theme options including pure AMOLED black
-   **Custom Font**: Jura font for elegant typography

### 🎯 Gameplay Features

-   **Move History**: Track all moves throughout the game using Standard Algebraic Notation (SAN)
-   **Undo/Redo**: Take back moves or replay them (configurable)
-   **Move Hints**: Visual indicators for valid moves
-   **Board Notation**: Algebraic notation (a-h, 1-8) coordinates on the board borders
-   **Sound Effects**: Audio feedback for piece movements
-   **Board Rotation**: Automatic board rotation based on turn
-   **Promotion Handling**: Full support for pawn promotion
-   **Check Detection**: Visual indicators for check and checkmate
-   **Stalemate Detection**: Proper game-end condition handling

### 🤖 AI Features

-   **6 Difficulty Levels**: From beginner to expert (depth 1-6)
-   **Minimax Algorithm**: With alpha-beta pruning optimization
-   **Strategic Evaluation**: Intelligent position analysis
-   **Responsive Thinking**: Adjustable AI processing time based on difficulty

## 📸 Screenshots

_Add your app screenshots here_

## 🛠️ Technologies Used

-   **[Flutter](https://flutter.dev/)** - UI framework
-   **[Flame](https://flame-engine.org/)** - 2D game engine for chess board rendering
-   **[Provider](https://pub.dev/packages/provider)** - State management
-   **[Shared Preferences](https://pub.dev/packages/shared_preferences)** - Local data persistence
-   **[Flame Audio](https://pub.dev/packages/flame_audio)** - Sound effects
-   **[URL Launcher](https://pub.dev/packages/url_launcher)** - External links

## 📦 Installation

### Prerequisites

-   Flutter SDK (3.0.0 or higher)
-   Dart SDK (3.0.0 or higher)
-   Android Studio / Xcode (for mobile development)
-   A device or emulator

### Steps

1. **Clone the repository**

    ```bash
    git clone https://github.com/rajdip-datta-bipl/chess.git
    cd Chess
    ```

2. **Install dependencies**

    ```bash
    flutter pub get
    ```

3. **Run the app**

    ```bash
    flutter run
    ```

4. **Build for production** (optional)

    ```bash
    # Android
    flutter build apk --release

    # iOS
    flutter build ios --release
    ```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── model/
│   ├── app_model.dart       # Main app state management
│   └── app_themes.dart      # Theme definitions
├── logic/
│   ├── chess_board.dart     # Board logic
│   ├── chess_game.dart      # Game controller
│   ├── chess_piece.dart     # Piece models
│   ├── chess_piece_sprite.dart  # Piece rendering
│   ├── shared_functions.dart    # Utility functions
│   └── move_calculation/    # Move validation and AI logic
└── views/
    ├── main_menu_view.dart  # Main menu screen
    ├── chess_view.dart      # Game screen
    ├── settings_view.dart   # Settings screen
    └── components/          # Reusable UI components
```

## 🧠 AI Algorithm

The chess AI uses the **Minimax algorithm with alpha-beta pruning** to determine optimal moves:

### How It Works

1. **Minimax Algorithm**: Evaluates the game tree by simulating moves and counter-moves
2. **Alpha-Beta Pruning**: Optimizes search by eliminating branches that won't affect the final decision
3. **Depth-Based Difficulty**:
    - Level 1: Depth 1 (1 half-move lookahead)
    - Level 2: Depth 2 (1 full move)
    - Level 3: Depth 3 (1.5 full moves)
    - Level 4: Depth 4 (2 full moves)
    - Level 5: Depth 5 (2.5 full moves)
    - Level 6: Depth 6 (3 full moves)

### Position Evaluation

The AI evaluates positions based on:

-   Material advantage (piece values)
-   Piece positioning and mobility
-   King safety
-   Pawn structure
-   Control of center squares

**Learn more**: [Alpha-Beta Pruning on Wikipedia](https://en.wikipedia.org/wiki/Alpha–beta_pruning)

## ⚙️ Configuration

The app stores user preferences locally using SharedPreferences:

-   Selected theme
-   Piece theme preference
-   Move history visibility
-   Sound settings
-   Hint display settings
-   Board Rotation preference
-   Undo/Redo availability

## 🎯 Usage

1. **Start a New Game**: From the main menu, configure your game settings
2. **Select Mode**: Choose between 1-player (vs AI) or 2-player mode
3. **Choose Difficulty**: For AI games, select from 6 difficulty levels
4. **Customize**: Pick your preferred theme and piece style
5. **Play**: Tap pieces to select them, then tap valid squares to move

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Rajdip Datta**

-   GitHub: [@rajdip-datta-bipl](https://github.com/rajdip-datta-bipl)
-   Google Play: [Download Chess](https://play.google.com/store/apps/details?id=com.rajdipdatta.chess)

## 🙏 Acknowledgments

-   Chess piece graphics from various open-source sets
-   Jura font by Daniel Johnson
-   Flutter and Flame communities

## 📞 Support

If you encounter any issues or have suggestions, please [open an issue](https://github.com/shenmareparas/Chess/issues).

---

⭐ If you like this project, please give it a star on GitHub!
