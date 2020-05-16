from django.contrib import admin
from community.models import Question


def approve_selected(modeladmin, request, queryset):
    queryset.update(approved= True)
    approve_selected.short_description = "Approve selected"
def remove_approval_selected(modeladmin, request, queryset):
    queryset.update(approved= False )
    remove_approval_selected.short_description = "Remove approval for selected"

class QuestionAdmin(admin.ModelAdmin):
    list_display = ('name','date_asked','approved','body')
    #prepopulated_fields = {'slug': ('title',)}
    list_filter = ( 'date_asked','approved')
    actions = [approve_selected , remove_approval_selected]
admin.site.register(Question, QuestionAdmin)