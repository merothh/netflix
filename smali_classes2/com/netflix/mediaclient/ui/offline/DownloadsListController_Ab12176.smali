.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;
.super Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
        "Lo/QF;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 10

    const/4 v6, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProfile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lo/RP$StateListAnimator;

    invoke-direct {v0}, Lo/RP$StateListAnimator;-><init>()V

    check-cast v0, Lo/RP;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x24

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    return-void
.end method

.method private final hasDownloadInProgress(Lo/QF;)Z
    .locals 5

    .line 71
    invoke-virtual {p1}, Lo/QF;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 129
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 72
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getCurrentProfile()Lo/BC;

    move-result-object v3

    invoke-interface {v3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v1, v4, v2}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected addAllProfilesButton()V
    .locals 2

    .line 121
    new-instance v0, Lo/Qb;

    invoke-direct {v0}, Lo/Qb;-><init>()V

    const-string v1, "allProfiles"

    .line 122
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Qb;->a(Ljava/lang/CharSequence;)Lo/Qb;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getShowOnlyCurrentProfile()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lo/Qb;->a(Z)Lo/Qb;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getShowAllProfilesClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Qb;->c(Landroid/view/View$OnClickListener;)Lo/Qb;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 121
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    return-void
.end method

.method protected addBottomModels(Lo/QF;ZZ)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lo/RL;->a(Lo/nS;)I

    move-result v1

    .line 81
    invoke-static {p1}, Lo/RL;->e(Lo/nS;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 84
    sget-object p2, Lo/dM;->e:Lo/dM$ActionBar;

    invoke-virtual {p2}, Lo/dM$ActionBar;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    new-instance p2, Lo/SR;

    invoke-direct {p2}, Lo/SR;-><init>()V

    const-string v0, "download_stats_more_big"

    .line 86
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lo/SR;->b(Ljava/lang/CharSequence;)Lo/SR;

    move-result-object p2

    .line 87
    invoke-virtual {p2, p3}, Lo/SR;->b(Z)Lo/SR;

    move-result-object p2

    .line 88
    invoke-virtual {p2, v1}, Lo/SR;->e(I)Lo/SR;

    move-result-object p2

    .line 89
    invoke-virtual {p2, p1}, Lo/SR;->b(I)Lo/SR;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getShowAllDownloadableClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/SR;->d(Landroid/view/View$OnClickListener;)Lo/SR;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 85
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    goto :goto_1

    .line 91
    :cond_1
    sget-object p2, Lo/dM;->e:Lo/dM$ActionBar;

    invoke-virtual {p2}, Lo/dM$ActionBar;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 92
    new-instance p2, Lo/SX;

    invoke-direct {p2}, Lo/SX;-><init>()V

    const-string v0, "download_stats_more_small"

    .line 93
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lo/SX;->b(Ljava/lang/CharSequence;)Lo/SX;

    move-result-object p2

    .line 94
    invoke-virtual {p2, p3}, Lo/SX;->b(Z)Lo/SX;

    move-result-object p2

    .line 95
    invoke-virtual {p2, v1}, Lo/SX;->e(I)Lo/SX;

    move-result-object p2

    .line 96
    invoke-virtual {p2, p1}, Lo/SX;->b(I)Lo/SX;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getShowAllDownloadableClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/SX;->b(Landroid/view/View$OnClickListener;)Lo/SX;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 92
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getFooterItemDecorator()Lo/PowerManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/PowerManager;->a(Z)V

    goto :goto_2

    .line 101
    :cond_3
    new-instance p2, Lo/SO;

    invoke-direct {p2}, Lo/SO;-><init>()V

    const-string p3, "empty"

    .line 102
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lo/SO;->a(Ljava/lang/CharSequence;)Lo/SO;

    move-result-object p2

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getShowAllDownloadableClickListener()Landroid/view/View$OnClickListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/SO;->a(Landroid/view/View$OnClickListener;)Lo/SO;

    move-result-object p2

    .line 104
    invoke-virtual {p2, v1}, Lo/SO;->e(I)Lo/SO;

    move-result-object p2

    .line 105
    invoke-virtual {p2, p1}, Lo/SO;->b(I)Lo/SO;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 101
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getFooterItemDecorator()Lo/PowerManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/PowerManager;->a(Z)V

    :goto_2
    return-void
.end method

.method protected addTopModels(Lo/QF;Z)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/nS;->q()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/nS;->p()Lo/Bg;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 38
    invoke-interface {v0}, Lo/Bg;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bh;

    if-eqz v0, :cond_4

    .line 39
    invoke-interface {v0}, Lo/Bh;->a()J

    move-result-wide v1

    .line 40
    invoke-interface {v0}, Lo/Bh;->g()J

    move-result-wide v3

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/RL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v5, Landroid/content/Context;

    invoke-static {v0, v5}, Lo/aeD;->a(ILandroid/content/Context;)Lo/adJ;

    move-result-object v0

    .line 43
    sget-object v5, Lo/dM;->e:Lo/dM$ActionBar;

    invoke-virtual {v5}, Lo/dM$ActionBar;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 44
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    new-instance v5, Lo/SN;

    invoke-direct {v5}, Lo/SN;-><init>()V

    const-string v6, "download_stats_big_kids"

    .line 46
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lo/SN;->b(Ljava/lang/CharSequence;)Lo/SN;

    move-result-object v5

    .line 47
    invoke-virtual {v5, p2}, Lo/SN;->a(Z)Lo/SN;

    move-result-object p2

    .line 48
    invoke-virtual {p2, v1, v2}, Lo/SN;->c(J)Lo/SN;

    move-result-object p2

    .line 49
    invoke-virtual {p2, v3, v4}, Lo/SN;->d(J)Lo/SN;

    move-result-object p2

    .line 50
    invoke-virtual {p2, v0}, Lo/SN;->d(Lo/adJ;)Lo/SN;

    move-result-object p2

    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->hasDownloadInProgress(Lo/QF;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/SN;->c(Z)Lo/SN;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    goto :goto_1

    .line 53
    :cond_2
    new-instance p1, Lo/SP;

    invoke-direct {p1}, Lo/SP;-><init>()V

    const-string v5, "download_stats_big"

    .line 54
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Lo/SP;->a(Ljava/lang/CharSequence;)Lo/SP;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Lo/SP;->c(Z)Lo/SP;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v1, v2}, Lo/SP;->d(J)Lo/SP;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v3, v4}, Lo/SP;->c(J)Lo/SP;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Lo/SP;->c(Lo/adJ;)Lo/SP;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 53
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    goto :goto_1

    .line 60
    :cond_3
    sget-object p1, Lo/dM;->e:Lo/dM$ActionBar;

    invoke-virtual {p1}, Lo/dM$ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 61
    new-instance p1, Lo/SS;

    invoke-direct {p1}, Lo/SS;-><init>()V

    const-string v5, "download_stats_small"

    .line 62
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Lo/SS;->b(Ljava/lang/CharSequence;)Lo/SS;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p2}, Lo/SS;->c(Z)Lo/SS;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v1, v2}, Lo/SS;->d(J)Lo/SS;

    move-result-object p1

    .line 65
    invoke-virtual {p1, v3, v4}, Lo/SS;->a(J)Lo/SS;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Lo/SS;->c(Lo/adJ;)Lo/SS;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 61
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->add(Lo/BiConsumer;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public createProfileView(Ljava/lang/String;)Lo/BiConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getProfileProvider()Lo/RP;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/RP;->c(Ljava/lang/String;)Lo/Td;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Lo/RV;

    invoke-direct {v0}, Lo/RV;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/RV;->b(Ljava/lang/CharSequence;)Lo/RV;

    move-result-object v0

    invoke-interface {p1}, Lo/Td;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/RV;->e(Ljava/lang/CharSequence;)Lo/RV;

    move-result-object v0

    .line 114
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 132
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 114
    invoke-interface {p1, v1}, Lo/Td;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/RV;->b(Ljava/lang/String;)Lo/RV;

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12176;->getModelCountBuiltSoFar()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/RV;->c(I)Lo/RV;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
