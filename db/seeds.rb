# 10.times do
#     User.create!(
#         first_name: Faker::Name.name,
#         last_name: Faker::Name.name,
#         contact_number: Faker::PhoneNumber.cell_phone_in_e164,
#         email: Faker::Internet.email,
#         password: "freedom"
#     )
# end

# 10.times do
#     ClientReview.create!(
#         user_id: Faker::Number.unique.between(from: 1, to: 10),
#         doctor_id: Faker::Number.unique.between(from: 1, to: 10),
#         is_review_anonymous: Faker::Boolean.boolean,
#         wait_time_rating: Faker::Number.between(from: 1, to: 5),
#         bedside_manner_rating: Faker::Number.between(from: 1, to: 5),
#         overall_rating: Faker::Number.between(from: 1, to: 5),
#         review: Faker::Lorem.paragraph,
#         is_doctor_recommended: Faker::Boolean.boolean,
#         review_date: Faker::Date.between(from: 1.year.ago, to: Date.today)
#     )
# end

# 10.times do
#     Appointment.create!(
#         user_id: User.all.sample.id,
#         office_id: Office.all.sample.id,
#         probable_start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
#         actual_end_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
#         appointment_status_id: AppointmentStatus.all.sample.id,
#         appointment_taken_date: Faker::Date.forward(days: 23),
#         app_booking_channel_id: AppBookingChannel.all.sample.id
#     )
# end

# 3.times do
#     AppointmentStatus.create!(
#         status:( "Seen" "Unseen")
#     )
# end

# 5.timmes do
#     AppBookingChannel.create!(
#         app_booking_channel_name: Faker::App.name
#     )
# end

10.times do
    Doctor.create!(
        first_name:  Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        professional_statement: Faker::Lorem.sentence,
        practicing_from: Faker::Date.between(from: 30.years.ago, to: Date.today) 
    )
end

10.times do
    HospitalAffiliation.create!(
        doctor_id: rand(1..10),
        hospital_name: Faker::Company.name,
        country: Faker::Address.country,
        city: Faker::Address.city,
        start_date: Faker::Date.between(from: 10.years.ago, to: Date.today),
        end_date: Faker::Date.between(from: 10.years.ago, to: Date.today) 
    )
end

10.times do
    Office.create!(
        doctor_id: 1,
        hospital_affiliation_id: rand(1..10),
        time_slot_per_client_in_min: rand(10..60),
        first_consultation_fee:  Faker::Number.decimal(l_digits: 2),
        followup_consultation_fee: Faker::Number.decimal(l_digits: 2),
        street_address: Faker::Address.street_address,
        country: Faker::Address.country,
        state: Faker::Address.state,
        city: Faker::Address.city,
        zip: Faker::Address.zip
    )
end


5.times do
    Specialization.create!(
        specialization_name: Faker::Job.title
        )
end

10.times do 
    DoctorSpecialization.create!(
        doctor_id: rand(1..10),
        specialization_id: rand(1..5)
    )
end

10.times do
    Qualification.create!(
        doctor_id: rand(1..10),
        qualification_name: Faker::Educator.course,
        institute_name: Faker::University.name,
        procurement_year: Faker::Date.between(from: 50.years.ago, to: Date.today)
    )
end

10.times do
    OfficeDoctorAvailability.create!(
        office_id: rand(1..10),
        day_of_week: Faker::Date.between(from: 50.years.ago, to: Date.today),
        start_time: Faker::Time.between(from: Time.now, to: 1.year.from_now),
        end_time: Faker::Time.between(from: 1.year.ago, to: Date.today, format: :default),
        is_available: Faker::Boolean.boolean,
        reason_of_unavailability: Faker::Lorem.sentence
    )
end

10.times do
    InNetworkInsurance.create!(
        insurance_name: Faker::Company.name,
        office_id: rand(1..10)
    )
end
