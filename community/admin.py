from django.contrib import admin
from community.models import Quest, Group, Interest, Visit, Answer
from django_summernote.admin import SummernoteModelAdmin

def approve_selected(modeladmin, request, queryset):
    queryset.update(status="approved")
    approve_selected.short_description = "Approve selected"


def remove_approval_selected(modeladmin, request, queryset):
    queryset.update(status="rejected")
    remove_approval_selected.short_description = "Remove approval for selected"


class QuestionAdmin(SummernoteModelAdmin):
    summernote_fields = ('body',)
    list_display = ('title', 'date_asked', 'status',)
    prepopulated_fields = {'slug': ('title',)}
    list_filter = ('date_asked', 'status')
    actions = [approve_selected, remove_approval_selected]


class GroupAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}
    list_display = ('name', 'created')


admin.site.register(Quest, QuestionAdmin)
admin.site.register(Group, GroupAdmin)
admin.site.register(Interest)
admin.site.register(Visit)
admin.site.register(Answer)