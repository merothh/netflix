.class public Lo/OnDateChangedListener;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OnDateChangedListener$Application;
    }
.end annotation


# static fields
.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/ProgressBar;

.field protected e:Landroid/widget/SearchView;

.field private f:Landroid/widget/EditText;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Z

.field private i:Ljava/lang/Long;

.field private j:Ljava/lang/Long;

.field private k:Landroid/widget/ImageView;

.field private l:I

.field private m:Lo/Channel;

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 68
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/OnDateChangedListener;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;Lo/OnDateChangedListener$Application;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;)V

    .line 77
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lo/OnDateChangedListener;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-boolean p3, p0, Lo/OnDateChangedListener;->h:Z

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    .line 82
    iput-object p2, p0, Lo/OnDateChangedListener;->j:Ljava/lang/Long;

    .line 91
    iput p3, p0, Lo/OnDateChangedListener;->l:I

    .line 93
    iput p3, p0, Lo/OnDateChangedListener;->o:I

    .line 96
    new-instance p2, Lo/OnDateChangedListener$2;

    invoke-direct {p2, p0}, Lo/OnDateChangedListener$2;-><init>(Lo/OnDateChangedListener;)V

    iput-object p2, p0, Lo/OnDateChangedListener;->m:Lo/Channel;

    .line 109
    const-class p2, Lo/v;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/v;

    invoke-interface {p2, p1}, Lo/v;->e(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lo/OnDateChangedListener;->n:Z

    .line 111
    invoke-direct {p0}, Lo/OnDateChangedListener;->B()V

    .line 113
    invoke-direct {p0}, Lo/OnDateChangedListener;->A()V

    .line 114
    invoke-direct {p0, p1}, Lo/OnDateChangedListener;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 116
    invoke-direct {p0}, Lo/OnDateChangedListener;->C()V

    .line 117
    invoke-direct {p0}, Lo/OnDateChangedListener;->y()V

    .line 119
    new-instance p1, Lo/OnDateChangedListener$4;

    invoke-direct {p1, p0}, Lo/OnDateChangedListener$4;-><init>(Lo/OnDateChangedListener;)V

    invoke-direct {p0, p1}, Lo/OnDateChangedListener;->a(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private A()V
    .locals 4

    .line 342
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x2000003

    .line 346
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 347
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lo/OnDateChangedListener;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pP:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setInputType(I)V

    .line 349
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 350
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 351
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 352
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 354
    invoke-static {}, Lo/eo;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "android:id/search_mag_icon"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 356
    iget-object v3, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 360
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "android:id/search_close_btn"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 365
    iget-object v2, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private B()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lo/OnDateChangedListener;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lo/OnDateChangedListener;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    .line 324
    iget-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 325
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    .line 326
    iget-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aB:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/OnDateChangedListener;->l:I

    .line 327
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/OnDateChangedListener;->o:I

    .line 330
    :cond_0
    iget-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/OnDateChangedListener;->b:Landroid/widget/ProgressBar;

    .line 332
    new-instance v0, Lo/Fragment$StateListAnimator;

    const v1, 0x800003

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Lo/Fragment$StateListAnimator;-><init>(III)V

    .line 333
    iget-object v1, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lo/OnDateChangedListener;->d(Landroid/view/View;Lo/Fragment$StateListAnimator;)V

    :cond_1
    return-void
.end method

.method private C()V
    .locals 4

    .line 373
    invoke-virtual {p0}, Lo/OnDateChangedListener;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:id/search_src_text"

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 374
    iget-object v1, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    .line 375
    iget-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lo/OnDateChangedListener;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 377
    iget-object v1, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->ak:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 378
    invoke-virtual {p0}, Lo/OnDateChangedListener;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$LoaderManager;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 379
    iget-object v3, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 380
    iget-object v2, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 381
    iget-object v1, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 382
    iget-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 383
    iget-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 384
    iget-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lo/OnDateChangedListener;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lo/TwoLineListItem;->e(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/OnDateChangedListener;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/OnDateChangedListener;->j:Ljava/lang/Long;

    return-object p1
.end method

.method private a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "search"

    .line 308
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 309
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    .line 310
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    return-void
.end method

.method static synthetic d(Lo/OnDateChangedListener;)Ljava/lang/Long;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/OnDateChangedListener;->j:Ljava/lang/Long;

    return-object p0
.end method

.method private d(JLo/ApfStats;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 267
    invoke-virtual {p3}, Lo/ApfStats;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lo/ApfStats;->c()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/OnDateChangedListener;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 3

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 272
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "SearchActionBar"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.speech.extra"

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Voice search"

    .line 275
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "Not voice search?"

    .line 280
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic e(Lo/OnDateChangedListener;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/OnDateChangedListener;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lo/OnDateChangedListener;JLo/ApfStats;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lo/OnDateChangedListener;->d(JLo/ApfStats;)Z

    move-result p0

    return p0
.end method

.method static synthetic u()Landroid/view/animation/Interpolator;
    .locals 1

    .line 62
    sget-object v0, Lo/OnDateChangedListener;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private y()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lo/OnDateChangedListener;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:id/search_voice_btn"

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 288
    iget-object v2, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/OnDateChangedListener;->k:Landroid/widget/ImageView;

    .line 290
    iget-object v0, p0, Lo/OnDateChangedListener;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "SPY-8468 - Voice search not available. SearchView doesn\'t have view with id search_voice_btn"

    const-string v1, "SearchActionBar"

    .line 292
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    .line 297
    :cond_0
    iget-boolean v2, p0, Lo/OnDateChangedListener;->n:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lo/OnDateChangedListener;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_1
    invoke-static {}, Lo/eo;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 303
    iget-object v1, p0, Lo/OnDateChangedListener;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 5

    .line 144
    iget-boolean v0, p0, Lo/OnDateChangedListener;->h:Z

    if-eq v0, p1, :cond_5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "SearchActionBar"

    const-string v3, "setSearchViewFocused: %b->%b"

    invoke-static {v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    iput-boolean p1, p0, Lo/OnDateChangedListener;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lo/OnDateChangedListener;->r()Z

    .line 151
    iget-object v1, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v3, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 154
    :cond_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v4, Lcom/netflix/cl/model/AppView;->searchBox:Lcom/netflix/cl/model/AppView;

    invoke-direct {v3, v4, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 157
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v3, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 158
    iput-object v0, p0, Lo/OnDateChangedListener;->i:Ljava/lang/Long;

    .line 159
    invoke-virtual {p0}, Lo/OnDateChangedListener;->w()V

    .line 162
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_5

    invoke-static {}, Lo/eo;->g()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 163
    :cond_3
    iget v0, p0, Lo/OnDateChangedListener;->l:I

    :goto_1
    if-eqz p1, :cond_4

    .line 164
    iget v2, p0, Lo/OnDateChangedListener;->o:I

    :cond_4
    add-int/2addr v2, v0

    .line 165
    iget-object p1, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    iget-object v1, p0, Lo/OnDateChangedListener;->m:Lo/Channel;

    invoke-static {p1, v1}, Lo/Watchable;->d(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V

    .line 166
    iget-object p1, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    invoke-virtual {p1, v0, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public e(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 5

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "query"

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "submit"

    .line 188
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 189
    iget-object v3, p0, Lo/OnDateChangedListener;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1}, Lo/OnDateChangedListener;->d(Landroid/content/Intent;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    iget-object v3, p0, Lo/OnDateChangedListener;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-static {p2}, Lo/adq;->e(Landroid/app/Activity;)V

    const-string p2, "android.speech.extra.CONFIDENCE_SCORES"

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object p1

    .line 195
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/context/VoiceInput;

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    aget p1, p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lcom/netflix/cl/model/context/VoiceInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p2, v3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 200
    :cond_1
    invoke-static {}, Lo/eo;->g()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v0, v1}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    .line 430
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public k()Landroid/view/View;
    .locals 1

    .line 338
    iget-object v0, p0, Lo/OnDateChangedListener;->a:Landroid/view/View;

    return-object v0
.end method

.method public l()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/ApfStats;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-static {}, Lo/eo;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lo/eo;->f()J

    move-result-wide v0

    goto :goto_0

    .line 214
    :cond_0
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/fr;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v2

    invoke-static {v2}, Lo/ApfProgramEvent;->a(Landroid/widget/SearchView;)Lo/SntpClient;

    move-result-object v2

    new-instance v3, Lo/OnDateChangedListener$3;

    invoke-direct {v3, p0, v0, v1}, Lo/OnDateChangedListener$3;-><init>(Lo/OnDateChangedListener;J)V

    .line 219
    invoke-virtual {v2, v3}, Lo/SntpClient;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lo/OnDateChangedListener$5;

    invoke-direct {v3, p0, v0, v1}, Lo/OnDateChangedListener$5;-><init>(Lo/OnDateChangedListener;J)V

    .line 239
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->debounce(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/OnDateChangedListener$1;

    invoke-direct {v1, p0}, Lo/OnDateChangedListener$1;-><init>(Lo/OnDateChangedListener;)V

    .line 254
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doAfterNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final m()Landroid/widget/SearchView;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    return-object v0
.end method

.method protected n()I
    .locals 1

    .line 314
    invoke-static {}, Lo/eo;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-class v0, Lo/n;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/n;

    invoke-interface {v0}, Lo/n;->e()I

    move-result v0

    return v0

    .line 317
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->c:I

    return v0
.end method

.method public p()V
    .locals 2

    .line 389
    iget-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 393
    :cond_0
    invoke-virtual {p0, v1}, Lo/OnDateChangedListener;->c(Z)V

    return-void
.end method

.method protected q()I
    .locals 1

    .line 405
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->P:I

    return v0
.end method

.method public r()Z
    .locals 4

    const/4 v0, 0x0

    .line 413
    :try_start_0
    iget-object v1, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 415
    invoke-static {}, Lo/aek;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v3, "SPY-19091: Guard against NPE. Known issue only on Samsung galaxy running Android-9"

    invoke-interface {v2, v3, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .locals 2

    .line 397
    iget-object v0, p0, Lo/OnDateChangedListener;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 401
    :cond_0
    invoke-virtual {p0, v1}, Lo/OnDateChangedListener;->c(Z)V

    return-void
.end method

.method public v()V
    .locals 2

    .line 463
    iget-object v0, p0, Lo/OnDateChangedListener;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 3

    .line 443
    :try_start_0
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 444
    iget-object v0, p0, Lo/OnDateChangedListener;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 449
    invoke-static {}, Lo/aek;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-19091: Guard against NPE. Known issue only on Samsung galaxy running Android-9"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public x()V
    .locals 2

    .line 457
    iget-object v0, p0, Lo/OnDateChangedListener;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
