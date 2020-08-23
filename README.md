# responsive-architecture
ultimate responsive ui architecture for flutter applications

- inspired and copied from [filledstacks](https://www.filledstacks.com/post/building-a-responsive-ui-architecture-in-flutter/)
- watch video [here](https://www.youtube.com/watch?v=udsysUj-X4w)

## Abstract example
``` dart
import 'index.dart';

List<Widget> _children = <Widget>[
                          Text('I'),
                          Text('love'),
                          Text('flutter'),
                          Text('dev'),
                          Text('zim 🇿🇼'),
                          ];
                       
// mobile    
Widget _mobilePotrait   = Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _children,);
Widget _mobileLandscape = Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _children,);

// tablet
Widget _tabletPotrait   = Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _children,);
Widget _tabletLandscape = Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _children,);

// desktop
// (...)

Widget myResponsiveWidget() {
  // return appropriate widget based on device
  // screen layout
  return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: _mobilePotrait,
        landscape: _mobileLandscape,
      ),
      tablet: OrientationLayout(
        portrait: _tabletPotrait,
        landscape: _tabletLandscape,
      ),
    );
}
```

### Reccommended plugin for testing responsiveness
- [device_preview](https://pub.dev/packages/device_preview) plugin
- [device_simulator](https://pub.dev/packages/device_simulator) plugin

### Other approaches
- [responsive_widgets](https://pub.dev/packages/responsive_widgets) plugin
- [auto_size_text_field](https://pub.dev/packages/auto_size_text_field) plugin
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) plugin
- [responsive_framework](https://pub.dev/packages/responsive_framework) plugin
- [relative_scale](https://pub.dev/packages/relative_scale) plugin
