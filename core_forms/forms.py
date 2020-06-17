from django.forms import ModelForm
from .models import VolunteerApplication
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Column, Row, HTML, Submit, Layout
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from localflavor.us.forms import USStateField, USZipCodeField
from phonenumber_field.formfields import PhoneNumberField


class SignUpForm(UserCreationForm):
    mobile_phone = PhoneNumberField()
    first_name = forms.CharField(required=True)
    last_name = forms.CharField(required=True)
    email = forms.EmailField(required=True)

    class Meta:
        model = User
        fields = (
            'first_name',
            'last_name',
            'mobile_phone',
            'email',
            'password1',
            'password2',
        )

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.layout = Layout(
            Row(Column(HTML('<h2 class="text-center">Bridge Hospice Signup</h2><hr>'), css_class='col-12')),
            Row(
                Column('first_name', css_class='form-group col-12 col-md-6'),
                Column('last_name', css_class='form-group col-12 col-md-6'),
                css_class='form-row'
            ),
            Row(
                Column('email', css_class='form-group col-12'),
                Column('mobile_phone', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(Column('password1', css_class='form-group col-12'), css_class='form-row'),
            Row(Column('password2', css_class='form-group col-12'), css_class='form-row'),
            Submit('submit', 'Submit', css_class='w-100 text-center')
        )




class VolunteerApplicationForm(ModelForm):
    class Meta:
        model = VolunteerApplication
        fields = '__all__'
        widgets = {
            'volunteer_start_date_1': forms.DateInput(attrs={'type': 'date'}),
            'volunteer_start_date_2': forms.DateInput(attrs={'type': 'date'}),
            'volunteer_start_date_3': forms.DateInput(attrs={'type': 'date'}),
            'volunteer_end_date_1': forms.DateInput(attrs={'type': 'date'}),
            'volunteer_end_date_2': forms.DateInput(attrs={'type': 'date'}),
            'volunteer_end_date_3': forms.DateInput(attrs={'type': 'date'}),
            'employment_start_date_1': forms.DateInput(attrs={'type': 'date'}),
            'employment_start_date_2': forms.DateInput(attrs={'type': 'date'}),
            'employment_start_date_3': forms.DateInput(attrs={'type': 'date'}),
            'employment_end_date_1': forms.DateInput(attrs={'type': 'date'}),
            'employment_end_date_2': forms.DateInput(attrs={'type': 'date'}),
            'employment_end_date_3': forms.DateInput(attrs={'type': 'date'}),
            'education_date_completed_1': forms.DateInput(attrs={'type': 'date'}),
            'education_date_completed_2': forms.DateInput(attrs={'type': 'date'}),
            'education_date_completed_3': forms.DateInput(attrs={'type': 'date'}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.layout = Layout(
            Row(Column(HTML('<h2 class="text-center">Bridge Hospice Volunteer Application</h2>'), css_class='col-12')),
            Row(Column(HTML('<hr><h4 class="">Contact Information</h4>'), css_class='col-12')),
            Row(
                Column('first_name', css_class='form-group col-12 col-md-6'),
                Column('last_name', css_class='form-group col-12 col-md-6'),
                css_class='form-row'
            ),
            Row(
                Column('street_address', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(
                Column('city', css_class='form-group col-12 col-md-6'),
                Column('state', css_class='form-group col-6 col-md-4'),
                Column('zip_code', css_class='form-group col-6 col-md-2'),
                css_class='form-row'
            ),
            Row(
                Column('home_phone', css_class='form-group col-12 col-md-6'),
                Column('work_phone', css_class='form-group col-12 col-md-6'),
                css_class='form-row'
            ),
            Row(
                Column('mobile_phone', css_class='form-group col-12 col-md-6'),
                Column('emergency_contact', css_class='form-group col-12 col-md-6'),
                css_class='form-row'
            ),
            Row(
                Column('email', css_class='form-group col-12 col-md-6'),
                Column('marital_status', css_class='form-group col-12 col-md-6'),
                css_class='form-row'
            ),
            Row(
                Column('source', css_class='form-group col-12'),
                css_class='form-row'
            ),

            Row(Column(HTML('<h4 class="">Volunteer Experience</h4>'), css_class='col-12')),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('volunteer_agency_1', css_class='form-group col-12 col-md-6'),
                Column('volunteer_city_1', css_class='form-group col-12 col-md-4'),
                Column('volunteer_state_1', css_class='form-group col-12 col-md-2'),
                Column('volunteer_duties_1', css_class='form-group col-12 col-md-4'),
                Column('volunteer_supervisor_1', css_class='form-group col-12 col-md-4'),
                Column('volunteer_start_date_1', css_class='form-group col-12 col-md-2'),
                Column('volunteer_end_date_1', css_class='form-group col-12 col-md-2'),
                css_class='form-row'
            ),

            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('volunteer_agency_2', css_class='form-group col-12 col-md-6'),
                Column('volunteer_city_2', css_class='form-group col-12 col-md-4'),
                Column('volunteer_state_2', css_class='form-group col-12 col-md-2'),
                Column('volunteer_duties_2', css_class='form-group col-12 col-md-4'),
                Column('volunteer_supervisor_2', css_class='form-group col-12 col-md-4'),
                Column('volunteer_start_date_2', css_class='form-group col-12 col-md-2'),
                Column('volunteer_end_date_2', css_class='form-group col-12 col-md-2'),
                css_class='form-row'
            ),

            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('volunteer_agency_3', css_class='form-group col-12 col-md-6'),
                Column('volunteer_city_3', css_class='form-group col-12 col-md-4'),
                Column('volunteer_state_3', css_class='form-group col-12 col-md-2'),
                Column('volunteer_duties_3', css_class='form-group col-12 col-md-4'),
                Column('volunteer_supervisor_3', css_class='form-group col-12 col-md-4'),
                Column('volunteer_start_date_3', css_class='form-group col-12 col-md-2'),
                Column('volunteer_end_date_3', css_class='form-group col-12 col-md-2'),
                Column(HTML('<hr>'), css_class='col-12'),
                css_class='form-row'
            ),


            Row(Column(HTML('<h4 class="pt-3">Work Experience</h4>'), css_class='col-12')),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('employment_employer_1', css_class='form-group col-12 col-md-6'),
                Column('employment_city_1', css_class='form-group col-12 col-md-4'),
                Column('employment_state_1', css_class='form-group col-12 col-md-2'),
                Column('employment_title_1', css_class='form-group col-12 col-md-4'),
                Column('employment_start_date_1', css_class='form-group col-12 col-md-4'),
                Column('employment_end_date_1', css_class='form-group col-12 col-md-4'),
                css_class='form-row'
            ),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('employment_employer_2', css_class='form-group col-12 col-md-6'),
                Column('employment_city_2', css_class='form-group col-12 col-md-4'),
                Column('employment_state_2', css_class='form-group col-12 col-md-2'),
                Column('employment_title_2', css_class='form-group col-12 col-md-4'),
                Column('employment_start_date_2', css_class='form-group col-12 col-md-4'),
                Column('employment_end_date_2', css_class='form-group col-12 col-md-4'),
                css_class='form-row'
            ),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('employment_employer_3', css_class='form-group col-12 col-md-6'),
                Column('employment_city_3', css_class='form-group col-12 col-md-4'),
                Column('employment_state_3', css_class='form-group col-12 col-md-2'),
                Column('employment_title_3', css_class='form-group col-12 col-md-4'),
                Column('employment_start_date_3', css_class='form-group col-12 col-md-4'),
                Column('employment_end_date_3', css_class='form-group col-12 col-md-4'),
                Column(HTML('<hr>'), css_class='col-12'),
                css_class='form-row'
            ),
            Row(Column(HTML('<h4 class=" pt-3">Education</h4>'), css_class='col-12')),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('education_school_1', css_class='form-group col-12 col-md-6'),
                Column('education_city_1', css_class='form-group col-12 col-md-4'),
                Column('education_state_1', css_class='form-group col-12 col-md-2'),
                Column('education_years_studied_1', css_class='form-group col-12 col-md-4'),
                Column('education_degree_1', css_class='form-group col-12 col-md-4'),
                Column('education_date_completed_1', css_class='form-group col-12 col-md-4'),
                css_class='form-row'
            ),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('education_school_2', css_class='form-group col-12 col-md-6'),
                Column('education_city_2', css_class='form-group col-12 col-md-4'),
                Column('education_state_2', css_class='form-group col-12 col-md-2'),
                Column('education_years_studied_2', css_class='form-group col-12 col-md-4'),
                Column('education_degree_2', css_class='form-group col-12 col-md-4'),
                Column('education_date_completed_2', css_class='form-group col-12 col-md-4'),
                css_class='form-row'
            ),
            Row(
                Column(HTML('<hr>'), css_class='col-12'),
                Column('education_school_3', css_class='form-group col-12 col-md-6'),
                Column('education_city_3', css_class='form-group col-12 col-md-4'),
                Column('education_state_3', css_class='form-group col-12 col-md-2'),
                Column('education_years_studied_3', css_class='form-group col-12 col-md-4'),
                Column('education_degree_3', css_class='form-group col-12 col-md-4'),
                Column('education_date_completed_3', css_class='form-group col-12 col-md-4'),
                Column(HTML('<hr>'), css_class='col-12'),
                css_class='form-row'
            ),

            Row(
                Column('licenses', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(
                Column('training', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(
                Column('volunteer_type', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(Column(HTML('<h4 class=" pt-3">Availability</h4><hr>'), css_class='col-12')),
            Row(
                Column('sunday_availability', css_class='form-group col-12'),
                Column('monday_availability', css_class='form-group col-12'),
                Column('tuesday_availability', css_class='form-group col-12'),
                Column('wednesday_availability', css_class='form-group col-12'),
                Column('thursday_availability', css_class='form-group col-12'),
                Column('friday_availability', css_class='form-group col-12'),
                Column('saturday_availability', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(Column(HTML('<hr>'), css_class='col-12')),
            Row(
                Column('reason', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(
                Column('personal_loss', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(
                Column('felony', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Row(
                Column('conviction', css_class='form-group col-12'),
                css_class='form-row'
            ),
            Submit('submit', 'Submit', css_class='w-100 text-center')
        )
