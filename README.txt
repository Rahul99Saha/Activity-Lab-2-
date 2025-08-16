



Step 1 : Wrote query as per questions table creation, insertion statement to set up the schema and sample data.


Step 2 : 
To Execute:
   - q1.sql → Creates ListAllSubscribers() procedure
   - q2.sql → Creates GetWatchHistoryBySubscriber()
   - q3.sql → Creates AddSubscriberIfNotExists()
   - q4.sql → Creates SendWatchTimeReport()
   - q5.sql → Creates PrintAllSubscribersWatchHistory(
    

Step 3 :
To Test:
      q1 : CALL ListAllSubscribers();
      q2 : CALL GetWatchHistoryBySubscriber(1);
      q3 : CALL AddSubscriberIfNotExists('Rahul Saha);
      q4 : CALL SendWatchTimeReport();
      q5 : CALL PrintAllSubscribersWatchHistory();


Github repository : https://github.com/Rahul99Saha/Activity-Lab-2-
