# from datetime import datetime
from django.db import models
from localflavor.us.models import *
from phonenumber_field.modelfields import PhoneNumberField


class VolunteerApplication(models.Model):
    first_name = models.CharField(blank=False, max_length=64, default='')
    last_name = models.CharField(blank=False, max_length=64, default='')
    address = models.CharField(blank=False, max_length=128, default='')
    city = models.CharField(blank=False, max_length=64, default='')
    state = USStateField(blank=False, default='TX')
    zip_code = USZipCodeField(blank=False, default='')
    home_phone = PhoneNumberField(blank=True, null=True, default='+1')
    work_phone = PhoneNumberField(blank=True, null=True, default='+1')
    mobile_phone = PhoneNumberField(blank=False, default='+1')
    emergency_contact = PhoneNumberField(blank=False, default='+1')
    email_address = models.EmailField(max_length=128, blank=False, default='')
    marital_status = models.CharField(max_length=1, blank=False, null=True, default=None, choices=(
        ('S', 'Single'),
        ('M', 'Married'),
        ('D', 'Divorced'),
        ('W', 'Widowed'),
    ), )
    source = models.CharField(verbose_name="How did you learn of Bridge Hospice?", max_length=128, blank=False, default='')

    volunteer_agency_1 = CharField(verbose_name="Agency 1", max_length=64, blank=True, null=True, default=None)
    volunteer_city_1 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    volunteer_state_1 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    volunteer_duties_1 = CharField(verbose_name="Duties", max_length=64, blank=True, null=True, default=None)
    volunteer_supervisor_1 = CharField(verbose_name="Supervisor", max_length=64, blank=True, null=True, default=None)
    volunteer_start_date_1 = models.DateField(verbose_name="Start Date", null=True, blank=True, default=None)
    volunteer_end_date_1 = models.DateField(verbose_name="End Date", null=True, blank=True, default=None)

    volunteer_agency_2 = CharField(verbose_name="Agency 2", max_length=64, blank=True, null=True, default=None)
    volunteer_city_2 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    volunteer_state_2 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    volunteer_duties_2 = CharField(verbose_name="Duties", max_length=64, blank=True, null=True, default=None)
    volunteer_supervisor_2 = CharField(verbose_name="Supervisor", max_length=64, blank=True, null=True, default=None)
    volunteer_start_date_2 = models.DateField(verbose_name="Start Date", null=True, blank=True, default=None)
    volunteer_end_date_2 = models.DateField(verbose_name="End Date", null=True, blank=True, default=None)

    volunteer_agency_3 = CharField(verbose_name="Agency 3", max_length=64, blank=True, null=True, default=None)
    volunteer_city_3 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    volunteer_state_3 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    volunteer_duties_3 = CharField(verbose_name="Duties", max_length=64, blank=True, null=True, default=None)
    volunteer_supervisor_3 = CharField(verbose_name="Supervisor", max_length=64, blank=True, null=True, default=None)
    volunteer_start_date_3 = models.DateField(verbose_name="Start Date", null=True, blank=True, default=None)
    volunteer_end_date_3 = models.DateField(verbose_name="End Date", null=True, blank=True, default=None)

    employment_employer_1 = CharField(verbose_name="Employer 1", max_length=64, blank=True, null=True, default=None)
    employment_city_1 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    employment_state_1 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    employment_title_1 = CharField(verbose_name="Title", max_length=64, blank=True, null=True, default=None)
    employment_start_date_1 = models.DateField(verbose_name="Start Date", null=True, blank=True, default=None)
    employment_end_date_1 = models.DateField(verbose_name="End Date", null=True, blank=True, default=None)

    employment_employer_2 = CharField(verbose_name="Employer 2", max_length=64, blank=True, null=True, default=None)
    employment_city_2 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    employment_state_2 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    employment_title_2 = CharField(verbose_name="Title", max_length=64, blank=True, null=True, default=None)
    employment_start_date_2 = models.DateField(verbose_name="Start Date", null=True, blank=True, default=None)
    employment_end_date_2 = models.DateField(verbose_name="End Date", null=True, blank=True, default=None)

    employment_employer_3 = CharField(verbose_name="Employer 3", max_length=64, blank=True, null=True, default=None)
    employment_city_3 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    employment_state_3 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    employment_title_3 = CharField(verbose_name="Title", max_length=64, blank=True, null=True, default=None)
    employment_start_date_3 = models.DateField(verbose_name="Start Date", null=True, blank=True, default=None)
    employment_end_date_3 = models.DateField(verbose_name="End Date", null=True, blank=True, default=None)

    education_school_1 = CharField(verbose_name="Education 1", max_length=64, blank=True, null=True, default=None)
    education_city_1 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    education_state_1 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    education_years_studied_1 = models.PositiveIntegerField(verbose_name="Years Studied", blank=True, null=True, default=None)
    education_degree_1 = CharField(verbose_name="Degree/Diploma", max_length=64, blank=True, null=True, default=None)
    education_date_completed_1 = models.DateField(verbose_name="Date Completed", null=True, blank=True, default=None)

    education_school_2 = CharField(verbose_name="Education 2", max_length=64, blank=True, null=True, default=None)
    education_city_2 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    education_state_2 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    education_years_studied_2 = models.PositiveIntegerField(verbose_name="Years Studied", blank=True, null=True, default=None)
    education_degree_2 = CharField(verbose_name="Degree/Diploma", max_length=64, blank=True, null=True, default=None)
    education_date_completed_2 = models.DateField(verbose_name="Date Completed", null=True, blank=True, default=None)

    education_school_3 = CharField(verbose_name="Education 3", max_length=64, blank=True, null=True, default=None)
    education_city_3 = models.CharField(verbose_name="City", max_length=64, blank=True, null=True, default=None)
    education_state_3 = USStateField(verbose_name="State", blank=True, null=True, default=None)
    education_years_studied_3 = models.PositiveIntegerField(verbose_name="Years Studied", blank=True, null=True, default=None)
    education_degree_3 = CharField(verbose_name="Degree/Diploma", max_length=64, blank=True, null=True, default=None)
    education_date_completed_3 = models.DateField(verbose_name="Date Completed", null=True, blank=True, default=None)

    licenses = models.TextField(verbose_name="List any professional licenses (include type and license #).", max_length=255, blank=True, null=True, default=None)
    training = models.TextField(verbose_name="Describe any special training, apprenticeship, skills (such as languages spoken other than English), or other activities that you feel may be helpful as a volunteer.", max_length=255, blank=True, null=True, default=None)
    volunteer_type = models.CharField(max_length=40, blank=False, null=True, default=None, choices=(
        ('Direct Patient Care Activities', 'Direct Patient Care Activities – working directly with the patients and their families (may include patient visitation, caregiver respite, telephone contacts, errands, etc.)'),
        ('Indirect Patient Activities', 'Indirect Patient Activities - not working directly with the patients (may include yard work, pet care, light construction, sewing, baking, treats/gifts, projects, etc.)'),
        ('Administrative Activities', 'Administrative Activities (may include typing, mailings, filing, phone support, copying, faxing, special projects, etc.)')
    ))
    sunday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    monday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    tuesday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    wednesday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    thursday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    friday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    saturday_availability = models.CharField(max_length=4, blank=False, null=True, default=None, choices=(('am', 'Morning'), ('pm', 'Afternoon'), ('both', 'Full-Day'), ('none', 'Not Available')))
    reason = models.TextField(verbose_name="Please state briefly your reasons for wanting to be involved with hospice.", max_length=255, blank=False, default='')
    personal_loss = models.TextField(verbose_name="Please write briefly about your personal experience with significant loses (deaths, divorce, etc.). For deaths, please indicate the relationship, dates and state your level of involvement.", max_length=255, blank=False, default='')
    felony = models.CharField(verbose_name='Have you ever been convicted of a felony? (Disclosure of this information will not necessarily preclude you from becoming a volunteer with our organization.)', max_length=1, blank=False, default='N', choices=(
        ('Y', 'Yes'),
        ('N', 'No')
    ))
    conviction = models.TextField(verbose_name="If so, please provide information regarding type and date of which the felony occurred.", max_length=255, blank=True, null=True, default=None)

    def __str__(self):
        return 'Volunteer Application: ' + self.first_name + ' ' + self.last_name
