from django.contrib import admin
from community.models import Quest, Group
from django_summernote.admin import SummernoteModelAdmin

def approve_selected(modeladmin, request, queryset):
    queryset.update(approved=True)
    approve_selected.short_description = "Approve selected"


def remove_approval_selected(modeladmin, request, queryset):
    queryset.update(approved=False)
    remove_approval_selected.short_description = "Remove approval for selected"


class QuestionAdmin(SummernoteModelAdmin):
    summernote_fields = ('body',)
    list_display = ('title', 'date_asked', 'approved',)
    prepopulated_fields = {'slug': ('title',)}
    list_filter = ('date_asked', 'approved')
    actions = [approve_selected, remove_approval_selected]


class GroupAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}
    list_display = ('name', 'created')


admin.site.register(Quest, QuestionAdmin)
admin.site.register(Group, GroupAdmin)
