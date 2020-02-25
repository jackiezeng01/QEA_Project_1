%%
data = airbnblistings2;
data.Properties.VariableNames(73);
data_sorted = sortrows(data, 73, 'descend');
data_sorted = data_sorted(3:size(data_sorted, 1), :);

data_clean = data_sorted(1:15734, :);
data_clean = removevars(data_clean,{'Neighbourhood', 'NeighbourhoodGroupCleansed', 'SquareFeet', 'WeeklyPrice', 'MonthlyPrice', 'CalendarUpdated', 'HostNeighbourhood', 'HostURL', 'ListingUrl', 'ScrapeID', 'LastScraped', 'Summary', 'Space', 'Description', 'ExperiencesOffered', 'NeighborhoodOverview', 'Notes', 'Transit', 'Access', 'HouseRules', 'Interaction', 'ThumbnailUrl', 'MediumUrl', 'PictureUrl', 'XLPictureUrl', 'HostThumbnailUrl', 'HostAbout', 'Geolocation', 'JurisdictionNames', 'License', 'HostPictureUrl', 'Availability365', 'Availability90', 'Availability60', 'Availability30', 'HasAvailability'});
data_clean(1:10,:)