from django import template
import html2text

register = template.Library()


@register.filter()
def class_name(value):
    return value.__class__.__name__


@register.filter(name='pure_text')
def pure_text(value):
    h = html2text.HTML2Text()
    h.ignore_links = True
    h.ignore_images = True
    parsed_data = h.handle(value)
    return parsed_data


@register.filter
def div(value, arg):
    '''
    Divides the value; argument is the divisor.
    Returns empty string on any error.
    '''
    try:
        value = int(value)
        arg = int(arg)
        if arg:
            return value / arg
    except:
        pass
    return ''


@register.filter
def mul(value, arg):
    '''
    Divides the value; argument is the divisor.
    Returns empty string on any error.
    '''
    try:
        value = float(value)
        arg = float(arg)
        if arg:
            return format(value * arg, '.2f')
    except:
        pass
    return ''

@register.filter(name='times') 
def times(number):
    return range(1, number)