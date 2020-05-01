.class public abstract Lo/bc;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 118
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method static synthetic c(Lo/bc;Ljava/lang/Runnable;Lo/bz;)Lo/akj;
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/bc;->e(Ljava/lang/Runnable;Lo/bz;)Lo/akj;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lo/bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/bc;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private d()Landroid/content/Intent;
    .locals 5

    const-string v0, "nflx://www.netflix.com/browse"

    .line 151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lo/bc;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v2, p0, Lo/bc;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 155
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "&"

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private synthetic d(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 122
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-direct {p0}, Lo/bc;->d()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 123
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object p2, Lo/Zg;->c:Lo/Zg;

    iget-object v0, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/cl/model/AppView;->webLink:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p2, v0, v1}, Lo/Zg;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 125
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/bc;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/bc;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Runnable;Lo/bz;)Lo/akj;
    .locals 4

    const-string v0, "NflxHandler"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 103
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    const-string v0, "%s: onVideoMaturityChecked response is null"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 104
    sget-object p1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object p2, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto/16 :goto_0

    .line 105
    :cond_0
    instance-of v3, p2, Lo/bu;

    if-eqz v3, :cond_1

    .line 106
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    check-cast p2, Lo/bu;

    .line 107
    invoke-virtual {p2}, Lo/bu;->b()Ljava/lang/Throwable;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "%s: status error - %s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 108
    sget-object p1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object p2, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 109
    :cond_1
    instance-of v0, p2, Lo/bG;

    if-eqz v0, :cond_2

    check-cast p2, Lo/bG;

    invoke-virtual {p2}, Lo/bG;->c()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, v0, :cond_2

    .line 110
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 111
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    new-instance p1, Lo/PendingIntent$Activity;

    iget-object p2, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, p2, v0}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qL:I

    .line 115
    invoke-virtual {p1, p2}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v0, Lo/be;

    invoke-direct {v0, p0}, Lo/be;-><init>(Lo/bc;)V

    .line 116
    invoke-virtual {p1, p2, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 121
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qs:I

    new-instance v0, Lo/bd;

    invoke-direct {v0, p0}, Lo/bd;-><init>(Lo/bc;)V

    invoke-virtual {p1, p2, v0}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 127
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 132
    iget-object p1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 134
    :goto_0
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method static synthetic e(Lo/bc;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/bc;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .line 45
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, p1, p2}, Lo/bc;->b(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 53
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->isMaturityHighest()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->hasTitleRestrictions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    :cond_2
    iget-object v0, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lo/bc$3;

    invoke-direct {v1, p0, p2}, Lo/bc$3;-><init>(Lo/bc;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lo/Am;->b(Ljava/util/List;Lo/zU;)V

    .line 86
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1

    .line 88
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 89
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .line 94
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->isMaturityHighest()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->hasTitleRestrictions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    sget-object v0, Lo/bw;->a:Lo/bw$ActionBar;

    iget-object v1, p0, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 100
    invoke-static {v1}, Lo/BatteryProperties;->a(Lo/UnicodeScript;)Lio/reactivex/Observable;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object v0

    .line 101
    new-instance v1, Lo/RecoverySession;

    invoke-direct {v1, p1}, Lo/RecoverySession;-><init>(Ljava/lang/String;)V

    new-instance p1, Lo/bf;

    invoke-direct {p1, p0, p2}, Lo/bf;-><init>(Lo/bc;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p1}, Lo/bs;->d(Lo/DateTransformation;Lo/alA;)V

    .line 137
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1

    .line 139
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 140
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method
