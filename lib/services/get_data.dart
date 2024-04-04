// ignore_for_file: non_constant_identifier_names

import 'package:job_app_ui/models/job_model.dart';

class GetData {
  final InstaLogo =
      "https://img.freepik.com/free-vector/instagram-vector-social-media-icon-7-june-2021-bangkok-thailand_53876-136728.jpg?t=st=1709400496~exp=1709401096~hmac=cb44aebf3fc459837457c3ea090c90684d36e3882f9f07fb3d5c91446e322cc4";
  final uberLogo =
      "https://cdn.freebiesupply.com/logos/thumbs/2x/uber-15-logo.png";
  final tiktokLogo =
      "https://w0.peakpx.com/wallpaper/813/107/HD-wallpaper-tiktok-logo.jpg";
  List<JobModel> getJobData() {
    List<JobModel> Jobs = [
      JobModel(
        title: "Senior UX Designer",
        salary: "LKR 190000 /Month",
        companyName: "Instragram",
        logo: InstaLogo,
        city: "Colombo",
        time: "7 Days Left",
      ),
      JobModel(
        title: "Senior UI Designer",
        salary: "LKR 170000 /Month",
        companyName: "Uber",
        logo: uberLogo,
        city: "Galle",
        time: "4 Days Left",
      ),
      JobModel(
        title: "Senior Mobile Developer",
        salary: "LKR 210000 /Month",
        companyName: "TikTok",
        logo: tiktokLogo,
        city: "Colombo",
        time: "10 Days Left",
      ),
      JobModel(
        title: "Senior Web Developer",
        salary: "LKR 160000 /Month",
        companyName: "TikTok",
        logo: tiktokLogo,
        city: "Kandy",
        time: "3 Days Left",
      ),
    ];
    return Jobs;
  }
}
