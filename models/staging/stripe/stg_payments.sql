select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount stored in cents, convert to dollars
    {{ cents_to_dollar ('amount', 4) }} as amount,
    created as created_at
from {{source ('stripe','payment') }}