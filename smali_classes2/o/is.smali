.class public Lo/is;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/is$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/is$Activity;

.field private static final f:J


# instance fields
.field private final a:Lo/is$StateListAnimator;

.field private final b:Lo/aeq;

.field private d:Z

.field private final e:Lo/iy;

.field private final g:Lo/cz;

.field private final h:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final i:Lo/hW;

.field private final j:Lo/xZ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/is$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/is$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/is;->c:Lo/is$Activity;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/is;->f:J

    return-void
.end method

.method public constructor <init>(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;)V
    .locals 1

    const-string v0, "netflixJobScheduler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceFetcher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationAgent"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/is;->e:Lo/iy;

    iput-object p2, p0, Lo/is;->j:Lo/xZ;

    iput-object p3, p0, Lo/is;->i:Lo/hW;

    iput-object p4, p0, Lo/is;->h:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p5, p0, Lo/is;->g:Lo/cz;

    .line 87
    new-instance p1, Lo/is$StateListAnimator;

    invoke-direct {p1, p0}, Lo/is$StateListAnimator;-><init>(Lo/is;)V

    iput-object p1, p0, Lo/is;->a:Lo/is$StateListAnimator;

    .line 102
    new-instance p1, Lo/aeq;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p3, 0x3c

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/4 p4, 0x4

    invoke-direct {p1, p4, p2, p3}, Lo/aeq;-><init>(IJ)V

    iput-object p1, p0, Lo/is;->b:Lo/aeq;

    .line 105
    invoke-direct {p0}, Lo/is;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lo/is;->a:Lo/is$StateListAnimator;

    check-cast p2, Landroid/content/BroadcastReceiver;

    const/4 p3, 0x0

    const-string p4, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    const-string p5, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 108
    filled-new-array {p4, p5}, [Ljava/lang/String;

    move-result-object p4

    .line 106
    invoke-static {p1, p2, p3, p4}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 109
    invoke-direct {p0}, Lo/is;->d()V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lo/is;->c()V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lo/is;)Lo/hW;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/is;->i:Lo/hW;

    return-object p0
.end method

.method public static final a(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/cz;)Lo/is;
    .locals 7

    sget-object v0, Lo/is;->c:Lo/is$Activity;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lo/is$Activity;->a(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/cz;)Lo/is;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 289
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 291
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isCellular"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reason"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p1, p0, Lo/is;->e:Lo/iy;

    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {p1, v0, p3}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    .line 294
    invoke-direct {p0, p2}, Lo/is;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method private final a()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lo/is;->g:Lo/cz;

    invoke-interface {v0}, Lo/cz;->at()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final b()J
    .locals 3

    .line 117
    iget-object v0, p0, Lo/is;->g:Lo/cz;

    invoke-interface {v0}, Lo/cz;->at()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lo/is;->g:Lo/cz;

    invoke-interface {v1}, Lo/cz;->at()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lo/ec;->a:Lo/ec$Activity;

    invoke-virtual {v0}, Lo/ec$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo/ec;->a:Lo/ec$Activity;

    invoke-virtual {v0}, Lo/ec$Activity;->e()J

    move-result-wide v0

    goto :goto_0

    .line 119
    :cond_1
    sget-wide v0, Lo/is;->f:J

    :goto_0
    return-wide v0
.end method

.method private final b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 329
    const-class v0, Lo/kg;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kg;

    .line 302
    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->w:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Lo/kg;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    return-void
.end method

