.class public Lo/Ui;
.super Lo/TZ;
.source ""


# instance fields
.field private b:Lo/Uf;

.field private d:Lo/Uo;

.field private g:Lo/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lo/TZ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/TZ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/Ui;->d:Lo/Uo;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lo/Uo;->a()V

    :cond_0
    return-void
.end method

.method public a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 7

    .line 37
    iput-object p1, p0, Lo/Ui;->a:Lo/Uq;

    .line 38
    iget-object v0, p0, Lo/Ui;->b:Lo/Uf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/Uf;->a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 39
    iget-object v1, p0, Lo/Ui;->d:Lo/Uo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lo/Uo;->b(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 41
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lo/Ui;->g:Lo/BaseAdapter;

    new-instance p3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 44
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p4

    invoke-interface {p4}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    const/4 p4, 0x1

    .line 45
    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    sget-object p4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 46
    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    .line 42
    invoke-virtual {p1, p3}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 48
    iget-object p1, p0, Lo/Ui;->g:Lo/BaseAdapter;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/Ui;->b:Lo/Uf;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lo/Uf;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/Ui;->d:Lo/Uo;

    invoke-virtual {v0}, Lo/Uo;->h()V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Ui;->d:Lo/Uo;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lo/Uo;->d()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nq:I

    invoke-virtual {p0, v0}, Lo/Ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Uf;

    iput-object v0, p0, Lo/Ui;->b:Lo/Uf;

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nD:I

    invoke-virtual {p0, v0}, Lo/Ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Uo;

    iput-object v0, p0, Lo/Ui;->d:Lo/Uo;

    .line 32
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nF:I

    invoke-virtual {p0, v0}, Lo/Ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Ui;->g:Lo/BaseAdapter;

    return-void
.end method
