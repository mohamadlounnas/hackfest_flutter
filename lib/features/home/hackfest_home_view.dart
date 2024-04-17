import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hackfest_flutter/features/home/model/model.dart';
import 'package:hackfest_flutter/widgets/app_container.dart';
import 'package:flutter/material.dart';
import 'package:lib/lib.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// intl
import 'package:intl/intl.dart';
import 'package:motif/motif.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../progress/progress.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart' as calendar;

import 'model/event.dart';

class HackfestHome extends StatefulWidget {
  const HackfestHome({super.key});

  @override
  State<HackfestHome> createState() => _HackfestHomeState();
}

class _HackfestHomeState extends State<HackfestHome> {
  int currentIndex = 0;

  Event? selectedEvent;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      AppManager.instance.loadHomeModel();
      AppManager.instance.loadEvents();
      AppManager.instance.loadPosts();
      if (AppManager.instance.events.isNotEmpty) {
        selectedEvent = AppManager.instance.events.first;
        setState(() {});
      }
    });
  }

  // carouselController
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: AppManager.instance,
      builder: (context, _) {
        return ColoredBox(
          color: Theme.of(context).colorScheme.background,
          child: Stack(
            children: [
              // motif
              const Positioned.fill(
                child: SinosoidalMotif(),
              ),
              // app container
              AppContainer(
                child: ListView(
                  children: [
                    // carousel
                    CarouselSlider(
                      carouselController: carouselController,
                      items: [
                        for (HomeModelSliders item in AppManager.instance.homeModel?.attributes.sliders ?? []) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: CachedNetworkImage(
                                        imageUrl: "http://172.20.10.5:1337" + item.photo.attributes.url,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: double.infinity,
                                      ),
                                    ),
                                    // gradient and inside it title
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(24),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black.withOpacity(.8),
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              item.title,
                                              style: Theme.of(context).textTheme.headline6!.copyWith(
                                                    color: Colors.white,
                                                  ),
                                              textAlign: TextAlign.center,
                                            ),
                                            // description
                                            Text(
                                              item.description,
                                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                                    color: Colors.white,
                                                  ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // arrows for next and previous
                                    Positioned(
                                      top: 0,
                                      left: 5,
                                      right: 5,
                                      bottom: 0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox.square(
                                            dimension: 30,
                                            child: IconButton.filled(
                                              padding: EdgeInsets.zero,
                                              icon: const Icon(
                                                Icons.arrow_back,
                                                size: 15,
                                              ),
                                              onPressed: () {
                                                carouselController.previousPage();
                                              },
                                            ),
                                          ),
                                          SizedBox.square(
                                            dimension: 30,
                                            child: IconButton.filled(
                                              padding: EdgeInsets.zero,
                                              icon: const Icon(
                                                Icons.arrow_forward,
                                                size: 15,
                                              ),
                                              onPressed: () {
                                                carouselController.nextPage();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                      options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, _) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                    // latest news (events)
                    ListTile(
                      enabled: false,
                      leading: const Icon(Icons.event),
                      title: const Text(
                        "Latest Events",
                      ),
                      // trailing: IconButton(
                      //   icon: const Icon(Icons.arrow_forward),
                      //   onPressed: () {
                      //     Navigator.of(context).pushNamed("events");
                      //   },
                      // ),
                    ),
                    // events
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var item in AppManager.instance.events) ...[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (selectedEvent == item) {
                                    selectedEvent = null;
                                  } else {
                                    selectedEvent = item;
                                  }
                                });
                              },
                              child: Card.outlined(
                                margin: EdgeInsets.zero,
                                // when same event is selected, show it with a different color
                                color: item == selectedEvent ? Theme.of(context).colorScheme.primary : null,
                                child: Container(
                                  width: 70,
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      // day number
                                      item == null
                                          ? const TextPlaceholder()
                                          : Text(
                                              DateTime.parse(item.attributes.date).day.toString(),
                                              style: Theme.of(context).textTheme.headline4?.copyWith(
                                                    color: item == selectedEvent ? Theme.of(context).colorScheme.onPrimary : null,
                                                  ),
                                            ),
                                      // month
                                      item == null
                                          ? const TextPlaceholder()
                                          : Text(
                                              DateTime.parse(item.attributes.date).month.toString(),
                                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                                    color: item == selectedEvent ? Theme.of(context).colorScheme.onPrimary : null,
                                                  ),
                                            ),
                                      // day name short
                                      item == null
                                          ? const TextPlaceholder()
                                          : Text(
                                              DateFormat.E().format(DateTime.parse(item.attributes.date)),
                                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                                    color: item == selectedEvent ? Theme.of(context).colorScheme.onPrimary : null,
                                                  ),
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                          ],
                        ],
                      ),
                    ),
                    // selected event
                    if (selectedEvent != null) ...[
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Card.outlined(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // photo
                              CachedNetworkImage(
                                imageUrl: "http://172.20.10.5:1337" + selectedEvent!.attributes.photo.attributes.url,
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      selectedEvent!.attributes.name,
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    // italic with some opacity for the date
                                    Text(
                                      DateFormat.yMMMMd().format(DateTime.parse(selectedEvent!.attributes.date)),
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic, color: Theme.of(context).colorScheme.onSurface.withOpacity(.6)),
                                    ),
                                    Text(selectedEvent!.attributes.description, style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w200)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                    // posts
                    ListTile(
                      leading: const Icon(Icons.article),
                      title: const Text(
                        "Latest News & blog",
                      ),
                      // trailing: IconButton(
                      //   icon: const Icon(Icons.arrow_forward),
                      //   onPressed: () {},
                      // ),
                      enabled: false,
                    ),
                    // posts
                    for (var item in AppManager.instance.posts) ...[
                      GestureDetector(
                        onTap: () {
                          // open page
                          // contains:
                          // - photo inside custom scroll view with parallax effect
                          // - title
                          // - createdAt (italic with some opacity)
                          // - description (small with some opacity)
                          // - some space
                          // - body using flutter_markdown
                          // - some space
                          // - copy right years
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Scaffold(
                                body: CustomScrollView(
                                  slivers: [
                                    SliverAppBar(
                                      title: Text(item!.attributes.title),
                                      expandedHeight: 200,
                                      pinned: true,
                                      flexibleSpace: Stack(
                                        children: [
                                          FlexibleSpaceBar(
                                            background: Hero(
                                              tag: item!.attributes.photo.attributes.url,
                                              child: CachedNetworkImage(
                                                imageUrl: "http://172.20.10.5:1337${item!.attributes.photo.attributes.url}",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),

                                          // gradient with schemcolor.background to transparent
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 2 * kMinInteractiveDimension,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Theme.of(context).colorScheme.background.withOpacity(0.5),
                                                    Theme.of(context).colorScheme.background.withOpacity(0),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SliverList(
                                      delegate: SliverChildListDelegate(
                                        [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(16),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    // title
                                                    Text(
                                                      item.attributes.title,
                                                      style: Theme.of(context).textTheme.headline6,
                                                    ),
                                                    // createdAt
                                                    Text(
                                                      DateFormat.yMMMMd().format(DateTime.parse(item!.attributes.createdAt)),
                                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic, color: Theme.of(context).colorScheme.onSurface.withOpacity(.6)),
                                                    ),
                                                    // description
                                                    Text(
                                                      item!.attributes.description,
                                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w200),
                                                    ),
                                                    const SizedBox(height: 16),
                                                    // body
                                                    MarkdownBody(
                                                      data: item!.attributes.body,
                                                    ),
                                                    const SizedBox(height: 16),
                                                    // copy right years
                                                    Text(
                                                      "© 2024${DateTime.now().year > 2024 ? "-${DateTime.now().year}" : ""}",
                                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w200),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ));
                        },
                        child: Card(
                          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: item == null
                                    ? Container(
                                        color: Theme.of(context).colorScheme.surface,
                                      )
                                    : Hero(
                                        tag: item!.attributes.photo.attributes.url,
                                        child: CachedNetworkImage(
                                          imageUrl: "http://172.20.10.5:1337" + item!.attributes.photo.attributes.url,
                                          width: double.infinity,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    item == null
                                        ? const TextPlaceholder()
                                        : Text(
                                            item!.attributes.title,
                                            style: Theme.of(context).textTheme.headline6,
                                          ),
                                    item == null
                                        ? const TextPlaceholder()
                                        : Text(
                                            item!.attributes.description,
                                            style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w200),
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String get copyRightYears {
    var now = DateTime.now();
    return "2024${now.year > 2024 ? "-${now.year}" : ""}";
  }
}
