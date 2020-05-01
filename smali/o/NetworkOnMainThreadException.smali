.class public Lo/NetworkOnMainThreadException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateResource"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NetworkOnMainThreadException$ActionBar;,
        Lo/NetworkOnMainThreadException$StateListAnimator;,
        Lo/NetworkOnMainThreadException$Application;
    }
.end annotation


# static fields
.field static final b:Landroid/view/animation/Interpolator;

.field static final c:Landroid/os/Handler;

.field private static final f:[I


# instance fields
.field protected a:I

.field final d:Lo/Message$Activity;

.field private e:I

.field private g:Lo/NetworkOnMainThreadException$StateListAnimator;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/view/ViewGroup;

.field private j:I

.field private k:Lo/NetworkOnMainThreadException$Application;

.field private l:Z

.field private final n:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 144
    sget v1, Lo/LoaderManager$StateListAnimator;->D:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lo/NetworkOnMainThreadException;->f:[I

    .line 168
    new-instance v0, Lo/Appendable;

    invoke-direct {v0}, Lo/Appendable;-><init>()V

    sput-object v0, Lo/NetworkOnMainThreadException;->b:Landroid/view/animation/Interpolator;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo/NetworkOnMainThreadException$1;

    invoke-direct {v2}, Lo/NetworkOnMainThreadException$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lo/NetworkOnMainThreadException;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lo/NetworkOnMainThreadException;->e:I

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lo/NetworkOnMainThreadException;->l:Z

    .line 536
    new-instance v0, Lo/NetworkOnMainThreadException$3;

    invoke-direct {v0, p0}, Lo/NetworkOnMainThreadException$3;-><init>(Lo/NetworkOnMainThreadException;)V

    iput-object v0, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    .line 241
    iput-object p1, p0, Lo/NetworkOnMainThreadException;->i:Landroid/view/ViewGroup;

    .line 242
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkOnMainThreadException;->h:Landroid/content/Context;

    .line 244
    iget-object p1, p0, Lo/NetworkOnMainThreadException;->h:Landroid/content/Context;

    invoke-static {p1}, Lo/NetworkOnMainThreadException;->c(Landroid/content/Context;)V

    .line 246
    iget-object p1, p0, Lo/NetworkOnMainThreadException;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 247
    sget v0, Lo/IHwInterface$LoaderManager;->d:I

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->i:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/NetworkOnMainThreadException$StateListAnimator;

    iput-object p1, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    .line 250
    iget-object p1, p0, Lo/NetworkOnMainThreadException;->h:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lo/NetworkOnMainThreadException;->n:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic a(Lo/NetworkOnMainThreadException;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lo/NetworkOnMainThreadException;->l:Z

    return p0
.end method

.method static synthetic b(Lo/NetworkOnMainThreadException;)Lo/NetworkOnMainThreadException$StateListAnimator;
    .locals 0

    .line 65
    iget-object p0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    return-object p0
.end method

.method private b(Z)V
    .locals 4

    .line 730
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->k:Lo/NetworkOnMainThreadException$Application;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$Application;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->k:Lo/NetworkOnMainThreadException$Application;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$Application;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p0}, Lo/NetworkOnMainThreadException;->c()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/IHwInterface$Activity;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 736
    :cond_1
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->k:Lo/NetworkOnMainThreadException$Application;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$Application;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 738
    invoke-virtual {p0}, Lo/NetworkOnMainThreadException;->c()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lo/IHwInterface$Activity;->d:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 1

    .line 149
    sget-object v0, Lo/NetworkOnMainThreadException;->f:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 152
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static e(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 313
    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 315
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 316
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 320
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 323
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 330
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method private j(I)V
    .locals 3

    .line 665
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-static {v0}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    .line 666
    invoke-virtual {v1}, Lo/NetworkOnMainThreadException$StateListAnimator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lo/InputStream;->e(F)Lo/InputStream;

    move-result-object v0

    sget-object v1, Lo/NetworkOnMainThreadException;->b:Landroid/view/animation/Interpolator;

    .line 667
    invoke-virtual {v0, v1}, Lo/InputStream;->e(Landroid/view/animation/Interpolator;)Lo/InputStream;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 668
    invoke-virtual {v0, v1, v2}, Lo/InputStream;->d(J)Lo/InputStream;

    move-result-object v0

    new-instance v1, Lo/NetworkOnMainThreadException$8;

    invoke-direct {v1, p0, p1}, Lo/NetworkOnMainThreadException$8;-><init>(Lo/NetworkOnMainThreadException;I)V

    .line 669
    invoke-virtual {v0, v1}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    move-result-object p1

    .line 679
    invoke-virtual {p1}, Lo/InputStream;->a()V

    return-void
.end method


# virtual methods
.method protected a()Lo/NetworkOnMainThreadException$StateListAnimator;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    return-object v0
.end method

.method public a(I)Lo/NetworkOnMainThreadException;
    .locals 0

    .line 465
    iput p1, p0, Lo/NetworkOnMainThreadException;->j:I

    return-object p0
.end method

.method public a(ILandroid/view/View$OnClickListener;)Lo/NetworkOnMainThreadException;
    .locals 1

    .line 346
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/NetworkOnMainThreadException;->c(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lo/NetworkOnMainThreadException;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/NetworkOnMainThreadException$Application;)Lo/NetworkOnMainThreadException;
    .locals 0

    .line 517
    iput-object p1, p0, Lo/NetworkOnMainThreadException;->k:Lo/NetworkOnMainThreadException$Application;

    return-object p0
.end method

.method public b(I)Lo/NetworkOnMainThreadException;
    .locals 1

    .line 421
    iget v0, p0, Lo/NetworkOnMainThreadException;->e:I

    if-eq v0, p1, :cond_0

    .line 422
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/NetworkOnMainThreadException$StateListAnimator;->setBackgroundColor(I)V

    .line 423
    iput p1, p0, Lo/NetworkOnMainThreadException;->e:I

    :cond_0
    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x3

    .line 505
    invoke-virtual {p0, v0}, Lo/NetworkOnMainThreadException;->c(I)V

    return-void
.end method

.method protected c()Landroid/view/ViewGroup;
    .locals 1

    .line 229
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public c(Landroid/graphics/Typeface;)Lo/NetworkOnMainThreadException;
    .locals 1

    .line 403
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->d()Lo/ImageSwitcher;

    move-result-object v0

    .line 404
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lo/NetworkOnMainThreadException;
    .locals 1

    .line 441
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v0

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lo/NetworkOnMainThreadException;
    .locals 2

    .line 358
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->d()Lo/ImageSwitcher;

    move-result-object v0

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p1, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    new-instance v0, Lo/NetworkOnMainThreadException$5;

    invoke-direct {v0, p0, p2}, Lo/NetworkOnMainThreadException$5;-><init>(Lo/NetworkOnMainThreadException;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 362
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p0
.end method

.method c(I)V
    .locals 2

    .line 509
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1, p1}, Lo/Message;->b(Lo/Message$Activity;I)V

    return-void
.end method

.method final c(Z)V
    .locals 4

    .line 549
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 550
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 552
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    if-eqz v1, :cond_0

    .line 554
    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    .line 556
    new-instance v2, Lo/NetworkOnMainThreadException$ActionBar;

    invoke-direct {v2, p0}, Lo/NetworkOnMainThreadException$ActionBar;-><init>(Lo/NetworkOnMainThreadException;)V

    .line 557
    new-instance v3, Lo/NetworkOnMainThreadException$4;

    invoke-direct {v3, p0}, Lo/NetworkOnMainThreadException$4;-><init>(Lo/NetworkOnMainThreadException;)V

    invoke-virtual {v2, v3}, Lo/NetworkOnMainThreadException$ActionBar;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    .line 579
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;)V

    const/16 v2, 0x50

    .line 581
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->j:I

    .line 584
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 585
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lo/NetworkOnMainThreadException;->a:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 588
    :cond_1
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 591
    :cond_2
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    new-instance v1, Lo/NetworkOnMainThreadException$2;

    invoke-direct {v1, p0}, Lo/NetworkOnMainThreadException$2;-><init>(Lo/NetworkOnMainThreadException;)V

    invoke-virtual {v0, v1}, Lo/NetworkOnMainThreadException$StateListAnimator;->b(Lo/NetworkOnMainThreadException$StateListAnimator$ActionBar;)V

    .line 612
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-static {v0}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 613
    invoke-virtual {p0}, Lo/NetworkOnMainThreadException;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 615
    invoke-virtual {p0}, Lo/NetworkOnMainThreadException;->f()V

    goto :goto_0

    .line 618
    :cond_3
    invoke-virtual {p0}, Lo/NetworkOnMainThreadException;->h()V

    goto :goto_0

    .line 622
    :cond_4
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    new-instance v1, Lo/NetworkOnMainThreadException$9;

    invoke-direct {v1, p0, p1}, Lo/NetworkOnMainThreadException$9;-><init>(Lo/NetworkOnMainThreadException;Z)V

    invoke-virtual {v0, v1}, Lo/NetworkOnMainThreadException$StateListAnimator;->d(Lo/NetworkOnMainThreadException$StateListAnimator$StateListAnimator;)V

    :goto_0
    return-void
.end method

.method public d(I)Lo/NetworkOnMainThreadException;
    .locals 0

    .line 430
    iput p1, p0, Lo/NetworkOnMainThreadException;->a:I

    return-object p0
.end method

.method public d(Z)V
    .locals 3

    .line 498
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget v1, p0, Lo/NetworkOnMainThreadException;->j:I

    iget-object v2, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1, v2, p1}, Lo/Message;->b(ILo/Message$Activity;Z)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 525
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1}, Lo/Message;->c(Lo/Message$Activity;)Z

    move-result v0

    return v0
