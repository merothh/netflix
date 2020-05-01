.class public Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;,
        Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    }
.end annotation


# static fields
.field static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

.field protected b:Z

.field protected d:Z

.field protected e:Lo/ImageSwitcher;

.field private f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field private g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

.field private h:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private i:Lo/As;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 148
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->fe:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    .line 150
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->fg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e:Lo/ImageSwitcher;

    .line 151
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->n()V

    .line 152
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->m()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->k()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0
.end method

.method public static b(Lo/Bi;Lo/As;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 2

    if-eqz p0, :cond_b

    .line 91
    invoke-static {p0}, Lo/RL;->c(Lo/Bi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 95
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;->a:[I

    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 p0, 0x5

    if-eq v0, p0, :cond_3

    .line 127
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    invoke-interface {p1}, Lo/As;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 128
    invoke-interface {p1}, Lo/As;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_0
    return-object p0

    .line 130
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 124
    :cond_3
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 111
    :cond_4
    invoke-interface {p0}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p1

    .line 112
    invoke-interface {p0}, Lo/Bi;->p()I

    move-result p0

    .line 113
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 114
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    :cond_5
    if-lez p0, :cond_6

    .line 117
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 119
    :cond_6
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 108
    :cond_7
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 105
    :cond_8
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 97
    :cond_9
    invoke-interface {p0}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 99
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 101
    :cond_a
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0

    .line 134
    :cond_b
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    invoke-interface {p1}, Lo/As;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    .line 135
    invoke-interface {p1}, Lo/As;->e()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_1

    :cond_c
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_1
    return-object p0

    .line 137
    :cond_d
    sget-object p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->h:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 611
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 604
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 605
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->clearAnimation()V

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 415
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a(I)V

    return-void
.end method

.method public static j()V
    .locals 1

    .line 615
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private k()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .line 409
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method private l()V
    .locals 5

    .line 375
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x190

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 377
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 379
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private m()V
    .locals 1

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 160
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aE:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a(I)V

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ak:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/Long;)V
    .locals 2

    .line 592
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v1, "AddCachedVideoCommand"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    .line 593
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->i:Lo/As;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method protected c()I
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->al:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ak:I

    :goto_0
    return v0
.end method

.method public d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method public d(I)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->ac:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundShadowColor(I)V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setProgress(I)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 287
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 288
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j:Ljava/lang/String;

    .line 290
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eq p1, v1, :cond_0

    .line 291
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    .line 295
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setImportantForAccessibility(I)V

    .line 299
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e()V

    .line 301
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->h()V

    if-eq v0, p1, :cond_2

    .line 304
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 307
    :cond_2
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 323
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;->d:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 364
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    .line 365
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aL:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    .line 355
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    goto :goto_0

    .line 350
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    .line 351
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aG:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(I)V

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    .line 326
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->ay:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(I)V

    goto :goto_0

    .line 359
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    .line 360
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aE:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a(I)V

    goto :goto_0

    .line 335
    :pswitch_5
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aD:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(I)V

    goto :goto_0

    .line 330
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->clearAnimation()V

    .line 331
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aF:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(I)V

    goto :goto_0

    .line 339
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    .line 340
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aH:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e(I)V

    goto :goto_0

    .line 344
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    .line 345
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aC:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a(I)V

    .line 346
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->l()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 165
    sget-object v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->Z:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 166
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d:Z

    .line 167
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aa:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b:Z

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_btn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 597
    sget-object v0, Lcom/netflix/cl/model/AppView;->addCachedVideoButton:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->i:Lo/As;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/As;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected i()Ljava/lang/Long;
    .locals 4

    .line 586
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 587
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/command/AddCachedVideoCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/AddCachedVideoCommand;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    return-object v0
.end method

.method public setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->h:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(I)V

    return-void
.end method

.method public setStateAndProgress(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;I)V
    .locals 0

    .line 225
    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 226
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-ne p2, p1, :cond_0

    .line 227
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    const-string v0, "download_button"

    const-string v1, "setStateFromPlayable"

    .line 236
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 238
    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->i:Lo/As;

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setupClickHandling(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 245
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 248
    invoke-interface {p1}, Lo/As;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v1

    :cond_1
    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 250
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "setStateFromPlayable hasOfflinePlayableData=%b"

    invoke-static {v0, p2, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Lo/Bi;Lo/As;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p2

    .line 254
    invoke-interface {p1}, Lo/As;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 257
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;->d:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 260
    :cond_3
    invoke-interface {v1}, Lo/Bi;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setupClickHandling(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 275
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    .line 276
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupClickHandling(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 270
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    invoke-interface {p1}, Lo/As;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/As;->d()Z

    move-result p1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZLcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    .line 271
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
