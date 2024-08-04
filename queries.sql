-- Database Queries

-- Find all customers with postal code 1010
db('customers').where('postal_code', '1010').select('*')

-- Find the phone number for the supplier with the id 11
db('suppliers').where('id', 11).select('phone')

-- List first 10 orders placed, sorted descending by the order date
db('orders').orderBy('order_date', 'desc').limit(10)

-- Find all customers that live in London, Madrid, or Brazil
db('customers').whereIn('city', ['London', 'Madrid'])
    .Where('country', 'Brazil')
    .select('*')

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"
db('customers').insert({
    customer_name: 'The Shire',

    contact_name: 'Bilbo Baggins',
    address: '1 Hobbit-Hole',
    city: 'Bag End',
    postal_code: '111',
    country: 'Middle Earth'
})

-- Update Bilbo Baggins record so that the postal code changes to "11122"
db('customers').where('contact_name', 'Bilbo Baggins').update({
    postal_code: '11122'
})

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