.end method

.method final e(I)V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lo/NetworkOnMainThreadException;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 684
    invoke-direct {p0, p1}, Lo/NetworkOnMainThreadException;->j(I)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p0, p1}, Lo/NetworkOnMainThreadException;->g(I)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 533
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1}, Lo/Message;->j(Lo/Message$Activity;)Z

    move-result v0

    return v0
.end method

.method f()V
    .locals 3

    .line 645
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/FilterWriter;->c(Landroid/view/View;F)V

    .line 646
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-static {v0}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 647
    invoke-virtual {v0, v1}, Lo/InputStream;->e(F)Lo/InputStream;

    move-result-object v0

    sget-object v1, Lo/NetworkOnMainThreadException;->b:Landroid/view/animation/Interpolator;

    .line 648
    invoke-virtual {v0, v1}, Lo/InputStream;->e(Landroid/view/animation/Interpolator;)Lo/InputStream;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 649
    invoke-virtual {v0, v1, v2}, Lo/InputStream;->d(J)Lo/InputStream;

    move-result-object v0

    new-instance v1, Lo/NetworkOnMainThreadException$10;

    invoke-direct {v1, p0}, Lo/NetworkOnMainThreadException$10;-><init>(Lo/NetworkOnMainThreadException;)V

    .line 650
    invoke-virtual {v0, v1}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lo/InputStream;->a()V

    return-void
