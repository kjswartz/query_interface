class WelcomeController < ApplicationController
  def index

    # Within that controller, try all the query samples from the query guide,
    # section 1.1 (skipping the batches) and sections 2, 3, 4, and 5 and

# Section 1.1
   # Finds and returns the client with primary key of 5
   client = Client.find(5)

   # Take retrieves a record without any implicit ordering. I am grabbing two
   #   Client records.
   client = Client.take(2)

   # Grabs the first client, regardless of id number.
   client = Client.first

   # Grabs the first three clients from the database.
   client = Client.first(3)

   # Grabs the last client
   client = Client.last

   # Selects the last 3 clients from the database
   client = Client.last(3)

   # Finds client with first name equal to what you set.
   Client.find_by(first_name: 'Berniece')

    # Returns nil if record does not exist
   Client.find_by(first_name: 'does not exist')

# Section 2
   # This queries for clients that have 6 orders. Use this to identify items in a table with certain associations and counts.
   Client.where("orders_count = '6'")

   # Searches by user requested number.
   # Because custom SQL could be interjected into our search field, you'd want to filter requests through params.
   # Client.where("orders_count = ?", params[:orders])
   Client.where("orders_count = ?", 6) # to illustrate passing a value.

   # Allows you to specify hash key/values in your search, and like above it utilizes the filtering through params to prevent hanky panky.
   Client.where("created_at >= :start_date AND created_at <= :end_date",
                {start_date: params[:start_date], end_date: params[:end_date]})


   # Grabs clients created between prior day 0400 and current time in zulu time. Use this for finding records created or updated during a specified time.
   Client.where(created_at: (Time.now.midnight - 1.day)..Time.now)

# Section 3
   # Selects clients ordered by when they were created. Use to retrieve records in a specified order.
   Client.order("created_at")
   Client.order(created_at: :desc)

# Section 4
   #selects clients by first_name and id fields only. If you have a table with several attributes this can increase processing speed and save memory.
   Client.select("first_name, id")

# Section 5
   #Places a limit on the records returned. Use it chained with other methods to only pull a limited sample.
   Client.limit(5).order(created_at: :desc)

   # Grab a limited number of records but start from a different point. Use if querying large data sets over multiple time frames.
   Client.limit(5).offset(30)

  end
end

