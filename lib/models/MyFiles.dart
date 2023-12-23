import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, numOfFiles;
  final int? totalStorage, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Passed Status",
    numOfFiles: "",
    svgSrc: "assets/icons/PassedStatus.svg",
    totalStorage: 1328,
    color: Colors.green,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Ongoing Status",
    numOfFiles: "",
    svgSrc: "assets/icons/PendingStatus.svg",
    totalStorage: 1328,
    color: Colors.yellow,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Failed Status",
    numOfFiles: "",
    svgSrc: "assets/icons/FailedStatus.svg",
    totalStorage: 1328,
    color: Colors.red,
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Total Number of Applicants",
    numOfFiles: "",
    svgSrc: "assets/icons/TotalApplicants.svg",
    totalStorage: 1328,
    color: Colors.grey,
    percentage: 78,
  ),
];
