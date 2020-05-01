.class public Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;
.super Lo/Dx;
.source ""


# static fields
.field private static final K:Landroid/view/animation/Interpolator;

.field private static final N:Landroid/view/animation/Interpolator;


# instance fields
.field private J:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/Button;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/HorizontalScrollView;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/view/View;

.field private W:Landroid/widget/LinearLayout;

.field public sharing:Lo/WebViewProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 41
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->K:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    .line 42
    invoke-static {v1, v2, v1, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->N:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lo/Dx;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lo/Dx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lo/Dx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Lo/Bc;Landroid/view/View;)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/app/Activity;

    invoke-static {p2, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    .line 245
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 246
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->sharing:Lo/WebViewProvider;

    invoke-interface {p2, p1}, Lo/WebViewProvider;->a(Lo/Bc;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lo/DQ;ILandroid/view/View;)V
    .locals 0

    .line 204
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->E:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lo/DQ;->c()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->g(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/widget/HorizontalScrollView;Landroid/view/View;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->c(Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V

    .line 173
    iget p2, v0, Landroid/graphics/Point;->x:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private static synthetic c(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 357
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 2

    .line 189
    check-cast p2, Landroid/view/ViewGroup;

    .line 190
    iget v0, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->x:I

    .line 191
    iget v0, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr v0, p3

    iput v0, p4, Landroid/graphics/Point;->y:I

    if-ne p2, p1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->c(Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V

    return-void
.end method

.method private c(Landroid/widget/HorizontalScrollView;Landroid/view/View;)V
    .locals 1

    .line 169
    new-instance v0, Lo/Es;

    invoke-direct {v0, p0, p1, p2}, Lo/Es;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Landroid/widget/HorizontalScrollView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/DQ;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a(Lo/DQ;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/Bc;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a(Lo/Bc;Landroid/view/View;)V

    return-void
.end method

.method private e(Lo/DQ;)Ljava/lang/String;
    .locals 3

    .line 152
    sget-object v0, Lo/DJ;->e:Lo/DJ;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->bl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lo/DJ;->c(Ljava/lang/String;Lo/DQ;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/widget/Button;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->R:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->c(Landroid/widget/HorizontalScrollView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Landroid/widget/HorizontalScrollView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Landroid/widget/HorizontalScrollView;Landroid/view/View;)V

    return-void
.end method

.method private e(Lo/DQ;Landroid/widget/Button;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->e(Lo/DQ;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 201
    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 202
    invoke-virtual {p2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 203
    new-instance v0, Lo/Ep;

    invoke-direct {v0, p0, p1, p3}, Lo/Ep;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/DQ;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static synthetic g(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method


# virtual methods
.method protected a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 363
    sget p1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->i:I

    return p1

    .line 365
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->f:I

    return p1
.end method

.method protected a(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p2, 0x0

    .line 351
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->N:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lo/Er;

    invoke-direct {v0, p1}, Lo/Er;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->K:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lo/Et;

    invoke-direct {v0, p1}, Lo/Et;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method protected b()I
    .locals 1

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->gm:I

    return v0
.end method

.method protected b(ZLo/Bc;)V
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->z:Z

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->C:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->u:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->C:Landroid/view/ViewStub;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->u:Landroid/view/ViewStub;

    .line 302
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, p0

    .line 304
    :goto_2
    invoke-super {p0, p1}, Lo/Dx;->a(Landroid/view/View;)V

    .line 305
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->la:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->i:Lo/ListView;

    .line 306
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->va:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 307
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->Q:Landroid/view/View;

    .line 308
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->F:Lo/ListView;

    .line 309
    invoke-super {p0, p1, p2}, Lo/Dx;->c(Landroid/view/View;Lo/Bc;)V

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->z:Z

    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->j()V

    :cond_3
    return-void
.end method

.method protected d(Landroid/widget/Button;Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 345
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Integer;)V
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->M:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->O:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Landroid/widget/Button;Landroid/view/View;Ljava/lang/Boolean;)V

    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->L:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->S:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Landroid/widget/Button;Landroid/view/View;Ljava/lang/Boolean;)V

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->J:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->P:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Landroid/widget/Button;Landroid/view/View;Ljava/lang/Boolean;)V

    .line 335
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->M:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->e(Landroid/widget/Button;)V

    .line 338
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_4

    .line 339
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->J:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->e(Landroid/widget/Button;)V

    :cond_4
    return-void
.end method

.method public d(Lo/Bc;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lo/Dx;->d(Lo/Bc;)V

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->setupScrollableTabViews()V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Lo/Eq;

    invoke-direct {v1, p0, p1}, Lo/Eq;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/Bc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 5

    .line 93
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kZ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->C:Landroid/view/ViewStub;

    .line 94
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kY:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->u:Landroid/view/ViewStub;

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uC:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DateTimeView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b:Lo/DateTimeView;

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d()V

    .line 100
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vr:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->h:Lo/RemoteViewsListAdapter;

    .line 101
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vm:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->c:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vz:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->g:Landroid/view/ViewGroup;

    .line 103
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->G:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->x:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hA:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->p:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rA:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->q:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->w:Landroid/view/ViewGroup;

    .line 109
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uY:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->n:Landroid/view/ViewGroup;

    .line 110
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vv:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->t:Landroid/view/View;

    .line 112
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vl:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->I:Landroid/view/ViewGroup;

    .line 114
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vk:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->T:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fr:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->R:Landroid/widget/HorizontalScrollView;

    .line 118
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ef:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->U:Landroid/view/View;

    .line 120
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uE:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->M:Landroid/widget/Button;

    .line 121
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uH:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->O:Landroid/view/View;

    .line 123
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uK:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->L:Landroid/widget/Button;

    .line 124
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uP:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->S:Landroid/view/View;

    .line 126
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uL:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->J:Landroid/widget/Button;

    .line 127
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uQ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->P:Landroid/view/View;

    .line 132
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vc:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->W:Landroid/widget/LinearLayout;

    .line 133
    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->W:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 139
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    div-int/lit8 v0, v0, 0x2

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v0

    const v2, 0x3fe39581    # 1.778f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 144
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected j()V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b:Lo/DateTimeView;

    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aY:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 267
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aR:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 265
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aY:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 264
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 274
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b:Lo/DateTimeView;

    invoke-virtual {v3}, Lo/DateTimeView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b:Lo/DateTimeView;

    invoke-virtual {v3, v2}, Lo/DateTimeView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Lo/Bc;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a(Lo/Bc;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Landroid/view/View;I)V

    .line 280
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->F:Lo/ListView;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Landroid/view/View;I)V

    .line 282
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->v:Lo/SimpleClock;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Landroid/view/View;I)V

    .line 283
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->i:Lo/ListView;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Landroid/view/View;I)V

    .line 284
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->j(Lo/Bc;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->Q:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b(Landroid/view/View;I)V

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b:Lo/DateTimeView;

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->b:Lo/DateTimeView;

    invoke-virtual {v0, v1}, Lo/DateTimeView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected j(Lo/Bc;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 316
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_2

    .line 322
    invoke-static {p1}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 323
    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setupScrollableTabViews()V
    .locals 10

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    sget-object v0, Lo/DJ;->e:Lo/DJ;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->H:Lo/Bc;

    invoke-virtual {v0, v1}, Lo/DJ;->b(Lo/Bc;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x3

    new-array v2, v1, [Landroid/widget/Button;

    .line 218
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->M:Landroid/widget/Button;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->L:Landroid/widget/Button;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->J:Landroid/widget/Button;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Landroid/view/View;

    .line 219
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->O:Landroid/view/View;

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->S:Landroid/view/View;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->P:Landroid/view/View;

    aput-object v3, v1, v6

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/DQ;

    .line 224
    aget-object v8, v2, v3

    .line 225
    aget-object v9, v1, v3

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    .line 227
    invoke-direct {p0, v7, v8, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->e(Lo/DQ;Landroid/widget/Button;I)V

    .line 229
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->U:Landroid/view/View;

    invoke-static {v7, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 231
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v8, v9, v6}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Landroid/widget/Button;Landroid/view/View;Ljava/lang/Boolean;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public u()Landroid/widget/LinearLayout;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->T:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public w()V
    .locals 2

    .line 371
    invoke-super {p0}, Lo/Dx;->w()V

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->R:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public x()Landroid/view/ViewStub;
    .locals 1

    .line 385
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vw:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method
