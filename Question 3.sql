/*When considering average spend from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?*/

select rewards_receipt_status, avg(total_spent) as average
from receipts
group by rewards_receipt_status
having rewards_receipt_status = 'REJECTED' or rewards_receipt_status = 'FINISHED'

