import 'package:flutter/material.dart';
import 'ads/banner.dart';

class Main extends StatefulWidget {
  const Main({super.key, required this.title});
  final String title;

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pop(context);
        },
        children: [
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 40, 0, 20),
            child: Text(
              "MyMET",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard_rounded),
            label: Text('Utama', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 0, 25, 0),
            child: Divider(),
          ),

          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 5, 0, 10),
            child: Text(
              "METREOLOGI",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.cloud_outlined),
            selectedIcon: Icon(Icons.cloud_rounded),
            label: Text('Cuaca', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.web_outlined),
            selectedIcon: Icon(Icons.web_rounded),
            label: Text('Gempa', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 0, 25, 0),
            child: Divider(),
          ),

          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 5, 0, 10),
            child: Text(
              "ANGKASA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.star_outline_rounded),
            selectedIcon: Icon(Icons.star_rounded),
            label: Text(
              'Aktiviti Solar',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.star_outline_rounded),
            selectedIcon: Icon(Icons.star_rounded),
            label: Text(
              'Aktiviti Aurora',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 0, 25, 0),
            child: Divider(),
          ),

          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(20, 5, 0, 10),
            child: Text(
              "INFO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.help_outline_rounded),
            selectedIcon: Icon(Icons.help_rounded),
            label: Text(
              'Soalan Lazim',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),

      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        // Profile Header
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 5,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Center(
                                child: Text(
                                  "MyMET",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(left: 8, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Material(
                              color: Theme.of(
                                context,
                              ).colorScheme.surface.withValues(alpha: 0.6),
                              child: InkWell(
                                child: ListTile(
                                  onTap: () {},
                                  leading: CircleAvatar(
                                    radius: 24,
                                    child:
                                        Container(), // replace with NetworkImage if needed
                                  ),
                                  title: const Text(
                                    "John Doe",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: const Text("johndoe@gmail.com"),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Menu options
                        ListTile(
                          dense: true,
                          leading: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: const Icon(
                              Icons.settings_outlined,
                              size: 20,
                            ),
                          ),
                          title: const Text(
                            "Tetapan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            // Navigate to Settings
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: const Icon(Icons.help_outline, size: 20),
                          ),
                          title: const Text(
                            "Maklum balas",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ListTile(
                          dense: true,
                          leading: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: const Icon(Icons.logout_rounded, size: 20),
                          ),
                          title: const Text(
                            "Log keluar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(bottom: 0, top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Dasar Privasi",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurface,
                                  ),
                                ),
                              ),
                              Text(
                                "•",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Terma Perkhidmatan",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Extra action
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Selected page: $_selectedIndex",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          BannerAds(),
        ],
      ),
    );
  }
}
