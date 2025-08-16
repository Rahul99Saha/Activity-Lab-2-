DELIMITER $$

CREATE PROCEDURE PrintAllSubscribersWatchHistory()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE subId INT;
    DECLARE subName VARCHAR(100);

    DECLARE cur CURSOR FOR 
        SELECT SubscriberID, SubscriberName FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    subs_loop: LOOP
        FETCH cur INTO subId, subName;
        IF done = 1 THEN
            LEAVE subs_loop;
        END IF;

        SELECT CONCAT('Watch History for: ', subName) AS Header;
        CALL GetWatchHistoryBySubscriber(subId);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;