.end method

.method g(I)V
    .locals 4

    const/4 v0, 0x0

    .line 702
    invoke-direct {p0, v0}, Lo/NetworkOnMainThreadException;->b(Z)V

    .line 704
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1}, Lo/Message;->a(Lo/Message$Activity;)V

    .line 706
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->k:Lo/NetworkOnMainThreadException$Application;

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, p0, p1}, Lo/NetworkOnMainThreadException$Application;->e(Lo/NetworkOnMainThreadException;I)V

    .line 710
    :cond_0
    iget-object p1, p0, Lo/NetworkOnMainThreadException;->g:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException$StateListAnimator;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 711
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 712
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lo/NetworkOnMainThreadException$7;

    invoke-direct {v1, p0, p1}, Lo/NetworkOnMainThreadException$7;-><init>(Lo/NetworkOnMainThreadException;Landroid/view/ViewParent;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method h()V
    .locals 2

    .line 692
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1}, Lo/Message;->e(Lo/Message$Activity;)V

    .line 693
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->k:Lo/NetworkOnMainThreadException$Application;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0, p0}, Lo/NetworkOnMainThreadException$Application;->d(Lo/NetworkOnMainThreadException;)V

    :cond_0
    const/4 v0, 0x1

    .line 697
    invoke-direct {p0, v0}, Lo/NetworkOnMainThreadException;->b(Z)V

    return-void
.end method

.method j()Z
    .locals 1

    .line 747
    iget-object v0, p0, Lo/NetworkOnMainThreadException;->n:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
