/*When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?*/

select rewards_receipt_status, sum(purchased_item_count) as total_count
from 
receipts
group by rewards_receipt_status
having rewards_receipt_status = 'REJECTED' or rewards_receipt_status = 'FINISHED';

What are the top 5 brands by receipts scanned for most recent month?
How does the ranking of the top 5 brands by receipts scanned for the recent month compare to the ranking for the previous month?
Which brand has the most spend among users who were created within the past 6 months?
Which brand has the most transactions among users who were created within the past 6 months?*