.class public Lo/aO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "http"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "www.netflix.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "%s://%s/%s/"

    .line 53
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/aO;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/aO;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 3

    .line 151
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lo/aO$4;

    invoke-direct {v2, p0, p2, p1, p3}, Lo/aO$4;-><init>(Lo/aO;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/Am;->b(Ljava/util/List;Lo/zU;)V

    return-void
.end method

.method static synthetic a(Lo/aO;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/aO;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method static synthetic a(Lo/aO;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/aO;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .line 132
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 136
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->isMaturityHighest()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->hasTitleRestrictions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_1
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lo/aO;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lo/aO;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lo/aO;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 146
    :goto_1
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lo/aO;->d(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    new-instance v1, Lo/aO$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/aO$5;-><init>(Lo/aO;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/zG;->e(Ljava/lang/String;Lo/zU;)Z

    return-void
.end method

.method private synthetic d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lo/bz;)Lo/akj;
    .locals 4

    const-string v0, "NetflixComVideoDetailsHandler"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p4, :cond_0

    .line 183
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v0, p3, v1

    const-string p4, "%s: onVideoMaturityChecked response is null"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lo/aO;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 185
    :cond_0
    instance-of v3, p4, Lo/bu;

    if-eqz v3, :cond_1

    .line 186
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    check-cast p4, Lo/bu;

    invoke-virtual {p4}, Lo/bu;->b()Ljava/lang/Throwable;

    move-result-object p4

    aput-object p4, p3, v2

    const-string p4, "%s: status error - %s"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lo/aO;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 188
    :cond_1
    instance-of v0, p4, Lo/bG;

    if-eqz v0, :cond_2

    check-cast p4, Lo/bG;

    invoke-virtual {p4}, Lo/bG;->c()Ljava/lang/Object;

    move-result-object p4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p4, v0, :cond_2

    .line 189
    invoke-direct {p0, p2, p1, p3}, Lo/aO;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p4

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p4, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 192
    new-instance p4, Lo/PendingIntent$Activity;

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p4, p1, v0}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->qL:I

    .line 193
    invoke-virtual {p4, v0}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p4

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/aS;

    invoke-direct {v1, p1}, Lo/aS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 194
    invoke-virtual {p4, v0, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p4

    .line 198
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->qs:I

    new-instance v1, Lo/aR;

    invoke-direct {v1, p2, p3, p1}, Lo/aR;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p4, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 211
    invoke-virtual {p4}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    .line 213
    :cond_3
    :goto_0
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method private static synthetic d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 3

    .line 179
    sget-object v0, Lo/bw;->a:Lo/bw$ActionBar;

    .line 180
    invoke-static {p2}, Lo/BatteryProperties;->a(Lo/UnicodeScript;)Lio/reactivex/Observable;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object v0

    .line 181
    new-instance v1, Lo/RecoverySession;

    invoke-direct {v1, p1}, Lo/RecoverySession;-><init>(Ljava/lang/String;)V

    new-instance v2, Lo/aQ;

    invoke-direct {v2, p0, p2, p1, p3}, Lo/aQ;-><init>(Lo/aO;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lo/bs;->d(Lo/DateTransformation;Lo/alA;)V

    return-void
.end method

.method private static synthetic d(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "https://www.netflix.com/title/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p3, "trkid"

    invoke-virtual {p0, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 204
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    .line 205
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 206
    sget-object p0, Lo/Zg;->c:Lo/Zg;

    sget-object p1, Lcom/netflix/cl/model/AppView;->webLink:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p2, p1}, Lo/Zg;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-static {p2}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 208
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method static synthetic e(Lo/aO;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lo/bz;)Lo/akj;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/aO;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lo/bz;)Lo/akj;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 81
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    const-string v0, "NetflixComVideoDetailsHandler"

    const-string v1, "Starting Details activity"

    .line 70
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0, p2}, Lo/aO;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-direct {p0, p2, p1, p3}, Lo/aO;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 75
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method protected c(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
