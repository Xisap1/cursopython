from django import forms
from .models import Usuario, Combo

class RegistroForm(forms.ModelForm):
    class Meta:
        model = Usuario
        fields = ['username', 'password', 'email', 'is_verified']

    def save(self, commit=True):
        user = super().save(commit=False)
        user.set_password(self.cleaned_data["password"])
        if commit:
            user.save()
        return user
    
class ComboForm(forms.ModelForm):
    class Meta:
        model = Combo
        fields = ['nombre', 'precio_total']

    def clean_nombre(self):
        nombre = self.cleaned_data.get('nombre')
        if not nombre:
            raise forms.ValidationError("Este campo es obligatorio.")
        return nombre