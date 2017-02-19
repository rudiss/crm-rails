namespace :notification do
  desc "Sends SMS notifications to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # TODO:
    # 1. Schedule to run at Sunday at 6pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message that ahs intructions and a ling to time 
  end
end
