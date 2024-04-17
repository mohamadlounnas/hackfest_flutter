// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:hackfest_flutter/features/bac/bac_info_view.dart';
import 'package:hackfest_flutter/features/bac/bac_notes_view.dart';
import 'package:hackfest_flutter/widgets/app_logo.dart';
import 'package:hackfest_flutter/widgets/gpa_calculator.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:lib/lib.dart';
import 'package:motif/motif.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cell_calendar/cell_calendar.dart';
import '../../progress/progress.dart';
import '../../view/auth.dart';
import '../../widgets/app_container.dart';
import '../bac/groups_view.dart';
import '../home/hackfest_home_view.dart';
import '../study_year/study_year_view.dart';

/// This file contains the [DashboardView] class, which is a stateless widget that represents the dashboard view of the application.
/// It displays various widgets related to the user's progress and notes, including the bac notes, groups, and GPA calculator.
/// The [DashboardView] is wrapped in an [AuthGuard] widget to ensure that only authenticated users can access it.
/// It listens to changes in the [AppManager] instance to update the UI accordingly.
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget homeOrLeading() {
      try {
        return const HackfestHome();
      } catch (e) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    }

    return ListenableBuilder(
      listenable: AppManager.instance,
      builder: (context, _) {
        return Scaffold(
          appBar: PreferredSize(preferredSize: const Size.fromHeight(60), child: AppContainer(child: const CustomAppBar())),
          body: IndexedStack(
            index: AppManager.instance.currentIndex,
            children: [
              homeOrLeading(),
              const CalendarView(),
              const GalleryView(),
              LoadingBox(
                loading: AppManager.instance.loading ?? false,
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.background,
                  child: AuthGuard(
                    child: Stack(
                      children: [
                        const Positioned.fill(
                          child: SinosoidalMotif(),
                        ),
                        Scaffold(
                          backgroundColor: Colors.transparent,
                          body: SingleChildScrollView(
                            child: Column(
                              children: [
                                const BacInfoView(),
                                AppContainer(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 8),
                                      ListTile(
                                        leading: Icon(Icons.school),
                                        title: Text(
                                            // 'Progress and notes'
                                            arfr('التقدم والملاحظات', 'Progrès et notes')),
                                        enabled: false,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: IntrinsicHeight(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        // use bottom sheet
                                                        showModalBottomSheet(
                                                          showDragHandle: true,
                                                          isScrollControlled: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return const BacNotes();
                                                          },
                                                        );
                                                      },
                                                      child: Material(
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(12),
                                                        ),
                                                        elevation: 2,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons.school,
                                                            ),
                                                            title: Text(arfr("نقاط الباكالوريا", 'Notes du bac'), style: TextStyle(fontSize: 16)),
                                                            subtitle: Text(
                                                                arfr('شاهد نقاطك في الباكالوريا', 'les notes de votre bac')
                                                                // "see the notes of your bac"
                                                                ,
                                                                style: TextStyle(fontSize: 12)),
                                                            trailing: Icon(Icons.arrow_forward_rounded),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 8),
                                                    GestureDetector(
                                                      onTap: () {
                                                        // use bottom sheet
                                                        showModalBottomSheet(
                                                          showDragHandle: true,
                                                          isScrollControlled: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return const GroupsView();
                                                          },
                                                        );
                                                      },
                                                      child: Material(
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(12),
                                                        ),
                                                        elevation: 2,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons.people,
                                                            ),
                                                            title: Text(
                                                                arfr('المجموعات', 'Groupes')
                                                                // 'Groups'
                                                                ,
                                                                style: TextStyle(fontSize: 16)),
                                                            subtitle: Text(
                                                                // "all your groups"
                                                                arfr('كل مجموعاتك', 'tous vos groupes'),
                                                                style: TextStyle(fontSize: 12)),
                                                            trailing: Icon(Icons.arrow_forward_rounded),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              SizedBox(
                                                width: 150,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // use bottom sheet
                                                    showModalBottomSheet(
                                                      showDragHandle: true,
                                                      isScrollControlled: true,
                                                      scrollControlDisabledMaxHeightRatio: 0.7,
                                                      context: context,
                                                      builder: (context) {
                                                        return ListenableBuilder(
                                                            listenable: AppManager.instance,
                                                            builder: (context, _) {
                                                              return SingleChildScrollView(
                                                                child: GPACalculator(
                                                                  key: UniqueKey(),
                                                                  ccNotes: AppManager.instance.ccNotes ?? [],
                                                                  notes: AppManager.instance.examNotes ?? [],
                                                                ),
                                                              );
                                                            });
                                                      },
                                                    );
                                                  },
                                                  child: Material(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                    ),
                                                    elevation: 2,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        gradient: LinearGradient(
                                                          begin: Alignment.bottomLeft,
                                                          end: Alignment.topRight,
                                                          colors: [
                                                            Color.fromARGB(255, 170, 76, 175),
                                                            Color.fromARGB(255, 132, 74, 195)
                                                          ],
                                                        ),
                                                      ),
                                                      child: SizedBox(
                                                        width: double.infinity,
                                                        child: Padding(
                                                          padding: EdgeInsets.all(12),
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              // calculate gpa
                                                              Icon(Icons.calculate, color: Colors.white, size: 40),
                                                              Spacer(),
                                                              Text(
                                                                  arfr('حاسبة المعدل', 'Calculateur de GPA')
                                                                  // 'GPA Calculator'
                                                                  ,
                                                                  style: TextStyle(fontSize: 16, color: Colors.white)),
                                                              Text(
                                                                  arfr('حساب معدلك', 'calculez votre GPA')
                                                                  // "calculate your GPA"
                                                                  ,
                                                                  style: TextStyle(fontSize: 12, color: Colors.white)),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      ListTile(
                                        leading: Icon(Icons.history_rounded),
                                        title: Text(
                                            // 'history'
                                            arfr('التاريخ', 'Historique')),
                                        enabled: false,
                                      ),
                                      // studyyears in chips
                                      if (AppManager.instance.studyYears != null)
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          clipBehavior: Clip.none,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8),
                                            child: Row(
                                              children: [
                                                for (final year in AppManager.instance.studyYears!)
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        // show results page of this year id
                                                        showModalBottomSheet(
                                                          showDragHandle: true,
                                                          isScrollControlled: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return StudyResultsView(
                                                              yearId: year.id,
                                                            );
                                                          },
                                                        );
                                                      },
                                                      child: Material(
                                                        elevation: 2,
                                                        clipBehavior: Clip.antiAlias,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(12),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              width: 200,
                                                              height: 150,
                                                              decoration: const BoxDecoration(
                                                                gradient: LinearGradient(
                                                                  begin: Alignment.topLeft,
                                                                  end: Alignment.bottomRight,
                                                                  colors: [
                                                                    Colors.green,
                                                                    Colors.lightGreen
                                                                  ],
                                                                ),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  "${year.niveauCode}",
                                                                  style: const TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 30,
                                                                    fontWeight: FontWeight.bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            // SizedBox(width: 150, child: Divider()),
                                                            Padding(
                                                              padding: const EdgeInsets.all(12),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Text(arfr(year.niveauLibelleLongAr ?? '', year.niveauLibelleLongLt), style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5))),
                                                                  Text(year.anneeAcademiqueCode.toString()),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      const SizedBox(height: 8),
                                      // copy right
                                      ListTile(
                                        onTap: () async {
                                          try {
                                            await launchUrlString('tel:+213657606315');
                                          } catch (e) {
                                            print(e);
                                          }
                                        },
                                        // trailing phone call: 0657606315
                                        title: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'mohamadlounnas | © 2023 Better Progress\nUSDB | All rights reserved.\nPrivet License',
                                                style: TextStyle(
                                                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                  icon: const Icon(Icons.telegram),
                                                  onPressed: () async {
                                                    try {
                                                      await launchUrlString('tel:+213657606315');
                                                    } catch (e) {
                                                      print(e);
                                                    }
                                                  },
                                                ),
                                                const Text(
                                                  'Call me',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: AppManager.instance.currentIndex,
            // style
            destinations: [
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.school),
              //   label: 'Faculty',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.calendar_today),
              //   label: 'Calendar',
              // ),
              // // gallery
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.photo_album),
              //   label: 'Gallery',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.home),
              //   label: 'Progress',
              // ),
              NavigationDestination(
                icon: const Icon(Icons.home),
                label: arfr('القسم', 'Département'),
              ),
              NavigationDestination(
                icon: const Icon(Icons.calendar_today),
                label: arfr('التقويم', 'Calendrier'),
              ),
              NavigationDestination(
                icon: const Icon(Icons.photo_album),
                label: arfr('الصور', 'Galerie'),
              ),
              NavigationDestination(
                icon: const Icon(Icons.person),
                label: arfr('حسابي', 'Mon compte'),
              ),
            ],
            onDestinationSelected: (index) {
              AppManager.instance.currentIndex = index;
            },
          ),
        );
      },
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          AppLogo(size: 40),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                arfr('جامعة', 'Université de'),
                style: TextStyle(fontSize: 10),
              ),
              Text(
                arfr('تلمسان', 'Tlemcen'),
              ),
            ],
          ),
        ],
      ),
      actions: [
        if (AppManager.instance.authResponse != null)
          IconButton(
            icon: const Icon(Icons.output_outlined),
            onPressed: () async {
              await AppManager.instance.logout();
            },
          ),
        // toggle langage
        IconButton(
          icon: const Icon(Icons.language),
          onPressed: () async {
            AppManager.instance.toggleLang();
          },
        ),
        // toggle theme
        IconButton(
          icon: const Icon(Icons.brightness_6),
          onPressed: () async {
            AppManager.instance.toggleThemeMode();
          },
        ),
        // user avatar
        ListenableBuilder(
            listenable: AppManager.instance,
            builder: (context, _) {
              return FloatingActionButton(
                //  no padding
                mini: true,
                onPressed: () async {
                  if (AppManager.instance.photoData != null) {
                    showImageViewer(context, MemoryImage(AppManager.instance.photoData!), onViewerDismissed: () {
                      print("dismissed");
                    });
                  }
                },
                clipBehavior: Clip.antiAlias,
                elevation: 2,
                child:
                    // BetterProgress.instance.student?.photo != null ? CachedNetworkImage(
                    // imageUrl: BetterProgress.instance.student!.photoUrl!) :
                    // use cached image network
                    AppManager.instance.photoData != null
                        // ? CachedNetworkImage(
                        //     imageUrl: "https://progres.mesrs.dz/webfve/javax.faces.resource/dynamiccontent.properties.xhtml?ln=primefaces&v=12.0.0&e=12.0.0&pfdrid=99d1ffdd5e4bbddc75cb7695039032f&pfdrt=sc&url=2020%2F100000286001990004_PH_IMP.JPG&pfdrid_c=true",
                        //     placeholder: (context, url) => const CircularProgressIndicator(),
                        //     errorWidget: (context, url, error) {
                        //       print(url);
                        //       print(error);
                        //       return const Icon(Icons.error);
                        //     },
                        //   )
                        // :
                        ? Image.memory(
                            AppManager.instance.photoData!,
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          )
                        : const Icon(Icons.person),
              );
            }),
        const SizedBox(width: 8),
      ],
    );
  }
}

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: AppManager.instance,
      builder: (context, _) {
        return CellCalendar(
          events: [
            for (final event in AppManager.instance.events)
              if (event != null)
                CalendarEvent(
                  eventDate: DateTime.parse(event.attributes.date),
                  eventName: event.attributes.name,
                  eventTextStyle: TextStyle(
                    fontSize: 10,
                    color: randomColorBasedOnHashCode(event.attributes.name).computeLuminance() > 0.5 ? Colors.black : Colors.white,
                  ),
                  eventBackgroundColor: randomColorBasedOnHashCode(event.attributes.name),
                ),
          ],
        );
      },
    );
  }
}

Color randomColorBasedOnHashCode(Object object) {
  var colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.amber,
    Colors.lime,
    Colors.brown,
    Colors.grey,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.cyanAccent,
    Colors.deepPurpleAccent,
    Colors.deepOrangeAccent,
    Colors.greenAccent,
    Colors.indigoAccent,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.orangeAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.redAccent,
    Colors.tealAccent,
    Colors.yellowAccent,
  ];

  return colors[object.hashCode % colors.length];
}

// GalleryView
// using Grid 3 columns and easy_image_viewer
class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      AppManager.instance.loadPhotos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: AppManager.instance,
      builder: (context, _) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: AppManager.instance.photos.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showImageViewer(context, CachedNetworkImageProvider("http://172.20.10.5:1337${AppManager.instance.photos[index]!.attributes.photo.attributes.url}"), onViewerDismissed: () {
                  print("dismissed");
                });
              },
              child: GridTile(
                child: AppManager.instance.photos[index] == null
                    ? const CircularProgressIndicator()
                    : CachedNetworkImage(
                        imageUrl: "http://172.20.10.5:1337${AppManager.instance.photos[index]!.attributes.photo.attributes.url}",
                        fit: BoxFit.cover,
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
