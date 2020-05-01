.class public Lo/Uf;
.super Lo/TZ;
.source ""


# instance fields
.field protected b:I

.field protected d:Lo/RemoteViewsListAdapter;

.field private final f:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lo/Uf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/TZ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/Uf;->f:Landroid/view/animation/DecelerateInterpolator;

    const/16 p1, 0x2710

    .line 48
    iput p1, p0, Lo/Uf;->b:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 2

    .line 77
    iput-object p1, p0, Lo/Uf;->a:Lo/Uq;

    .line 78
    invoke-virtual {p1}, Lo/Uq;->b()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object p1

    .line 79
    iput-object p3, p0, Lo/Uf;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 80
    iget-object p4, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 81
    invoke-virtual {p4, v0}, Lo/RemoteViewsListAdapter;->setCutomCroppingEnabled(Z)V

    .line 82
    iget-object p4, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {p4, v0}, Lo/RemoteViewsListAdapter;->setCenterHorizontally(Z)V

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lo/Uf;->a(Lcom/netflix/model/leafs/PostPlayExperience;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 85
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p4

    const-string v1, "BACKGROUND"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 86
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/SeasonRenewalAsset;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->url()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object p4, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 88
    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 87
    invoke-virtual {p4, p1}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 89
    iget-object p1, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    .line 90
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->n:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    .line 91
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p5

    .line 89
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    new-instance p4, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 97
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p4

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 98
    invoke-virtual {p4, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p4

    .line 95
    invoke-virtual {p1, p4}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 100
    iget-object p1, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    .line 101
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->n:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    .line 102
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p5

    .line 100
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Lcom/netflix/model/leafs/PostPlayExperience;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object p1

    .line 110
    invoke-static {}, Lo/dY;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->message()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 5

    .line 63
    iget-object v0, p0, Lo/Uf;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Uf;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lo/Uf;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lo/adq;->h(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v0, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v1}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    const v2, 0x3fe39581    # 1.778f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v0, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v1}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    invoke-virtual {v1}, Lo/RemoteViewsListAdapter;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lo/Uf;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lo/Uf;->f:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 2

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nM:I

    invoke-virtual {p0, v0}, Lo/Uf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    iput-object v0, p0, Lo/Uf;->d:Lo/RemoteViewsListAdapter;

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nJ:I

    invoke-virtual {p0, v0}, Lo/Uf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