.method private final b(Lo/Ax;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 273
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lo/is;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 274
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lo/is;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 275
    invoke-interface {p1}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getHorizontalBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lo/is;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lo/is;Lo/Ax;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/is;->b(Lo/Ax;)V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 128
    iget-object v0, p0, Lo/is;->e:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    return-void
.end method

.method private final c(Landroid/content/Intent;)V
    .locals 2

    .line 314
    invoke-static {p1}, Lo/adG;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x440f891c

    if-eq v0, v1, :cond_1

    const v1, 0x25cdb25

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lo/is;->c()V

    goto :goto_0

    :cond_1
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lo/is;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic c(Lo/is;Landroid/content/Intent;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/is;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private final d()V
    .locals 3

    .line 124
    iget-object v0, p0, Lo/is;->e:Lo/iy;

    invoke-direct {p0}, Lo/is;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->f(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    return-void
.end method

.method public static final synthetic d(Lo/is;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/is;->g()V

    return-void
.end method

.method public static final synthetic d(Lo/is;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lo/is;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static final synthetic e(Lo/is;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lo/is;->d:Z

    return p0
.end method

.method private final f()V
    .locals 2

    .line 298
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 328
    const-class v0, Lo/kg;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kg;

    .line 298
    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->w:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-interface {v0, v1}, Lo/kg;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    return-void
.end method

.method private final g()V
    .locals 5

    .line 187
    iget-object v0, p0, Lo/is;->i:Lo/hW;

    sget-object v1, Lo/is;->c:Lo/is$Activity;

    invoke-static {v1}, Lo/is$Activity;->d(Lo/is$Activity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lo/is$Application;

    invoke-direct {v2, p0}, Lo/is$Application;-><init>(Lo/is;)V

    check-cast v2, Lo/ci;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v2}, Lo/hW;->c(Ljava/lang/String;IILo/ci;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 280
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 281
    sget-object v0, Lo/NfcEvent;->b:Lo/NfcEvent$Application;

    invoke-virtual {v0}, Lo/NfcEvent$Application;->a()Lo/NfcEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/NfcEvent;->b(Ljava/lang/String;)Lo/NfcEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/NfcEvent;->d()Lo/NfcEvent$Activity;

    move-result-object p1

    .line 282
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BaseNetflixApp.getContext()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ErrorCodes;->a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;

    move-result-object p1

    .line 283
    sget-object v0, Lcom/netflix/mediaclient/service/job/InsomniaJobScheduler$cacheImage$1;->c:Lcom/netflix/mediaclient/service/job/InsomniaJobScheduler$cacheImage$1;

    check-cast v0, Lo/alA;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 282
    invoke-static {p1, v0, v2, v1, v2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Single;Lo/alA;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method

.method protected c(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p1}, Lo/is;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method protected final d(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lo/is;->i:Lo/hW;

    new-instance v0, Lo/is$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/is$TaskDescription;-><init>(Lo/is;Ljava/util/HashMap;)V

    move-object v6, v0

    check-cast v6, Lo/ci;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Lo/hW;->b(IILjava/lang/String;ZLo/ci;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 310
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/is;->a:Lo/is$StateListAnimator;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 4

    const-string v0, "jobId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lo/is;->d:Z

    .line 133
    invoke-direct {p0}, Lo/is;->f()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    iget-object v1, p0, Lo/is;->b:Lo/aeq;

    invoke-virtual {v1}, Lo/aeq;->c()Z

    move-result v1

    .line 137
    sget-object v2, Lo/is;->c:Lo/is$Activity;

    check-cast v2, Lo/MessagePdu;

    const-string v2, "status"

    if-eqz v1, :cond_0

    .line 140
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v3, "tooFrequent"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v1, v0, p1}, Lo/is;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V

    .line 142
    invoke-direct {p0}, Lo/is;->c()V

    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lo/is;->h:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v3, "userNotLoggedIn"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v1, v0, p1}, Lo/is;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V

    return-void

    .line 152
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    const-string v3, "BaseNetflixApp.getInstance()"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v1

    const-string v3, "BaseNetflixApp.getInstance().userInputTracker"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Plugin;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v3, "appInForeground"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v1, v0, p1}, Lo/is;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/HashMap;Z)V

    return-void

    .line 159
    :cond_2
    iget-object p1, p0, Lo/is;->i:Lo/hW;

    sget-object v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->b:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    invoke-interface {p1, v1}, Lo/hW;->c(Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;)V

    .line 161
    invoke-virtual {p0, v0}, Lo/is;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    const-string v0, "jobId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lo/is;->d:Z

    return-void
.end method
