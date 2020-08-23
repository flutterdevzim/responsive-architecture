# responsive-architecture
ultimate responsive ui architecture for flutter applications

forked from [filledstacks](https://www.filledstacks.com/post/building-a-responsive-ui-architecture-in-flutter/)
watch video [here](https://www.youtube.com/watch?v=udsysUj-X4w)

## Abstract example
``` dart
import 'index.dart';

List<Widget> _children = <Widget>[
                          Text('I'),
                          Text('love'),
                          Text('flutter'),
                          Text('dev'),
                          Text('zim'),
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
