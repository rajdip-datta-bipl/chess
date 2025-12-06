import 'package:en_passant/model/app_model.dart';
import 'package:en_passant/views/components/main_menu_view/game_options/side_picker.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

class ChessBoardWidget extends StatelessWidget {
  final AppModel appModel;

  ChessBoardWidget(this.appModel);

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: appModel.flip &&
              ((appModel.playingWithAI &&
                      appModel.playerSide == Player.player2) ||
                  (!appModel.playingWithAI && appModel.turn == Player.player2))
          ? 0.5
          : 0,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      child: Container(
        decoration: appModel.theme.name != 'Video Chess'
            ? BoxDecoration(
                border: Border.all(
                  color: appModel.theme.border,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Color(0x88000000),
                  ),
                ],
              )
            : BoxDecoration(),
        child: ClipRRect(
          borderRadius: appModel.theme.name != 'Video Chess'
              ? BorderRadius.circular(4)
              : BorderRadius.zero,
          child: Container(
            child: GameWidget(game: appModel.game!),
            width: MediaQuery.of(context).size.width - 68,
            height: MediaQuery.of(context).size.width - 68,
          ),
        ),
      ),
    );
  }
}
