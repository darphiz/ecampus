from django.shortcuts import render, get_object_or_404,redirect
from .models import Post
from django.urls  import reverse
from django.core.paginator import Paginator
from .forms import CommentForm
from django.contrib.auth.decorators import login_required
from community.models import Question


def post_list(request):
    post_list = Post.published.all()
    paginator = Paginator(post_list, 4) #displays 4 posts per page
    page = request.GET.get('page')
    posts = paginator.get_page(page)
    try:
        if request.user.is_authenticated:
            faculty = request.user.userprofile.faculty
            faculty_questions = Question.Approved.filter(faculty = faculty).order_by('?')[:4]
            return render(request,
                'index.html',
                {'posts': posts,'faculty_questions':faculty_questions})

        else:
            faculty_questions = Question.Approved.order_by('?')[:4]
            return render(request,
                'index.html',
                {'posts': posts,'faculty_questions':faculty_questions})


    except:
        return render(request,
                'index.html',
                {'posts': posts})

    return render(request,
            'index.html',
            {'posts': posts})

def post_detail(request, year, month, day, post):
    post = get_object_or_404(Post, slug=post,
    status='published',
    publish__year=year,
    publish__month=month,
    publish__day=day)

    post_category=str(post.category)

    related=Post.published.filter(category=post_category).order_by('?')[:4]
    # List of active comments for this post
    comment = post.comments.filter(active=True)
    paginator = Paginator(comment, 10)
    page = request.GET.get('page')
    comments = paginator.get_page(page)

    new_comment = None
    if request.method == 'POST':
    # A comment was posted
        comment_form = CommentForm(data=request.POST)
        if comment_form.is_valid():
            # Create Comment object but don't save to database yet
            new_comment = comment_form.save(commit=False)
            # Assign the current post to the comment
            new_comment.post = post
                # Save the comment to the database
            new_comment.save()
    else:
        comment_form = CommentForm()

    return render(request,
        'detail.html',
        {'post': post, 'related':related ,'comments': comments,
            'new_comment': new_comment,
            'comment_form': comment_form,'comment':comment})


def spopost(request):
    spopost=Post.published.filter(category='sport')
    return render(request,
    'category.html',
    {'spopost':spopost})

def entpost(request):
    entpost= Post.published.filter(category='entertainment')
    return render(request,
    'category.html',
    {'entpost':entpost})

def fapost(request):
    fapost=Post.published.filter(category='fuoyeAspirant')
    return render(request,'category.html',
    {'fapost':fapost})

def fnpost(request):
    fnpost=Post.published.filter(category='fuoyenews')
    return render(request,'category.html',
    {'fnpost':fnpost})

def hthpost(request):
    hthpost=Post.published.filter(category='health')
    return render(request,'category.html',
    {'hthpost':hthpost})

def tipost(request):
    tipost=Post.published.filter(category='tips')
    return render(request,'category.html',
    {'tipost':tipost})

def gospost(request):
    gospost=Post.published.filter(category='gossip')
    return render(request,'category.html',
    {'gospost':gospost})

def contact(request):
    return render(request,'contact.html' )

def premium(request):
    return render(request,'premium.html')

def premium_payment(request,pay):
    amount = int(pay)
    context = {'amount':amount}
    return render(request,'premium_payment.html',context)