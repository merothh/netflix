.class public Lo/PS;
.super Lo/Aj;
.source ""


# static fields
.field protected static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/view/ViewGroup;

.field protected d:Lo/QS;

.field private final e:Z

.field private final i:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/PS;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lo/Aj;-><init>()V

    .line 78
    new-instance v0, Lo/PS$4;

    invoke-direct {v0, p0}, Lo/PS$4;-><init>(Lo/PS;)V

    iput-object v0, p0, Lo/PS;->i:Landroid/view/View$OnClickListener;

    .line 98
    iput-boolean p2, p0, Lo/PS;->e:Z

    .line 99
    iput-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic a(Lo/PS;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/PS;->b()V

    return-void
.end method

.method private a(ZLo/Bk;)V
    .locals 2

    .line 160
    iget-object v0, p2, Lo/Bk;->c:Ljava/lang/String;

    iget-boolean v1, p2, Lo/Bk;->d:Z

    if-eqz v1, :cond_0

    iget p2, p2, Lo/Bk;->b:I

    if-lez p2, :cond_0

    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->s:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->t:I

    .line 161
    :goto_0
    invoke-direct {p0, v0, p2}, Lo/PS;->c(Ljava/lang/String;I)Lo/QS;

    move-result-object p2

    iput-object p2, p0, Lo/PS;->d:Lo/QS;

    .line 165
    iget-object p2, p0, Lo/PS;->d:Lo/QS;

    if-eqz p2, :cond_2

    .line 166
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "nf-icon.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/QS;->c(Landroid/graphics/Typeface;)Lo/NetworkOnMainThreadException;

    .line 167
    iget-object p2, p0, Lo/PS;->d:Lo/QS;

    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ds:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dx:I

    :goto_1
    iget-object v1, p0, Lo/PS;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0, v1}, Lo/QS;->a(ILandroid/view/View$OnClickListener;)Lo/NetworkOnMainThreadException;

    .line 168
    iget-object p2, p0, Lo/PS;->d:Lo/QS;

    invoke-virtual {p2}, Lo/QS;->d()Z

    move-result p2

    if-nez p2, :cond_2

    .line 169
    iget-object p2, p0, Lo/PS;->d:Lo/QS;

    invoke-virtual {p2, p1}, Lo/QS;->d(Z)V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/PS;->d:Lo/QS;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lo/QS;->b()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lo/PS;->d:Lo/QS;

    :cond_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 268
    invoke-static {p1, v0}, Lo/RL;->c(Landroid/content/Context;Z)V

    .line 269
    invoke-static {p1}, Lo/RL;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lo/PS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lo/PS;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private c()I
    .locals 11

    .line 592
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 593
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 596
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Lo/Rq;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/Bi;

    .line 601
    sget-object v9, Lo/PS;->b:Ljava/util/List;

    invoke-interface {v8}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 606
    invoke-interface {v8}, Lo/Bi;->x()J

    move-result-wide v9

    add-long/2addr v6, v9

    .line 607
    invoke-interface {v8}, Lo/Bi;->w()J

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    const-wide/16 v0, 0x64

    mul-long v6, v6, v0

    .line 611
    div-long/2addr v6, v4

    long-to-int v1, v6

    goto :goto_1

    :cond_2
    const/16 v1, 0x64

    :cond_3
    :goto_1
    return v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 274
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\ud83d\udca5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 277
    iget-object p1, p0, Lo/PS;->a:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->aG:I

    invoke-static {p1, v2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/PS;->a:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object p1, p0, Lo/PS;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    invoke-static {p1, v2}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 281
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->V:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 282
    iget-object v2, p0, Lo/PS;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    :cond_0
    new-instance p1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Lo/PS;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    const/16 v3, 0x11

    .line 287
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method

.method private c(Ljava/lang/String;I)Lo/QS;
    .locals 7

    .line 191
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ActivityPageOfflineAgentListener"

    if-eqz v0, :cond_5

    .line 192
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lo/q;

    .line 194
    invoke-static {v5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/q;

    invoke-interface {v5, v0}, Lo/q;->d(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 196
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCastPlayerShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "No buffetBar while MDX mini player display"

    .line 197
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 201
    :cond_0
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 202
    instance-of v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v6, :cond_4

    .line 204
    iget-object v4, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    .line 206
    invoke-direct {p0, p1}, Lo/PS;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 208
    iget-object v4, p0, Lo/PS;->d:Lo/QS;

    if-nez v4, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lo/IHwInterface$Activity;->e:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    const/4 v4, -0x2

    .line 212
    invoke-static {v5, p1, p2, v1, v4}, Lo/QS;->e(Landroid/view/View;Ljava/lang/CharSequence;III)Lo/QS;

    move-result-object v1

    iput-object v1, p0, Lo/PS;->d:Lo/QS;

    .line 214
    :cond_2
    iget-object v1, p0, Lo/PS;->d:Lo/QS;

    if-nez v1, :cond_3

    return-object v3

    .line 218
    :cond_3
    invoke-virtual {v1, p1}, Lo/QS;->c(Ljava/lang/CharSequence;)Lo/NetworkOnMainThreadException;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/NetworkOnMainThreadException;->b(I)Lo/NetworkOnMainThreadException;

    .line 219
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    invoke-direct {p0}, Lo/PS;->c()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Lo/QS;->c(IZ)V

    .line 222
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    new-instance p2, Lo/PS$2;

    invoke-direct {p2, p0, v0, v5}, Lo/PS$2;-><init>(Lo/PS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lo/QS;->a(Lo/NetworkOnMainThreadException$Application;)Lo/NetworkOnMainThreadException;

    .line 253
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    return-object p1

    .line 256
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SPY-10658 : No suitable parent found to attach buffetBar, current activity is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "No buffetBar to display as activity is finishing (or in PlayerActivity). Current activity is %s"

    .line 261
    invoke-static {v4, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v3
.end method

.method static synthetic e(Lo/PS;)I
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/PS;->c()I

    move-result p0

    return p0
.end method

.method private e(Lo/nS;)Lo/Bk;
    .locals 2

    .line 150
    :try_start_0
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    iget-object v1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/Rq;->c(Landroid/content/Context;Lo/nS;)Lo/Bk;

    move-result-object p1
    :try_end_0
    .catch Lcom/ibm/icu/impl/IllegalIcuArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ActivityPageOfflineAgentListener"

    const-string v1, "Bad message, dismiss snack-bar and logging exception"

    .line 152
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 154
    invoke-direct {p0}, Lo/PS;->b()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 3

    .line 580
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 333
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 339
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_0
    invoke-virtual {v0, v2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 343
    :cond_2
    iget-object v2, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lo/RL;->c(Landroid/content/Context;Z)V

    .line 345
    invoke-virtual {p0, v1, v1}, Lo/PS;->d(ZZ)V

    .line 347
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 351
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {p0}, Lo/PS;->e()V

    if-eqz v0, :cond_5

    .line 356
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v1, :cond_4

    .line 358
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a()V

    goto :goto_1

    .line 359
    :cond_4
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->aX:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, p2, :cond_5

    .line 360
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/PY;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 468
    iget-object p2, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 473
    sget-object v0, Lo/PS;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_1

    .line 476
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 477
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 480
    invoke-virtual {p0, p1, p2}, Lo/PS;->d(ZZ)V

    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 3

    .line 368
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_2

    .line 374
    invoke-interface {p1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_1

    .line 375
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 382
    invoke-virtual {p0, p1, p2}, Lo/PS;->d(ZZ)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 563
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 564
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 565
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 2

    .line 549
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 552
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mT:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/adk;->c(II)V

    .line 554
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_1

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 539
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/PS;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 485
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 489
    :cond_0
    sget-object p1, Lo/PS;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 491
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->c(Landroid/content/Context;)V

    .line 492
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const-string v2, "download_btn"

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 495
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j()V

    .line 497
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 498
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v1, :cond_1

    .line 499
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, p1, v0}, Lo/PS;->d(ZZ)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 2

    .line 451
    iget-object p2, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_btn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 457
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 459
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    if-nez p3, :cond_3

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 462
    invoke-virtual {p0, p1, p2}, Lo/PS;->d(ZZ)V

    :cond_3
    return-void
.end method

.method public d(Lo/Bi;)V
    .locals 1

    .line 407
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/RL;->c(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    .line 411
    invoke-virtual {p0, p1, p1}, Lo/PS;->d(ZZ)V

    .line 412
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p1}, Lo/QS;->k()V

    :cond_1
    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 544
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/PS;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    .line 419
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v1, :cond_4

    .line 428
    sget-object p2, Lo/he;->a:Lo/he$Application;

    invoke-virtual {p2}, Lo/he$Application;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 429
    invoke-static {p1}, Lo/RL;->e(Lo/Bi;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 430
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 432
    :goto_0
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :cond_3
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 440
    :cond_4
    :goto_1
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/RL;->c(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    .line 441
    invoke-virtual {p0, p1, p1}, Lo/PS;->d(ZZ)V

    .line 443
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    if-eqz p1, :cond_5

    .line 444
    invoke-virtual {p1}, Lo/QS;->l()V

    .line 445
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    invoke-virtual {p1}, Lo/QS;->g()V

    :cond_5
    return-void
.end method

.method protected d(ZZ)V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowDownloadProgressBar()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-boolean v1, p0, Lo/PS;->e:Z

    if-nez v1, :cond_1

    return-void

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 120
    :cond_2
    iget-object v1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/RL;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/PS;->d:Lo/QS;

    if-nez v1, :cond_3

    return-void

    .line 125
    :cond_3
    invoke-direct {p0, v0}, Lo/PS;->e(Lo/nS;)Lo/Bk;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 127
    invoke-direct {p0, p1, v0}, Lo/PS;->a(ZLo/Bk;)V

    .line 130
    iget-boolean p1, v0, Lo/Bk;->d:Z

    if-eqz p1, :cond_4

    .line 131
    sget-object p1, Lo/PS;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 134
    :cond_4
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    if-eqz p1, :cond_7

    if-nez p2, :cond_5

    .line 136
    invoke-virtual {p1}, Lo/QS;->i()V

    .line 139
    :cond_5
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    invoke-direct {p0}, Lo/PS;->c()I

    move-result p2

    iget-boolean v0, v0, Lo/Bk;->a:Z

    invoke-virtual {p1, p2, v0}, Lo/QS;->c(IZ)V

    goto :goto_0

    :cond_6
    const-string p1, "ActivityPageOfflineAgentListener"

    const-string p2, "no message, dismiss snack-bar"

    .line 142
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lo/PS;->b()V

    :cond_7
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0, v0}, Lo/PS;->d(ZZ)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 507
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    sget-object v0, Lo/PS$1;->b:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 525
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/RL;->c(Landroid/content/Context;Z)V

    .line 526
    invoke-virtual {p0, v1, v0}, Lo/PS;->d(ZZ)V

    goto :goto_0

    .line 520
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/PY;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 515
    :cond_2
    iget-object p1, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lo/PY;->d(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 530
    :goto_0
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    if-eqz p1, :cond_3

    .line 531
    invoke-virtual {p1}, Lo/QS;->i()V

    .line 532
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    invoke-virtual {p1}, Lo/QS;->l()V

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowDownloadProgressBar()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 302
    invoke-direct {p0, v1}, Lo/PS;->e(Lo/nS;)Lo/Bk;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {v0}, Lo/RL;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nm:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Lo/Bk;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    .line 310
    :cond_1
    sget-object v0, Lo/PS;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    sget-object v0, Lo/PS;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_2
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/QS;->d()Z

    move-result p1

    if-nez p1, :cond_4

    .line 316
    :cond_3
    invoke-direct {p0, v2, v1}, Lo/PS;->a(ZLo/Bk;)V

    .line 319
    :cond_4
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    if-eqz p1, :cond_5

    .line 320
    iget-object v0, v1, Lo/Bk;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/PS;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/QS;->c(Ljava/lang/CharSequence;)Lo/NetworkOnMainThreadException;

    .line 321
    iget-object p1, p0, Lo/PS;->d:Lo/QS;

    invoke-virtual {p1}, Lo/QS;->o()V

    :cond_5
    return-void
.end method

.method protected e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 569
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_2

    .line 574
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_0
    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 575
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_1

    .line 393
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 396
    :cond_1
    iget-object v0, p0, Lo/PS;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/RL;->c(Landroid/content/Context;Z)V

    .line 398
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 402
    invoke-virtual {p0, p1, v1}, Lo/PS;->d(ZZ)V

    return-void
.end method
