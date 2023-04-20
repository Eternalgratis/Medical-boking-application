# 10.times do
#     User.create!(
#         first_name: Faker::Name.name,
#         last_name: Faker::Name.name,
#         contact_number: Faker::PhoneNumber.cell_phone_in_e164,
#         email: Faker::Internet.email,
#         password: "freedom"
#     )
# end

10.times do
    ClientReview.create!(
        user_id: User.all.sample.id,
        doctor_id: Doctor.all.sample.id,
        is_review_anonymous: User.all.sample.name,
        wait_time_rating: Faker::Rating.rand(1..10),
        bedside_manner_rating: Faker::Rating.rand(1..10),
        overall_rating: Faker::Rating.rand(1..10),
        review: "Exceptional service! All my concerns were addressed with calmness and attention. Such a pleasant doctor!",
        is_doctor_recommended: "Yes",
        review_date: Faker::Date.in_date_period
    )
end

10.times do
    Appointment.create!(
        user_id: User.all.sample.id,
        office_id: Office.all.sample.id,
        probable_start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        actual_end_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        appointment_status_id: AppointmentStatus.all.sample.id,
        appointment_taken_date: Faker::Date.forward(days: 23),
        app_booking_channel_id: AppBookingChannel.all.sample.id
    )
end

3.times do
    AppointmentStatus.create!(
        status:( "Seen" "Unseen")
    )
end

5.timmes do
    AppBookingChannel.create!(
        app_booking_channel_name: Faker::App.name
    )
end

5.times do
    Doctor.create!(
        first_name: Faker::Name.name,
        last_name: Faker::Name.name,
        professioal_statement: Faker::Educator.degree,
        practicing_from: Faker::Date.in_date_period 
    )
end

5.times do
    Office.create!(
        doctor_id: Doctor.all.sample.id,
        hospital_affiliation_id: HospitalAffiliation.all.sample.id,
        time_slot_per_client_in_min: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
        first_consultation_fee: Faker::Commerce.price,
        followup_consultation_fee: Faker::Commerce.price,
        street_address: Faker::Address.street_address,
        country: Faker::Address.country,
        state: Faker::Address.state,
        city: Faker::Address.city,
        zip: Faker::Address.zip
    )
end

10.times do
    HospitalAffiliation.create!(
        doctor_id: Doctor.all.sample.id,
        hospital_name: Faker::Company.name,
        country: Faker::Address.country,
        city: Faker::Address.city,
        start_date: Faker::Date.in_date_period ,
        end_date: Faker::Date.in_date_period 
    )
end

5.times do
    Specialization.create!([{
        specialization_name:"
        physiotherapy, 
        cardiology, 
        Dermatology, 
        Surgery,
        Pediatrics"
        }])
end

5.times do 
    DoctorSpecialization.create!(
        doctor_id: Doctor.all.sample.id,
        specialization_id: Specialization.all.sample.id
    )
end

5.times do
    Qualification.create!(
        doctor_id: Doctor.all.sample.id,
        qualification_name: Faker::Educator.degree,
        institute_name: Faker::Educator.universit,
        procurement_year: Faker::Date.in_date_period 
    )
end

10.times do
    OfficeDoctorAvailability.create!(
        office_id: Office.all.sample.id,
        day_of_week: Faker::Date.forward(days: 23),
        start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        end_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
        is_available: ("Yes" "No"),
        reason_of_unavailability: "Unforseen Emergency"
    )
end

5.times do
    InNetworkInsurance.create!(
        insurance_name: Faker::Company.name,
        office_id: Office.all.sample.id
    )
end
