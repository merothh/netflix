.class public Lo/Mb;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/Tg;)V
    .locals 1

    .line 132
    instance-of v0, p3, Lo/Tg$StateListAnimator;

    if-eqz v0, :cond_0

    .line 133
    check-cast p3, Lo/Tg$StateListAnimator;

    invoke-virtual {p3}, Lo/Tg$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p3

    const-string v0, "prereleasePin"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    .line 136
    invoke-static {p2, p0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c(Ljava/lang/String;Landroid/content/Intent;)V

    const-string p0, "MdxAgentApi"

    const-string p3, "play done"

    .line 138
    invoke-static {p0, p3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETCAPABILITY"

    .line 139
    invoke-static {p1, p0, p2}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 2

    .line 127
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error from pin dialog"

    invoke-interface {v0, v1, p0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/Mb;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic b(Lo/Ti;Lo/Tk;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lo/Ti;->a(Lo/Tk;)V

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z
    .locals 4

    .line 60
    invoke-static {p4}, Lo/Tw;->e(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 62
    invoke-static {p1}, Lo/aev;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string p1, "Non numeric videoId passed in Mdx PlayVideo"

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return v1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lo/acE;->a(Lo/Am;)Lo/zN;

    move-result-object v0

    const-string v2, "MdxAgentApi"

    if-nez v0, :cond_1

    const-string p0, "MDX agent not available - can\'t play video"

    .line 70
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 75
    :cond_1
    invoke-interface {v0}, Lo/zN;->n()Lo/aeM$Application;

    move-result-object v3

    if-nez p6, :cond_2

    if-eqz v3, :cond_2

    .line 76
    iget-object p6, v3, Lo/aeM$Application;->e:Ljava/lang/String;

    invoke-static {p6, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    return v1

    .line 80
    :cond_2
    invoke-interface {v0}, Lo/zN;->h()Ljava/lang/String;

    move-result-object p6

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAY_VIDEOIDS"

    .line 81
    invoke-static {p0, v1, p6}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 83
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v3, :cond_3

    const-string p2, "catalogId"

    .line 84
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 85
    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v3, :cond_4

    const-string p2, "episodeId"

    .line 86
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_4
    :goto_0
    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p1

    const-string p2, "trackId"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "time"

    .line 90
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    if-eqz p3, :cond_5

    const-string p2, "previewPinProtected"

    .line 94
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-interface {v0}, Lo/zN;->t()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 97
    invoke-static {p0, p6, v1}, Lo/Mb;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Landroid/content/Intent;)V

    return p1

    .line 102
    :cond_5
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    .line 104
    invoke-interface {v0}, Lo/zN;->y()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 106
    invoke-static {p6, v1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_6
    const-string p2, "play done"

    .line 109
    invoke-static {v2, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETCAPABILITY"

    .line 110
    invoke-static {p0, p2, p6}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    return p1
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z
    .locals 7

    .line 41
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result v3

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lo/Mb;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lo/Ti;Lo/Tk;)V
    .locals 0

    invoke-static {p0, p1}, Lo/Mb;->b(Lo/Ti;Lo/Tk;)V

    return-void
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 2

    .line 141
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error from pin dialog"

    invoke-interface {v0, v1, p0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object p0

    instance-of p0, p0, Lo/Ti;

    return p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    const-class p1, Lo/bM;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "com.netflix.mediaclient.intent.category.MDX"

    .line 157
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uuid"

    .line 158
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic e(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/Tg;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lo/Mb;->a(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/Tg;)V

    return-void
.end method

.method private static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    .line 115
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unused"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lo/Ti;->e:Lo/Ti$Application;

    invoke-virtual {v1, p0, v0}, Lo/Ti$Application;->d(Landroid/content/Context;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/Ti;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixMdxController()Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k()Lo/UpdateEngine;

    move-result-object v1

    const-class v2, Lo/Tk;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lo/Mc;

    invoke-direct {v2, v0}, Lo/Mc;-><init>(Lo/Ti;)V

    sget-object v3, Lo/Md;->e:Lo/Md;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 131
    invoke-virtual {v0}, Lo/Ti;->c()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->a(Landroidx/lifecycle/Lifecycle;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v2

    invoke-static {v2}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v2, Lo/LZ;

    invoke-direct {v2, p2, p0, p1}, Lo/LZ;-><init>(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    sget-object p1, Lo/Ma;->c:Lo/Ma;

    invoke-interface {v1, v2, p1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p0

    const-string p1, "frag_dialog"

    invoke-virtual {v0, p0, p1}, Lo/Ti;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/Mb;->d(Ljava/lang/Throwable;)V

    return-void
.end method
