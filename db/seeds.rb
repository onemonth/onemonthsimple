# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

users = [
     {
       :email => "admin@omsgoat.com", 
       :admin => true, 
       :password => "admin1234", 
       :password_confirmation => "admin1234", 
       :first_name => "Admin", 
       :last_name => "", 
       :user_id =>1 
      },
     {
       :email => "jon@omsgoat.com", 
       :admin => false, 
       :password => "password", 
       :password_confirmation => "password", 
       :first_name => "Jon", 
       :last_name => "Rose", 
       :user_id => 2
     },
     {
       :email => "stiggy@omsgoat.com", 
       :admin => false, 
       :password => "mybluepill", 
       :password_confirmation => "mybluepill", 
       :first_name => "Chris", 
       :last_name => "Castiglione",
       :user_id =>3 
     },
     {
       :email => "mattan@omsgoat.com", 
       :admin => false, 
       :password => "theredpill", 
       :password_confirmation => "theredpill", 
       :first_name => "Mattan", 
       :last_name => "Griffel", 
       :user_id =>4 
      }
]

retirements = [
      {
        :user_id => 2,
        :employee_contrib => "1000",
        :employer_contrib => "2000",
        :total => "4500"
      },
      {
        :user_id => 3,
        :employee_contrib => "8000",
        :employer_contrib => "16000",
        :total => "30000"
      },
      {
        :user_id => 4,
        :employee_contrib => "10000",
        :employer_contrib => "20000",
        :total => "40000"
      }
]

paid_time_off = [
      {
        :user_id => 2,
        :sick_days_taken => 2,
        :sick_days_earned => 5,
        :pto_taken => 5,
        :pto_earned => 30
      },
      {
        :user_id => 3,
        :sick_days_taken => 3,
        :sick_days_earned => 6,
        :pto_taken => 3,
        :pto_earned => 20
      },
      {
        :user_id => 4,
        :sick_days_taken => 2,
        :sick_days_earned => 5,
        :pto_taken => 5,
        :pto_earned => 30
      }
  
  ]
  
  schedule = [
        {
          :user_id => 2,
          :date_begin => Date.new(2014, 7, 30),
          :date_end => Date.new(2014, 8, 2),
          :event_type => "pto",
          :event_desc => "vacation to france",
          :event_name => "My 2014 Vacation"        
          
        },
        {
          :user_id => 3,
          :date_begin => Date.new(2014, 8, 25),
          :date_end => Date.new(2014, 9, 1),
          :event_type => "pto",
          :event_desc => "Camping in the desert",
          :event_name => "Burning Man"
          
        },
        {
          :user_id => 4,
          :date_begin => Date.new(2014, 9, 13),
          :date_end => Date.new(2014, 9, 20),
          :event_type => "pto",
          :event_desc => "Taking kids to Grand Canyon",
          :event_name => "AZ Trip"
        }

    ]
    
  work_info = [
    {
      :user_id => 2,
      :income => "$50,000",
      :bonuses => "$10,000",
      :years_worked => 2,
      :SSN => "555-55-5555",
      :DoB => "01-01-1980"         
    },
    {
      :user_id => 3,
      :income => "$40,000",
      :bonuses => "$10,000",
      :years_worked => 1,
      :SSN => "333-33-3333",
      :DoB => "01-01-1979"         
    },
    {
      :user_id => 4,
      :income => "$60,000",
      :bonuses => "$12,000",
      :years_worked => 3,
      :SSN => "444-44-4444",
      :DoB => "01-01-1981"         
    }   
  ]
  
  performance = [
    {
      :user_id => 2,
      :reviewer => 1,
      :comments => "Great job! You are my hero", 
      :date_submitted => Date.new(2012, 01, 01),
      :score => 5
    },
    {
    :user_id => 2,
    :reviewer => 1,
    :comments => "Once again, you've done a great job this year. We greatly appreciate your hard work.", 
    :date_submitted => Date.new(2013, 01, 01),
    :score => 5
    },
    {
      :user_id => 3,
      :reviewer => 1,
      :comments => "Great worker, great attitude for this newcomer!", 
      :date_submitted => Date.new(2013, 01, 01),
      :score => 5
    },
    {
      :user_id => 3,
      :reviewer => 1,
      :comments => "Wow, right out of the gate we've been very impressed but unfortunately, our system doesn't allow us to give you a full 5.0 because other ppl have gotten 5.0 ratings.", 
      :date_submitted => Date.new(2011, 01, 01),
      :score => 4
    },
    {
      :user_id => 3,
      :reviewer => 1,
      :comments => "We highly recommend promotion for this employee! Consistent performer with proven leadership qualities.", 
      :date_submitted => Date.new(2012, 01, 01),
      :score => 5
    },
    {
       :user_id => 4,
       :reviewer => 1,
       :comments => "Ehh, you are okay, we will let you stay..... barely", 
       :date_submitted => Date.new(2013, 01, 01),
       :score => 2
     }
  ]

    messages = [
    {
      :receiver_id => 2,
      :creator_id => 5,
      :message => 'Your benefits have been updated.',
      :read => false
    },
    {
      :receiver_id => 3,
      :creator_id => 4,
      :message => 'Please update your profile.',
      :read => false
    },
    {
      :receiver_id => 4,
      :creator_id => 3,
      :message => 'Welcome to Railsgoat.',
      :read => false
    }
  ]


users.each do |user_info|
  user = User.new(user_info.reject {|k| k == :user_id })
  user.user_id = user_info[:user_id]
  user.save
end

retirements.each do |r|
 ret = Retirement.new(r.reject {|k| k == :user_id})
 ret.user_id = r[:user_id]
 ret.save
end  

paid_time_off.each do |pto|
  ptoff = PaidTimeOff.new(pto.reject {|k| k == :user_id})
  ptoff.user_id = pto[:user_id]
  ptoff.save
  
end

schedule.each do |event|
  sched = Schedule.new(event.reject {|k| k == :user_id})
  sched.user_id = event[:user_id]
  sched.save
end

performance.each do |perf|
  p = Performance.new(perf.reject {|k| k == :user_id})
  p.user_id = perf[:user_id]
  p.save
end

messages.each do |message|
  m = Message.new(message.reject {|k| k == :creator_id})
  m.creator_id = message[:creator_id]
  m.save
end

work_info.each do |wi|
  info = WorkInfo.new(wi.reject {|k| k == :user_id } )
  info.user_id = wi[:user_id]
  info.save
end


=begin
work_info.each do |wi|
  list = [:user_id, :SSN]
  info = WorkInfo.new(wi.reject {|k| list.include?(k)})
  info.user_id = wi[:user_id]
  info.build_key_management({:user_id => wi[:user_id], :iv => SecureRandom.hex(32) })
  info.SSN = wi[:SSN]
  info.save
end
=end
