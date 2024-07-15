USE election_data;

CREATE TABLE incidents (
    Date DATE,
    State VARCHAR(255),
    Lokshabha_Seat_Name VARCHAR(255),
    Incident_Description VARCHAR(255),
    Action_Taken VARCHAR(255),
    Location_of_Incident VARCHAR(255),
    Coordinates VARCHAR(255),
    Source_news_article TEXT
);



-- INSERT INTO incidents (
--     Date,
--     State,
--     Lokshabha_Seat_Name,
--     Incident_Description,
--     Action_Taken,
--     Location_of_Incident,
--     Coordinates,
--     Source_news_article
--   )
-- VALUES (
--     'Date:date',
--     'State:varchar',
--     'Lokshabha_Seat_Name:varchar',
--     'Incident_Description:varchar',
--     'Action_Taken:varchar',
--     'Location_of_Incident:varchar',
--     'Coordinates:varchar',
--     'Source_news_article:text'
--   );

