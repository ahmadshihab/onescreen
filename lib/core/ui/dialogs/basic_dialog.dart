import 'package:flutter/material.dart';
import 'package:rjs/core/ui/global_widgets/choose_item.dart';
import 'package:rjs/core/ui/global_widgets/episode_widget.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class BasicDialog extends StatefulWidget {
  @override
  _BasicDialogState createState() => _BasicDialogState();
}

class _BasicDialogState extends State<BasicDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: GlobalColors.kColor2, width: 1),
      ),
      backgroundColor: GlobalColors.kColor2,
      contentPadding: EdgeInsets.all(ScreensHelper.fromWidth(3)),
      children: [
        EpisodeWidget(
          imgPage: 'assets/images/deep.png',
          episodeName: 'Allo professeur',
          episodeNumber: 03,
        ),
        DefaultGap(
          count: 1.6,
        ),
        Column(
          children: _getChoosesList(),
        )
      ],
    );
  }

  _getChoosesList() {
    return <Widget>[
      ChooseItem(
        urlIcon: GlobalIcons.playNextIcon,
        text: 'jouer ensuite',
      ),
      ChooseItem(
        urlIcon: GlobalIcons.favoriteIcon,
        text: 'jouer ensuite',
      ),
      ChooseItem(
        urlIcon: GlobalIcons.favoriteIcon,
        text: 'jouer ensuite',
      ),
      ChooseItem(
        urlIcon: GlobalIcons.playNextIcon,
        text: 'Partager',
      ),
      ChooseItem(
        urlIcon: GlobalIcons.albumsIcon,
        text: 'jouer ensuite',
      ),
      ChooseItem(
        urlIcon: GlobalIcons.albums1Icon,
        text: 'jouer ensuite',
      ),
    ];
  }
}
