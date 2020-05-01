.class public abstract Lcom/netflix/mediaclient/ui/player/PostPlay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;,
        Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;,
        Lcom/netflix/mediaclient/ui/player/PostPlay$ActionBar;
    }
.end annotation


# instance fields
.field private A:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Ljava/lang/Long;

.field private E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field private final G:Ljava/lang/Runnable;

.field public a:Lcom/netflix/model/leafs/PostPlayExperience;

.field protected b:Z

.field protected c:Lo/Uq;

.field protected d:Z

.field protected e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

.field protected f:Lo/TZ;

.field public g:Landroid/widget/LinearLayout;

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/LinearLayout;

.field protected final j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected k:Landroid/view/View;

.field protected l:Lo/aeC$TaskDescription;

.field protected m:Lo/aeC$TaskDescription;

.field protected n:Landroid/view/View;

.field protected o:Landroid/view/View;

.field protected p:Z

.field protected q:Z

.field protected r:Landroid/view/View;

.field protected s:Landroid/view/View;

.field protected t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

.field protected u:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field protected v:Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->C:Z

    .line 1218
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$4;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->G:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->j()V

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->a()V

    .line 180
    sget-object p1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->e:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->u:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V
    .locals 4

    .line 188
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 190
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 192
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->r()Lo/Tv;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->g:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->b([Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->d:Z

    .line 202
    invoke-virtual {p1}, Lo/Tv;->i()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->Y()I

    move-result p1

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Uc;->i()I

    const/4 v0, -0x1

    :cond_1
    :goto_0
    return-void
.end method

.method private B()V
    .locals 2

    .line 1367
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 1368
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    return-void
.end method

.method protected static a(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 9

    .line 437
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    .line 444
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 447
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    const-string v5, "PostPlay initial Index is missing. Setting a default value."

    invoke-interface {v3, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_0
    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x0

    .line 451
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 452
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 453
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netflix/model/leafs/PostPlayItem;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    .line 457
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string v0, "no post play item found in postplay experience."

    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v5

    .line 460
    :cond_3
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 461
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getTrackId()I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_4
    const/16 v0, -0x8c

    const/16 v3, -0x8c

    .line 464
    :goto_1
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nextEpisodeSeamless"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "NextEpisode_Seamless"

    goto :goto_2

    .line 466
    :cond_5
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 467
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p0

    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayAsset;->getAssetType()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    move-object p0, v5

    .line 470
    :goto_2
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v0

    .line 472
    invoke-interface {v7, v4}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayActionAtIndex(I)Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 477
    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayAction;->getListPos()I

    move-result v4

    .line 478
    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayAction;->getListPos()I

    move-result v5

    move v6, v4

    move v7, v5

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 480
    :goto_3
    new-instance v8, Lo/Ux;

    .line 485
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lo/Ux;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 488
    invoke-virtual {v8}, Lo/Ux;->e()Ljava/util/Map;

    move-result-object p0

    .line 480
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lo/AK;I)I
    .locals 2

    .line 234
    invoke-interface {p0}, Lo/AK;->S()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string p1, "nf_postplay"

    const-string v0, "adjusting startOfCredits - runtime is same as logical end "

    .line 235
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0}, Lo/AK;->S()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    long-to-int p1, p0

    goto :goto_0

    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->z:Z

    return p0
.end method

.method public static d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 9

    .line 495
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 504
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v3, "PostPlay initial Index is missing. Setting a default value."

    invoke-interface {v0, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 508
    :cond_0
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 510
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string v0, "no post play item found in postplay experience."

    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v3

    .line 513
    :cond_1
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 514
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayAction;->getTrackId()I

    move-result v4

    goto :goto_0

    :cond_2
    const/16 v4, -0x8c

    .line 517
    :goto_0
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->isOffline()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 518
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nextEpisode"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p0, "NextEpisode"

    goto :goto_1

    .line 520
    :cond_3
    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v5, "nextEpisodeSeamless"

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "NextEpisode_Seamless"

    goto :goto_1

    .line 522
    :cond_4
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 523
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p0

    invoke-interface {p0}, Lcom/netflix/model/leafs/PostPlayAsset;->getAssetType()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v3

    .line 526
    :goto_1
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v0

    .line 528
    new-instance v8, Lo/Ux;

    .line 533
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v3, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lo/Ux;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 536
    invoke-virtual {v8}, Lo/Ux;->e()Ljava/util/Map;

    move-result-object p0

    .line 528
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    return-object p0
.end method

.method private e(JJ)Z
    .locals 6

    .line 887
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const-string v1, "nf_postplay"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "inPostPlay() - called with null PlayerFragment!"

    .line 888
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 892
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->r()Lo/Tv;

    move-result-object v0

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 901
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->C:Z

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessEnd()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lo/AK;->R()I

    move-result v3

    :goto_0
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Lo/AK;I)I

    move-result v0

    int-to-long v3, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 902
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    const/4 p3, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, p3

    const-string p3, "Duration %d, startOfCredits: %d, currentPosition: %d"

    invoke-static {v1, p3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_4

    cmp-long p3, p1, v3

    if-ltz p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    return p4
.end method

.method private x()Z
    .locals 1

    .line 1150
    invoke-static {}, Lo/fd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_0

    .line 1152
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 1153
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->X_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 1154
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->Y_()Lo/Uc;

    move-result-object v0

    invoke-virtual {v0}, Lo/Uc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 9

    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 592
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "PostPlay initial Index is missing. Setting a default value."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 593
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v8, :cond_4

    .line 597
    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 605
    :cond_2
    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 606
    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "twoUpChoicepoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 607
    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 608
    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 610
    :cond_3
    new-instance v0, Lo/Uh;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->c:Lo/Uq;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lo/Uh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V

    .line 613
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    if-eqz p1, :cond_6

    .line 614
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lo/Uh;)V

    invoke-virtual {p1, v1}, Lo/aeC$TaskDescription;->e(Ljava/lang/Runnable;)V

    .line 623
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$2;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {p1, v0}, Lo/aeC$TaskDescription;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 598
    :cond_4
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "no autoplay action found in postplay experience."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 585
    :cond_5
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "No items in the post play experience."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 3

    const-string v0, "nf_postplay"

    const-string v1, "fetchPostPlayVideosIfNeeded starts"

    .line 317
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->B:Ljava/lang/String;

    .line 319
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->A:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 320
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 322
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->u:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->b:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    if-eq v1, v2, :cond_0

    const-string v1, "fetchPostPlayVideosIfNeeded: ready to fetch post_play, attempt to fetch it..."

    .line 323
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_8

    .line 334
    sget-object v0, Lo/gR;->b:Lo/gR$StateListAnimator;

    invoke-virtual {v0}, Lo/gR$StateListAnimator;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    .line 335
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    .line 338
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 343
    :goto_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 347
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 348
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getImpressionData()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayExperience;->getImpressionToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v4, p1, v5}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 351
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    if-eqz p1, :cond_5

    .line 352
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v2, "postPlay navlevel session already exists"

    invoke-interface {p1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 353
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 355
    :cond_5
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/NavigationLevel;

    sget-object v4, Lcom/netflix/cl/model/AppView;->postPlay:Lcom/netflix/cl/model/AppView;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/netflix/cl/model/event/session/NavigationLevel;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    .line 357
    :cond_6
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e(Z)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 361
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nextEpisodeSeamless"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 362
    sget-object p1, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    goto :goto_1

    .line 364
    :cond_7
    sget-object p1, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 366
    :goto_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/discrete/Presented;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    goto :goto_2

    .line 370
    :cond_8
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-10544 - Error transitioning to post play. No post play experience defined."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 1238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-nez v0, :cond_0

    const-string v0, "nf_postplay"

    const-string v1, "playbackHasEnded() - called with null PlayerFragment!"

    .line 1239
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1242
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->w:Z

    .line 1243
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    if-eqz v1, :cond_1

    .line 1244
    invoke-virtual {v1}, Lo/aeC$TaskDescription;->c()V

    .line 1246
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 1248
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Z)V

    .line 1250
    :cond_2
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->b:Z

    if-nez v1, :cond_3

    .line 1251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1252
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->m()V

    .line 1253
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->g(Z)V

    :cond_4
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 9

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 547
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    :cond_2
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getSeasonRenewalPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getActionsInitialIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayActionAtIndex(I)Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    :cond_4
    move-object v4, v0

    if-eqz v4, :cond_7

    .line 564
    new-instance v0, Lo/Uh;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->c:Lo/Uq;

    move-object v1, v0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lo/Uh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V

    const/4 p1, 0x0

    .line 565
    invoke-virtual {v0, p1}, Lo/Uh;->c(Z)V

    goto :goto_2

    .line 548
    :cond_5
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "no autoplay action found in postplay experience."

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 543
    :cond_6
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "No items in the post play experience."

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public b(Lcom/netflix/model/leafs/PostPlayExperience;)V
    .locals 2

    .line 965
    new-instance v0, Lo/Uq;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {v0, p1, v1}, Lo/Uq;-><init>(Lcom/netflix/model/leafs/PostPlayExperience;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    .line 966
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b(Lo/Uq;)V

    .line 967
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->x:Z

    if-eqz p1, :cond_0

    const-string p1, "nf_postplay"

    const-string v0, "Playback has already started, and post play just fetched, lets try to display post play if necessary"

    .line 968
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->h()V

    :cond_0
    return-void
.end method

.method protected b(Lo/Uq;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 974
    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->c:Lo/Uq;

    .line 975
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->c:Lo/Uq;

    if-nez v2, :cond_0

    return-void

    .line 978
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/Uq;->b()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 979
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 980
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 981
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    .line 983
    iget-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    if-eqz v1, :cond_1a

    .line 985
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Lo/CY;

    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    .line 991
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nextEpisodeSeamless"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->C:Z

    .line 992
    iget-boolean v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->C:Z

    const-string v5, "nextEpisode"

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 997
    :goto_2
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v6

    if-lez v6, :cond_4

    .line 998
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 999
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v6, :cond_4

    .line 1001
    invoke-interface {v6, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlay(Z)V

    .line 1003
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    .line 1010
    :cond_4
    sget-object v6, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v6}, Lo/gT$Activity;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoPlayItem()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1011
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6, v2}, Lcom/netflix/model/leafs/PostPlayExperience;->setAutoplay(Z)V

    .line 1012
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoPlayActionSeconds()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/netflix/model/leafs/PostPlayExperience;->setAutoplaySeconds(I)V

    .line 1013
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoPlayItem()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1015
    invoke-interface {v6, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlay(Z)V

    .line 1017
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    :cond_5
    const/4 v10, 0x0

    const-string v11, "nf_postplay"

    if-eqz v4, :cond_13

    .line 1021
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v4

    if-lez v4, :cond_13

    .line 1022
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v4

    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v12, :cond_11

    .line 1024
    iget-boolean v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->C:Z

    if-eqz v4, :cond_7

    const-string v4, "Entering post play next episode seamless experience"

    .line 1026
    invoke-static {v11, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessCountdownSeconds()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/netflix/model/leafs/PostPlayExperience;->setAutoplaySeconds(I)V

    .line 1028
    invoke-interface {v12, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setNextEpisodeSeamless(Z)V

    .line 1029
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v4

    invoke-interface {v12, v4}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    .line 1030
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1031
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v4

    invoke-interface {v12, v4}, Lcom/netflix/model/leafs/PostPlayItem;->setSeamlessStart(I)V

    goto :goto_4

    .line 1033
    :cond_6
    invoke-interface {v12, v3}, Lcom/netflix/model/leafs/PostPlayItem;->setSeamlessStart(I)V

    goto :goto_4

    :cond_7
    const-string v4, "Entering post play next episode experience"

    .line 1037
    invoke-static {v11, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 1039
    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v4

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 1040
    :goto_3
    invoke-interface {v12, v4}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    .line 1041
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12, v4}, Lcom/netflix/model/leafs/PostPlayItem;->setNextEpisodeAutoPlay(Z)V

    .line 1044
    :goto_4
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/PostPlayAction;

    .line 1045
    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1046
    invoke-interface {v5}, Lo/AZ;->isPreRelease()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1047
    invoke-interface {v5}, Lo/AZ;->bb()Lo/AK;

    move-result-object v4

    move-object v13, v4

    goto :goto_5

    :cond_a
    move-object v13, v10

    :goto_5
    if-eqz v13, :cond_14

    new-array v4, v2, [Ljava/lang/Object;

    .line 1052
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "prepare for initial index %d"

    invoke-static {v11, v5, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->x()Z

    move-result v4

    const-wide/16 v14, 0x0

    if-eqz v4, :cond_c

    .line 1055
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    if-nez v4, :cond_b

    move-wide/from16 v20, v14

    goto :goto_6

    .line 1056
    :cond_b
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayAction;->getBookmarkPosition()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    move-wide/from16 v20, v4

    .line 1057
    :goto_6
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v4, v2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a(Z)V

    .line 1058
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v13}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v21}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a(JZJ)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1061
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1063
    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    .line 1064
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 1065
    invoke-interface {v13}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    sget-object v9, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v7, v1

    .line 1064
    invoke-interface/range {v4 .. v9}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    goto :goto_7

    :cond_c
    const/16 v16, 0x0

    :cond_d
    :goto_7
    if-nez v16, :cond_10

    .line 1075
    invoke-static {}, Lo/eP;->f()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1076
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    if-nez v4, :cond_e

    move-wide v8, v14

    goto :goto_8

    .line 1077
    :cond_e
    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayAction;->getBookmarkPosition()I

    move-result v4

    int-to-long v4, v4

    move-wide v8, v4

    .line 1078
    :goto_8
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->d:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-object v5, v13

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;J)V

    goto :goto_9

    .line 1080
    :cond_f
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->d:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v4, v13, v5, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_10
    :goto_9
    const/4 v4, 0x1

    goto :goto_b

    .line 1086
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->x()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1087
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v4, v3}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->c(Z)V

    :cond_12
    const-string v4, "Could not find autoplay item"

    .line 1089
    invoke-static {v11, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1092
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->x()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1093
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v4, v3}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->c(Z)V

    :cond_14
    :goto_a
    const/4 v4, 0x0

    :goto_b
    move v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1099
    :goto_c
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_19

    .line 1100
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v7, :cond_18

    .line 1102
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nf_postplay: Processing post play response for item video ID: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 1103
    iget-object v8, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/netflix/model/leafs/PostPlayItem;->setExperienceType(Ljava/lang/String;)V

    .line 1104
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/model/leafs/PostPlayAction;

    .line 1105
    invoke-interface {v9, v4}, Lcom/netflix/model/leafs/PostPlayAction;->setItemIndex(I)V

    .line 1106
    iget-object v12, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v12}, Lcom/netflix/model/leafs/PostPlayExperience;->getRequestId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/netflix/model/leafs/PostPlayAction;->setRequestId(Ljava/lang/String;)V

    .line 1107
    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/netflix/model/leafs/PostPlayAction;->setAncestorTitle(Ljava/lang/String;)V

    if-nez v6, :cond_15

    .line 1109
    invoke-interface {v9}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 1110
    invoke-interface {v9}, Lo/AZ;->isPreRelease()Z

    move-result v12

    if-nez v12, :cond_16

    invoke-interface {v9}, Lo/AZ;->bb()Lo/AK;

    move-result-object v9

    goto :goto_e

    :cond_16
    move-object v9, v10

    :goto_e
    if-eqz v9, :cond_15

    new-array v6, v2, [Ljava/lang/Object;

    .line 1112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v3

    const-string v12, "prepare for index=%d"

    invoke-static {v11, v12, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1113
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v12, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->d:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v6, v9, v12, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    const/4 v6, 0x1

    goto :goto_d

    .line 1119
    :cond_17
    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v7

    if-eqz v7, :cond_18

    add-int/lit8 v5, v5, 0x1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :cond_19
    if-nez v5, :cond_1a

    const-string v1, "No playable items in post play response"

    .line 1127
    invoke-static {v11, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    .line 1133
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->s()V

    return-void
.end method

.method public b(Z)V
    .locals 5

    const-string v0, "nf_postplay"

    const-string v1, "Transition to post play execute!"

    .line 378
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_7

    .line 382
    sget-object v0, Lo/gR;->b:Lo/gR$StateListAnimator;

    invoke-virtual {v0}, Lo/gR$StateListAnimator;->b()Z

    move-result v0

    const/4 v1, 0x1

    .line 383
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    .line 386
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 391
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 395
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 396
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getImpressionData()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getImpressionToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, p1, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_6

    .line 399
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    if-eqz p1, :cond_5

    .line 400
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v1, "postPlay navlevel session already exists"

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 401
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 403
    :cond_5
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    sget-object v3, Lcom/netflix/cl/model/AppView;->postPlay:Lcom/netflix/cl/model/AppView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/netflix/cl/model/event/session/NavigationLevel;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->D:Ljava/lang/Long;

    .line 405
    :cond_6
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e(Z)V

    if-eqz v0, :cond_8

    .line 407
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e()V

    goto :goto_1

    .line 411
    :cond_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-10544 - Error transitioning to post play. No post play experience defined."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 4

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 278
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nf_postplay"

    const-string v1, "Fetch post_play videos..."

    .line 282
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 284
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nf_postplay: Requesting post play response for video ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lo/zG;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/zU;)Z

    .line 286
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->v:Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;

    goto :goto_0

    :cond_1
    const-string p1, "nf_postplay"

    const-string p2, "Unable to fetch post_play videos!"

    .line 288
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "nf_postplay"

    if-nez v0, :cond_0

    const-string v0, "Logging post play impression"

    .line 262
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v7, Lcom/netflix/mediaclient/ui/player/PostPlay$ActionBar;

    invoke-direct {v7, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Unable to log post play impression!"

    .line 266
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 665
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->b:Z

    if-nez v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->f()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 668
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->b:Z

    if-eqz p1, :cond_1

    .line 669
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_2

    .line 670
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/CloseCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/CloseCommand;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 671
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 672
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onBackPressed()V

    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(JJ)V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const-string v1, "nf_postplay"

    if-nez v0, :cond_0

    const-string p1, "updatePlaybackPosition() - called with null PlayerFragment!"

    .line 774
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->n()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 782
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->e(JJ)Z

    move-result p1

    .line 783
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const-string p1, "Already in post play"

    .line 784
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 785
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->Y_()Lo/Uc;

    move-result-object p2

    invoke-virtual {p2}, Lo/Uc;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "In Interrupter mode, do nothing"

    .line 786
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 787
    :cond_3
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    const-string p1, "Transition to post play"

    .line 788
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 792
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->cx:I

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 793
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 794
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->y()V

    goto :goto_0

    .line 795
    :cond_5
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "isPostPlayEverywhereOverlayEnabled"

    .line 796
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->cu:I

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->y()V

    goto :goto_0

    .line 799
    :cond_6
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->Y_()Lo/Uc;

    move-result-object p1

    invoke-virtual {p1}, Lo/Uc;->g()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Transition from post play to normal"

    .line 800
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->f()V

    goto :goto_0

    :cond_7
    const-string p1, "Not  in post play"

    .line 803
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    .line 883
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    return v0
.end method

.method protected e(I)Lo/aeC$TaskDescription;
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Lo/aeC$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lo/aeC$TaskDescription;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    invoke-virtual {v0, p1}, Lo/aeC$TaskDescription;->a(I)V

    .line 575
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 7

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisodeSeamless"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "twoUpChoicepoint"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    goto :goto_1

    .line 419
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    .line 423
    :goto_1
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/discrete/Presented;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v6}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v6

    invoke-direct {v3, v0, v5, v6}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    sget-object v0, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 430
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/Presented;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->a(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_2
    return-void
.end method

.method protected abstract e(Z)V
.end method

.method protected e(Lcom/netflix/model/leafs/PostPlayItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1140
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1142
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nf_postplay: Checking post play play action video ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 1143
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1144
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object p1

    invoke-interface {p1}, Lo/AZ;->bb()Lo/AK;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public f()V
    .locals 4

    const-string v0, "nf_postplay"

    const-string v1, "Transition from post play execute!"

    .line 683
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 684
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    .line 685
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->r()V

    .line 686
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    .line 687
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "User dismissed post_play, report as such"

    .line 692
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->c()V

    .line 698
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->B()V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1188
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1190
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected g()Z
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "originalsPostPlay"

    .line 650
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x1

    .line 726
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->x:Z

    const/4 v1, 0x0

    .line 727
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->w:Z

    .line 728
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v1}, Lo/gT$Activity;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    if-nez v1, :cond_1

    const-string v1, "nf_postplay"

    const-string v2, "Cannot render post play everywhere as data does not exist"

    .line 732
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v3, Lcom/netflix/mediaclient/ui/R$Activity;->cu:I

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->y()V

    .line 737
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    .line 738
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->v()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nY:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->k:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nR:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->h:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nO:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->g:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ny:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->i:Landroid/widget/LinearLayout;

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nX:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->n:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nU:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iL:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->o:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nL:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    return-void
.end method

.method public k()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 916
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const-string v1, "nf_postplay"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "isAutoPlayEnabled() - called with null PlayerFragment!"

    .line 841
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 845
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Activity not found! Auto post_play is NOT enabled. This should NOT happen!"

    .line 846
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->r()Lo/Tv;

    move-result-object v0

    invoke-virtual {v0}, Lo/Tv;->i()Lo/AK;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "playable not found! Auto post_play is NOT enabled. This should NOT happen!"

    .line 851
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 855
    :cond_2
    invoke-interface {v0}, Lo/AK;->W()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Autoplay is disabled for this title"

    .line 856
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    .line 864
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-nez v0, :cond_5

    return v2

    .line 869
    :cond_5
    invoke-interface {v0}, Lo/BC;->isAutoPlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Autoplay is enabled for this profile"

    .line 870
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_6
    const-string v0, "Autoplay is disabled for this profile"

    .line 873
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public m()V
    .locals 2

    .line 743
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-nez v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 748
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->a(Z)V

    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->y()V

    :cond_2
    return-void
.end method

.method public n()Z
    .locals 3

    .line 817
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_postplay"

    if-nez v0, :cond_0

    const-string v0, "Postplay has no data!"

    .line 818
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 822
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "Postplay was dismissed"

    .line 823
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected o()Z
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;

    move-result-object v0

    .line 760
    invoke-static {}, Lo/dY;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SeasonRenewal;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x0

    .line 1305
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const/4 v0, 0x0

    .line 1306
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->z:Z

    .line 1307
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->e:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->u:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1308
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    .line 1309
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->p:Z

    .line 1310
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    .line 1311
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->x:Z

    .line 1312
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->w:Z

    return-void
.end method

.method public q()Z
    .locals 1

    .line 1177
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->p:Z

    return v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 1161
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->p:Z

    return-void
.end method

.method public abstract s()V
.end method

.method public t()V
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->p()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->p()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->f:Lo/TZ;

    if-eqz v0, :cond_2

    .line 1203
    invoke-virtual {v0}, Lo/TZ;->c()V

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_3

    .line 1206
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    .line 1208
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->B()V

    const-string v0, "nf_postplay"

    const-string v1, "User exits playback and post_play if it was in progress, report as such"

    .line 1209
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected u()Z
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    .line 1333
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 2

    .line 1346
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->w:Z

    if-nez v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->s:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    .line 1352
    :cond_0
    new-instance v0, Lo/aeC$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lo/aeC$TaskDescription;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    .line 1353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/aeC$TaskDescription;->a(I)V

    .line 1354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$5;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Lo/aeC$TaskDescription;->e(Ljava/lang/Runnable;)V

    .line 1362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->m:Lo/aeC$TaskDescription;

    invoke-virtual {v0}, Lo/aeC$TaskDescription;->d()V

    :cond_1
    return-void
.end method

.method public w()Z
    .locals 2

    .line 1339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->t:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v0}, Lo/gT$Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 1319
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->z:Z

    .line 1320
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->p:Z

    .line 1321
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->q:Z

    .line 1322
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->x:Z

    return-void
.end method
