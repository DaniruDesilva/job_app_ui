import 'package:flutter/material.dart';
import 'package:job_app_ui/services/get_data.dart';

import 'widgets/app_bar.dart';
import 'widgets/categorybar.dart';
import 'widgets/greetings_text.dart';
import 'widgets/popular_jobs_row.dart';
import 'widgets/recent_jobs_column.dart';
import 'widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 10,
                ),
                const Greetings(),
                const SizedBox(
                  height: 10,
                ),
                CustomSearchBar(size: Size),
                const SizedBox(
                  height: 15,
                ),
                const CategoryBar(
                  title: 'Popular Jobs',
                ),
                const SizedBox(
                  height: 10,
                ),
                PopularJobsRow(data: data, size: Size),
                const SizedBox(
                  height: 10,
                ),
                const CategoryBar(
                  title: 'Recent Jobs',
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RecentsJobColumn(data: data),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
