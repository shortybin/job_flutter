import 'package:flutter/widgets.dart';
import 'package:jw_job_flutter/bean/job_feed.dart';

class JobListItem extends StatefulWidget {
  Data jobFeed;

  JobListItem(Data this.jobFeed, {Key? key}) : super(key: key);

  @override
  State<JobListItem> createState() => _JobListItemState(jobFeed);
}

class _JobListItemState extends State<JobListItem> {
  Data jobFeed;

  _JobListItemState(Data this.jobFeed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: [Image.network(jobFeed.companyLogo!,width: 50,height: 50,),
            Text(jobFeed.positionName.toString())]
      ),
    );
  }
}
