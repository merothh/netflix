.class Lo/xf$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/xf;


# direct methods
.method constructor <init>(Lo/xf;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lo/xf$3;)V
    .locals 0

    invoke-direct {p0}, Lo/xf$3;->f()V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 837
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->d(Lo/xf;)Lo/pC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->d(Lo/xf;)Lo/pC;

    move-result-object v0

    invoke-interface {v0}, Lo/pC;->b()V

    .line 839
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/xf;->d(Lo/xf;Lo/pC;)Lo/pC;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    .line 813
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0}, Lo/xf;->s()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 815
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getVideoStreamsInfo()Ljava/util/List;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->u()I

    move-result v1

    const/4 v3, 0x0

    .line 821
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-lez v4, :cond_2

    .line 822
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v5

    if-gt v5, v1, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v3, :cond_4

    .line 828
    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->C()I

    move-result v4

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lo/xf;->d(II)V

    goto :goto_2

    .line 831
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "manifest unavailable while trying to adjust bitrate"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private j()V
    .locals 2

    .line 836
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->c(Lo/xf;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/xr;

    invoke-direct {v1, p0}, Lo/xr;-><init>(Lo/xf$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 767
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->q:Lo/xi;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xi;->d(J)V

    .line 768
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->a(Lo/xf;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->d()V

    .line 769
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->e(J)V

    .line 770
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getAudioCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    new-instance v3, Lo/tl;

    sget-object v4, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    iget-object v5, p0, Lo/xf$3;->e:Lo/xf;

    .line 772
    invoke-virtual {v5}, Lo/xf;->n()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/tl;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v1, v2, v3}, Lo/xv;->a(JLo/TimePickerSpinnerDelegate;)V

    .line 774
    :cond_0
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getSubtitleCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    new-instance v3, Lo/tl;

    sget-object v4, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    iget-object v5, p0, Lo/xf$3;->e:Lo/xf;

    .line 776
    invoke-virtual {v5}, Lo/xf;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/tl;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, v1, v2, v3}, Lo/xv;->a(JLo/TimePickerSpinnerDelegate;)V

    .line 778
    :cond_1
    invoke-direct {p0}, Lo/xf$3;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 731
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->k:Lo/xw;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lo/xw;->d(JLjava/lang/String;)V

    .line 732
    iget-object p1, p0, Lo/xf$3;->e:Lo/xf;

    iget-object p1, p1, Lo/xf;->b:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/xf$3;->e:Lo/xf;

    iget-object p1, p1, Lo/xf;->b:Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;

    iput-object p2, p1, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mSubtitleProfile:Ljava/lang/String;

    .line 733
    :cond_0
    iget-object p1, p0, Lo/xf$3;->e:Lo/xf;

    iget-object p1, p1, Lo/xf;->k:Lo/xw;

    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0}, Lo/xf;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lo/xw;->e(JLjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 783
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->a(Lo/xf;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e()V

    .line 784
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->d(J)V

    .line 785
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->c(J)V

    .line 786
    invoke-direct {p0}, Lo/xf$3;->j()V

    .line 787
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/pw;->c(Lo/zJ;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 3

    .line 792
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->d(J)V

    .line 793
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->c(J)V

    .line 794
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/pw;->c(Lo/zJ;)V

    .line 795
    invoke-direct {p0}, Lo/xf$3;->j()V

    .line 797
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0, p1}, Lo/xf;->d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object p1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {p1}, Lo/xf;->b(Lo/xf;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Playback recovery is in progress..."

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :cond_0
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->b(Lo/xf;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback recovery is not possible, buble error up to UI!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0, p1}, Lo/xf;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 7

    .line 721
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v1, v0, Lo/xf;->k:Lo/xw;

    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0}, Lo/xf;->d()J

    move-result-wide v2

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lo/xw;->c(JLjava/lang/String;J)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 807
    invoke-static {}, Lo/ei;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    invoke-direct {p0}, Lo/xf$3;->h()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 756
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->a(J)V

    return-void
.end method

.method public d(JLo/ta$TaskDescription;)V
    .locals 7

    .line 726
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v1, v0, Lo/xf;->k:Lo/xw;

    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0}, Lo/xf;->d()J

    move-result-wide v2

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lo/xw;->e(JJLo/ta$TaskDescription;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 741
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->n:Lo/tf;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/tf;->b(J)Lo/uC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v1, v0}, Lo/xf;->e(Lo/xf;Lo/uC;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->e(Lo/xf;)Lo/sV;

    move-result-object v0

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v2, v1, Lo/xf;->m:Lo/xz;

    iget-object v3, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v3}, Lo/xf;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/xz;->i(J)Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/sV;->c(Lo/zJ;Lcom/netflix/mediaclient/service/player/StreamProfileType;)V

    .line 746
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v0}, Lo/xf;->s()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->a(Lo/xf;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    move-result-object v0

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->s()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->a(Lcom/netflix/mediaclient/media/PlayerManifestData;)V

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->b(Lo/xf;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest data not yet available - will be called when manifest is available"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 716
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->k:Lo/xw;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lo/xw;->d(JLjava/lang/String;)V

    return-void
.end method

.method public e(Lo/TimePickerSpinnerDelegate;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lo/xv;->a(JLo/TimePickerSpinnerDelegate;)V

    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 761
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->l:Lo/xv;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/xv;->a(J)V

    .line 762
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->a(Lo/xf;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->d(Z)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 703
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/xf;->a(Lo/xf;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c()V

    .line 704
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    iget-object v0, v0, Lo/xf;->k:Lo/xw;

    iget-object v1, p0, Lo/xf$3;->e:Lo/xf;

    invoke-virtual {v1}, Lo/xf;->d()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/xw;->d(JZ)V

    .line 705
    invoke-direct {p0}, Lo/xf$3;->j()V

    .line 706
    iget-object v0, p0, Lo/xf$3;->e:Lo/xf;

    invoke-static {v0}, Lo/pw;->c(Lo/zJ;)V

    return-void
.end method
