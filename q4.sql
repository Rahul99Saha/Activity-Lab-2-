DELIMITER $$

CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE subId INT;
    DECLARE cur CURSOR FOR 
        SELECT DISTINCT SubscriberID FROM WatchHistory;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    subscriber_loop: LOOP
        FETCH cur INTO subId;
        IF done = 1 THEN
            LEAVE subscriber_loop;
        END IF;
        CALL GetWatchHistoryBySubscriber(subId);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;