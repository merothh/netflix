.class public final Lo/Tz;
.super Lo/Uo;
.source ""


# instance fields
.field private a:Lo/ImageSwitcher;

.field private c:Lo/ImageSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lo/Uo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 5

    if-eqz p2, :cond_5

    .line 39
    move-object v0, p2

    check-cast v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;

    .line 40
    invoke-virtual {v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_2

    .line 41
    iget-object v1, p0, Lo/Tz;->a:Lo/ImageSwitcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 42
    :cond_0
    iget-object v1, p0, Lo/Tz;->c:Lo/ImageSwitcher;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 44
    :cond_1
    iget-object v1, p0, Lo/Tz;->a:Lo/ImageSwitcher;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->getRuntime()I

    move-result v0

    invoke-virtual {p0}, Lo/Tz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lo/Tz;->a:Lo/ImageSwitcher;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 47
    :cond_3
    iget-object v1, p0, Lo/Tz;->c:Lo/ImageSwitcher;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 50
    :cond_4
    iget-object v1, p0, Lo/Tz;->c:Lo/ImageSwitcher;

    if-eqz v1, :cond_5

    .line 49
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->cf:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->getOfflineEpisodeCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_5
    :goto_0
    invoke-super/range {p0 .. p5}, Lo/Uo;->b(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 22
    invoke-super {p0}, Lo/Uo;->e()V

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kO:I

    invoke-virtual {p0, v0}, Lo/Tz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/Tz;->a:Lo/ImageSwitcher;

    .line 24
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lE:I

    invoke-virtual {p0, v0}, Lo/Tz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/Tz;->c:Lo/ImageSwitcher;

    return-void
.end method

.method public final setMovieLengthText(Lo/ImageSwitcher;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/Tz;->a:Lo/ImageSwitcher;

    return-void
.end method

.method public final setOfflineEpisodesCount(Lo/ImageSwitcher;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/Tz;->c:Lo/ImageSwitcher;

    return-void
.end method
