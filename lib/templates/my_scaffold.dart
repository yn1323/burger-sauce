import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/constants/route.dart';
import 'package:burger_sauce/constants/widgets/properties.dart';
import 'package:burger_sauce/helpers/query.dart';
import 'package:burger_sauce/templates/__generated__/wakeup.data.gql.dart';
import 'package:burger_sauce/templates/__generated__/wakeup.req.gql.dart';
import 'package:burger_sauce/templates/__generated__/wakeup.var.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const defaultIndex = 1;

class MyScaffold extends HookWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use useState to manage the selected index and page history
    final selectedIndex = useState(defaultIndex);
    final pageHistory = useState<List<int>>([]);

    // APIサーバーをここで起動させておく
    useQuery<GWakeUpData, GWakeUpVars>(
      GWakeUpReq(
        (b) => b..fetchPolicy = fetchNetworkOnly,
      ),
    );

    // Use the usePageController hook to create the page controller
    final controller = usePageController(initialPage: selectedIndex.value);
    void changePageIndex(int index) {
      selectedIndex.value = index;
    }

    void onTap(int index) {
      if (selectedIndex.value != index) {
        pageHistory.value.add(selectedIndex.value);
        changePageIndex(index);

        controller.animateToPage(
          selectedIndex.value,
          duration: const Duration(milliseconds: 100),
          curve: Curves.ease,
        );
      }
    }

    // Use useEffect to dispose of the controller when the widget is disposed
    useEffect(() {
      return controller.dispose;
    }, const []);

    return WillPopScope(
      onWillPop: () async {
        if (pageHistory.value.isNotEmpty) {
          int previousPage = pageHistory.value.removeLast();
          changePageIndex(previousPage);
          controller.jumpToPage(previousPage);
          return false; // Prevent the back button from closing the app
        }
        return true; // Allow the back button to close the app
      },
      child: Scaffold(
        extendBody: true,
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            selectedIndex.value = index;
          },
          children: routes.map((e) => e.page).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: templateOpacity,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey[600],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: routes.map((e) => e.item).toList(),
          currentIndex: selectedIndex.value,
          onTap: onTap,
        ),
      ),
    );
  }
}
