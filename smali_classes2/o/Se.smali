.class public Lo/Se;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Se$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/Se;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field a:Lo/HwBlob;

.field c:Landroid/content/Context;

.field e:Lo/BC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lo/Se;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/Se;-><init>(Landroid/content/Context;Lo/BC;)V

    sput-object v0, Lo/Se;->b:Lo/Se;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/BC;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/Se;->c:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lo/Se;->e:Lo/BC;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;Lo/BC;)Lo/HwBlob;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Lo/HwParcel;

    invoke-direct {v0, p1, p0}, Lo/HwParcel;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nU:I

    .line 281
    invoke-virtual {v0, p0}, Lo/HwParcel;->b(I)Lo/HwParcel;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nL:I

    .line 282
    invoke-virtual {p0, v0}, Lo/HwParcel;->a(I)Lo/HwParcel;

    move-result-object p0

    new-instance v0, Lo/HwRemoteBinder;

    const-string v1, "USER_TUTORIAL_DOWNLOAD_BUTTON"

    .line 283
    invoke-static {v1, p2}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lo/HwRemoteBinder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/HwParcel;->d(Lo/HidlSupport;)Lo/HwParcel;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Lo/HwParcel;->d()Lo/HwBlob;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lo/Se;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/Se;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lo/Se;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .line 320
    const-class v0, Lo/fv;

    invoke-static {v0, p0}, Lo/cS;->c(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object p0

    .line 321
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_4:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;
    .locals 1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lo/Se$StateListAnimator;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lo/Se;->a:Lo/HwBlob;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    if-eqz v0, :cond_2

    .line 250
    invoke-interface {p1, v0}, Lo/Se$StateListAnimator;->b(Lo/BC;)Lo/HwBlob;

    move-result-object p1

    iput-object p1, p0, Lo/Se;->a:Lo/HwBlob;

    .line 252
    :cond_2
    invoke-virtual {p0}, Lo/Se;->c()V

    return-void
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 6

    .line 127
    invoke-static {p2}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    .line 129
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 130
    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 134
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->bl:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x4

    .line 137
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const v2, 0x1020002

    .line 139
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTabsAndSystemNavHeight()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_1

    .line 141
    :cond_1
    iget-object v2, p0, Lo/Se;->c:Landroid/content/Context;

    invoke-static {v2}, Lo/adq;->h(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    .line 145
    :goto_1
    iget-object v4, p0, Lo/Se;->a:Lo/HwBlob;

    new-instance v5, Lo/Se$2;

    invoke-direct {v5, p0, p1, v3, v0}, Lo/Se$2;-><init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;ZLcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v4, v5}, Lo/HwBlob;->setOnTooltipLayoutChangeListener(Lo/HwBinder;)V

    sub-int/2addr p2, v2

    if-lez p2, :cond_2

    .line 165
    new-instance v2, Lo/Se$5;

    invoke-direct {v2, p0, p1, v0}, Lo/Se$5;-><init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 175
    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Z:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 176
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 178
    :cond_2
    invoke-direct {p0, v0}, Lo/Se;->e(Landroid/app/Activity;)V

    :goto_2
    return-void
.end method

.method static synthetic d(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lo/Se;->e(Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V

    return-void
.end method

.method static synthetic d(Lo/Se;Lo/Se$StateListAnimator;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/Se;->b(Lo/Se$StateListAnimator;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1

    .line 310
    const-class v0, Lo/fv;

    invoke-static {v0, p0}, Lo/cS;->c(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object p0

    .line 311
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_5:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Lo/Am;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Lo/Am;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/view/View;Landroid/app/Activity;Lo/BC;)Lo/HwBlob;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    new-instance v0, Lo/HwParcel;

    invoke-direct {v0, p1, p0}, Lo/HwParcel;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nU:I

    .line 294
    invoke-virtual {v0, p0}, Lo/HwParcel;->b(I)Lo/HwParcel;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nR:I

    .line 295
    invoke-virtual {p0, v0}, Lo/HwParcel;->a(I)Lo/HwParcel;

    move-result-object p0

    new-instance v0, Lo/HwRemoteBinder;

    const-string v1, "USER_TUTORIAL_MY_DOWNLOADS_BUTTON"

    .line 296
    invoke-static {v1, p2}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lo/HwRemoteBinder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/HwParcel;->d(Lo/HidlSupport;)Lo/HwParcel;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Lo/HwParcel;->d()Lo/HwBlob;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Landroid/app/Activity;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lo/Se;->a:Lo/HwBlob;

    if-eqz v0, :cond_0

    const v0, 0x1020002

    .line 263
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lo/Se;->a:Lo/HwBlob;

    invoke-virtual {v0, p1}, Lo/HwBlob;->a(Landroid/view/ViewGroup;)Z

    :cond_0
    return-void
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    new-instance v0, Lo/Se$3;

    invoke-direct {v0, p0, p1, p2}, Lo/Se$3;-><init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 119
    sget-object p2, Lo/HwRemoteBinder;->d:Lo/HwRemoteBinder$Activity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/Se;->e:Lo/BC;

    const-string v2, "USER_TUTORIAL_DOWNLOAD_BUTTON"

    invoke-static {v2, v1}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lo/HwRemoteBinder$Activity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 120
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lo/Se$StateListAnimator;Lo/Bc;Landroidx/recyclerview/widget/RecyclerView;Lo/Am;)V
    .locals 2

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    .line 187
    invoke-static {v0}, Lo/HwParcel;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    .line 189
    invoke-static {v0}, Lo/Se;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 191
    invoke-interface {p2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {p2}, Lo/Bc;->bb()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 193
    invoke-static {p4}, Lo/Se;->d(Lo/Am;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lo/HwRemoteBinder;->d:Lo/HwRemoteBinder$Activity;

    .line 194
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    const-string v1, "USER_TUTORIAL_DOWNLOAD_BUTTON"

    .line 195
    invoke-static {v1, v0}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p2, p4, v0}, Lo/HwRemoteBinder$Activity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p4, Lo/Se$1;

    invoke-direct {p4, p0, p3, p1}, Lo/Se$1;-><init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V

    invoke-virtual {p2, p4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 218
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    if-eqz p1, :cond_1

    .line 219
    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 220
    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$5;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$5;-><init>(Lo/Se;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lo/Am;)Z
    .locals 4

    .line 71
    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/Se;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo/Se;->d(Lo/Am;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/Se;->c:Landroid/content/Context;

    const-string v0, "com.netflix.android.fullscreen_tutorial"

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    const-string v3, "USER_TUTORIAL_FULLSCREEN"

    invoke-static {v3, v0}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public c()V
    .locals 1

    .line 256
    iget-object v0, p0, Lo/Se;->a:Lo/HwBlob;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lo/HwBlob;->a()V

    :cond_0
    return-void
.end method

.method public c(Lo/Se$StateListAnimator;Lo/Am;)V
    .locals 1

    .line 237
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/HwParcel;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    .line 238
    invoke-static {v0}, Lo/Se;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lo/Se;->d(Lo/Am;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lo/Se;->b(Lo/Se$StateListAnimator;)V

    .line 244
    iget-object p1, p0, Lo/Se;->c:Landroid/content/Context;

    const-class p2, Landroid/app/Activity;

    invoke-static {p1, p2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 245
    invoke-direct {p0, p1}, Lo/Se;->e(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Se;->e:Lo/BC;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "com.netflix.android.fullscreen_tutorial"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lo/Se;->e:Lo/BC;

    const-string v2, "USER_TUTORIAL_DOWNLOADS_FOR_YOU"

    invoke-static {v2, v1}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 79
    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Se;->e:Lo/BC;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "com.netflix.android.fullscreen_tutorial"

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lo/Se;->e:Lo/BC;

    const-string v2, "USER_TUTORIAL_FULLSCREEN"

    invoke-static {v2, v1}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public e(Lo/Am;)Z
    .locals 4

    .line 85
    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Se;->c:Landroid/content/Context;

    .line 89
    invoke-static {v0}, Lo/Se;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p1}, Lo/Se;->d(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0, p1}, Lo/Se;->b(Lo/Am;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/Se;->c:Landroid/content/Context;

    const-string v0, "com.netflix.android.fullscreen_tutorial"

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lo/Se;->e:Lo/BC;

    const-string v3, "USER_TUTORIAL_DOWNLOADS_FOR_YOU"

    invoke-static {v3, v0}, Lo/Se;->b(Ljava/lang/String;Lo/BC;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
