.class public final Lo/ViewFlipper;
.super Lo/CO;
.source ""


# instance fields
.field private final c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private final d:Lcom/netflix/cl/model/AppView;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 1

    const-string v0, "appView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/CO;-><init>()V

    iput-object p1, p0, Lo/ViewFlipper;->d:Lcom/netflix/cl/model/AppView;

    iput-object p2, p0, Lo/ViewFlipper;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lo/ViewFlipper;->d:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "-latencyTracker"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ViewFlipper;->e:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lo/ViewFlipper;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object p2, p0

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 37
    iget-object v0, p0, Lo/ViewFlipper;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/ViewFlipper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 3

    .line 22
    instance-of v0, p1, Lo/CookieSyncManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 24
    check-cast p1, Lo/CookieSyncManager;

    invoke-virtual {p1}, Lo/CookieSyncManager;->h()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 25
    instance-of v0, p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_3

    .line 26
    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->t()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    iget-object v0, p0, Lo/ViewFlipper;->d:Lcom/netflix/cl/model/AppView;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 28
    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_3

    .line 30
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    iget-object v0, p0, Lo/ViewFlipper;->d:Lcom/netflix/cl/model/AppView;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method
