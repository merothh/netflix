.class public final Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;
    }
.end annotation


# instance fields
.field private isOptedIn:Z

.field private final listener:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;

.field private final netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;",
            "Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;",
            ")V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profiles"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lo/OfPrimitive;->defaultModelBuildingHandler:Landroid/os/Handler;

    .line 26
    const-class v1, Lo/Cf;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cf;

    invoke-virtual {v1}, Lo/Cf;->b()Landroid/os/Handler;

    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Lo/OfPrimitive;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->profiles:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->listener:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;

    .line 31
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->isOptedIn:Z

    return-void
.end method

.method public static final synthetic access$buildProfileItems(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->buildProfileItems()V

    return-void
.end method

.method public static final synthetic access$isOptedIn$p(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->isOptedIn:Z

    return p0
.end method

.method public static final synthetic access$setOptedIn$p(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->isOptedIn:Z

    return-void
.end method

.method private final buildProfileItems()V
    .locals 15

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 70
    invoke-interface {v0}, Lo/nS;->q()V

    .line 71
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/nS;->p()Lo/Bg;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 74
    invoke-interface {v1}, Lo/Bg;->d()I

    move-result v2

    invoke-interface {v1, v2}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bh;

    if-eqz v1, :cond_5

    .line 76
    invoke-interface {v1}, Lo/Bh;->e()J

    move-result-wide v2

    const v4, 0x3b9aca00

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-float v2, v2

    .line 77
    sget-object v3, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v3}, Lo/aeN;->a()F

    move-result v3

    .line 78
    invoke-interface {v1}, Lo/Bh;->e()J

    move-result-wide v6

    invoke-interface {v1}, Lo/Bh;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 79
    div-long/2addr v6, v4

    long-to-float v1, v6

    .line 81
    sget-object v4, Lo/aeN;->e:Lo/aeN;

    const-string v5, "offlineAgent"

    invoke-static {v0, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lo/aeN;->a(Lo/nS;)F

    move-result v0

    sget-object v4, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v4}, Lo/aeN;->a()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    const/4 v8, 0x1

    cmpl-double v9, v4, v6

    if-lez v9, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 83
    :goto_1
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->profiles:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 133
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v6, 0x1

    if-gez v6, :cond_2

    invoke-static {}, Lo/akz;->c()V

    :cond_2
    check-cast v7, Lo/BC;

    .line 134
    new-instance v10, Lo/Sn;

    invoke-direct {v10}, Lo/Sn;-><init>()V

    .line 138
    move-object v11, v10

    check-cast v11, Lo/So;

    .line 85
    invoke-interface {v7}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v11, v12}, Lo/So;->e(Ljava/lang/CharSequence;)Lo/So;

    .line 86
    invoke-interface {v7}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v11, v12}, Lo/So;->a(Ljava/lang/CharSequence;)Lo/So;

    .line 87
    invoke-interface {v7}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lo/So;->d(Ljava/lang/String;)Lo/So;

    .line 88
    iget-object v12, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->profiles:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v8

    if-lt v6, v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    invoke-interface {v11, v12}, Lo/So;->c(Z)Lo/So;

    .line 89
    iget-boolean v12, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->isOptedIn:Z

    invoke-interface {v11, v12}, Lo/So;->a(Z)Lo/So;

    .line 90
    invoke-interface {v11, v4}, Lo/So;->b(Z)Lo/So;

    .line 91
    sget-object v12, Lo/aeN;->e:Lo/aeN;

    invoke-interface {v7}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v13

    const-string v14, "profile.profileGuid"

    invoke-static {v13, v14}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lo/aeN;->c(Ljava/lang/String;)F

    move-result v12

    invoke-interface {v11, v12}, Lo/So;->c(F)Lo/So;

    .line 92
    new-instance v12, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$TaskDescription;

    invoke-direct {v12, v7, v6, v4, p0}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$TaskDescription;-><init>(Lo/BC;IZLcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)V

    check-cast v12, Lo/Sq$Activity;

    invoke-interface {v11, v12}, Lo/So;->b(Lo/Sq$Activity;)Lo/So;

    .line 137
    invoke-virtual {v10, p0}, Lo/Sn;->a(Lo/OfPrimitive;)V

    move v6, v9

    goto :goto_2

    .line 143
    :cond_4
    new-instance v0, Lo/Su;

    invoke-direct {v0}, Lo/Su;-><init>()V

    .line 147
    move-object v4, v0

    check-cast v4, Lo/Sw;

    const-string v5, "bottom_model"

    .line 118
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/Sw;->a(Ljava/lang/CharSequence;)Lo/Sw;

    .line 119
    invoke-interface {v4, v1}, Lo/Sw;->b_(F)Lo/Sw;

    .line 120
    invoke-interface {v4, v3}, Lo/Sw;->d(F)Lo/Sw;

    .line 121
    invoke-interface {v4, v2}, Lo/Sw;->b(F)Lo/Sw;

    .line 122
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->isOptedIn:Z

    invoke-interface {v4, v1}, Lo/Sw;->c(Z)Lo/Sw;

    .line 146
    invoke-virtual {v0, p0}, Lo/Su;->a(Lo/OfPrimitive;)V

    nop

    :cond_5
    return-void
.end method


# virtual methods
.method public buildModels()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public final getListener()Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->listener:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;

    return-object v0
.end method

.method public final getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public final getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BC;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->profiles:Ljava/util/List;

    return-object v0
.end method
