.class public Lo/mw;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/zE;
.implements Lo/Ar;
.implements Lo/zA;
.implements Lo/dm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mw$TaskDescription;
    }
.end annotation


# static fields
.field private static c:Z = false


# instance fields
.field private a:Lo/mw$TaskDescription;

.field private final b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

.field private final d:Lo/H;

.field private e:Lo/mB;

.field private f:Lo/zE$StateListAnimator;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/zE$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lo/mV;

.field private l:I

.field private m:Lo/nc;

.field private n:Lo/afJ;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/H;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V
    .locals 2

    .line 167
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/mw;->g:Ljava/util/List;

    .line 139
    invoke-static {}, Lo/mw;->k()Lo/afO;

    move-result-object v0

    iput-object v0, p0, Lo/mw;->n:Lo/afJ;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/mw;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    new-instance v0, Lo/mv;

    invoke-direct {v0, p0}, Lo/mv;-><init>(Lo/mw;)V

    iput-object v0, p0, Lo/mw;->r:Ljava/lang/Runnable;

    .line 168
    iput-object p1, p0, Lo/mw;->d:Lo/H;

    .line 169
    iput-object p2, p0, Lo/mw;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    .line 170
    new-instance p1, Lo/nc;

    invoke-direct {p1, p0}, Lo/nc;-><init>(Lo/mw;)V

    iput-object p1, p0, Lo/mw;->m:Lo/nc;

    .line 173
    const-class p1, Lo/zQ;

    iget-object p2, p0, Lo/mw;->m:Lo/nc;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 174
    new-instance p1, Lo/mV;

    invoke-direct {p1, p0}, Lo/mV;-><init>(Lo/mw;)V

    iput-object p1, p0, Lo/mw;->k:Lo/mV;

    .line 175
    const-class p1, Lo/zH;

    iget-object p2, p0, Lo/mw;->k:Lo/mV;

    invoke-static {p1, p2, v0}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 177
    sget-boolean p1, Lo/mw;->c:Z

    if-eqz p1, :cond_0

    .line 178
    new-instance p1, Lo/mw$TaskDescription;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/mw$TaskDescription;-><init>(Lo/mw$4;)V

    iput-object p1, p0, Lo/mw;->a:Lo/mw$TaskDescription;

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/mw;)V
    .locals 0

    invoke-direct {p0}, Lo/mw;->l()V

    return-void
.end method

.method private a(Lcom/netflix/android/org/json/JSONObject;Z)Z
    .locals 6

    const-string v0, "retry"

    .line 462
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 466
    :cond_0
    iget v1, p0, Lo/mw;->l:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lo/mw;->l:I

    .line 467
    iget v1, p0, Lo/mw;->l:I

    const/4 v4, 0x5

    const-string v5, "nf_msl_agent"

    if-le v1, v4, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 468
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    iget p2, p0, Lo/mw;->l:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Reached maximal number (%d) of retries %d in general"

    invoke-static {v5, p2, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 472
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "delay"

    .line 473
    invoke-virtual {p1, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    if-eqz p2, :cond_2

    .line 476
    invoke-direct {p0, v3}, Lo/mw;->b(Z)V

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    new-array p2, v3, [Ljava/lang/Object;

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Explicit retry in %d seconds"

    invoke-static {v5, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    invoke-virtual {p0}, Lo/mw;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lo/my;

    invoke-direct {v0, p0}, Lo/my;-><init>(Lo/mw;)V

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string p1, "Delay is not found, retry now."

    .line 485
    invoke-static {v5, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    iget-object p2, p0, Lo/mw;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    :goto_0
    return v3
.end method

.method private a(Lo/np;)Z
    .locals 6

    .line 937
    instance-of v0, p1, Lo/nj;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 939
    move-object v0, p1

    check-cast v0, Lo/nj;

    .line 940
    invoke-virtual {v0}, Lo/nj;->M_()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v4, "nf_msl_agent"

    const-string v5, "Falkor MSL request profile GUID override found %s"

    .line 942
    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 943
    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b(Ljava/lang/String;)Lo/zX;

    move-result-object v3

    if-nez v3, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Falkor MSL request profile GUID override found %s, but userIdToken is NOT found!"

    .line 945
    invoke-static {v4, v0, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 946
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cJ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p1, v0}, Lo/np;->d(Lcom/android/volley/VolleyError;)V

    return v1

    .line 949
    :cond_0
    invoke-virtual {p1, v3}, Lo/np;->c(Lo/zX;)V

    return v2

    :cond_1
    return v1
.end method

.method static synthetic b(Lo/mw;)V
    .locals 0

    invoke-direct {p0}, Lo/mw;->o()V

    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, v0, v0, p1}, Lo/mw;->c(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method private b(Lcom/netflix/android/org/json/JSONObject;)[B
    .locals 6

    const-string v0, "provision"

    .line 410
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 414
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    const-string v0, "error"

    .line 415
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "nf_msl_agent"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p1, v0, v5}, Lcom/netflix/android/org/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "Failed to get provisioning response via appboot, code %d"

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    :cond_1
    const-string v0, "message"

    .line 423
    invoke-virtual {p1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get provisioning response via appboot, no error code, but also no response!"

    .line 425
    invoke-static {v4, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string v1, "Received provisioning response via appboot, %s"

    .line 429
    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    :try_start_0
    invoke-static {p1}, Lo/adl;->b(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Failed to decode Base64 received response!"

    .line 435
    invoke-static {v4, p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v2
.end method

.method private c(Lo/ahF;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 4

    .line 268
    invoke-static {p1}, Lo/adT;->e(Lo/ahF;)Z

    move-result v0

    const-string v1, "nf_msl_agent"

    if-eqz v0, :cond_0

    const-string p1, "Our device is one of black listed, we need to default to legacy crypto and offline is NOT supported!"

    .line 269
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lo/mw;->g()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    return-object p1

    .line 273
    :cond_0
    invoke-static {p1}, Lo/adT;->c(Lo/ahF;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Famous retry request on  error code 207003"

    .line 274
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget p1, p0, Lo/mw;->l:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/mw;->l:I

    .line 276
    iget p1, p0, Lo/mw;->l:I

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    iget v2, p0, Lo/mw;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "Reached maximal number (%d) of retries %d in general"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 278
    sget-object p1, Lo/LegacyErrorStrings;->T:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 3

    const-string v0, "ssltruststore"

    .line 634
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ssltruststore"

    .line 635
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    const-string v0, "data"

    .line 636
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lo/mw;->g:Ljava/util/List;

    monitor-enter v0

    .line 639
    :try_start_0
    iput-object p1, p0, Lo/mw;->i:Ljava/lang/String;

    .line 640
    iget-object p1, p0, Lo/mw;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/zE$ActionBar;

    .line 641
    iget-object v2, p0, Lo/mw;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/zE$ActionBar;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Lcom/netflix/android/org/json/JSONObject;J)V
    .locals 4

    const-string v0, "servertime_seconds"

    .line 620
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/mw;->h:J

    .line 625
    iget-wide v0, p0, Lo/mw;->h:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr p2, v2

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Lo/aey;->e(J)V

    .line 626
    iget-object p1, p0, Lo/mw;->f:Lo/zE$StateListAnimator;

    if-eqz p1, :cond_0

    const-string p1, "nf_msl_agent"

    const-string p2, "Updating server time to nrd."

    .line 627
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object p1, p0, Lo/mw;->f:Lo/zE$StateListAnimator;

    iget-wide p2, p0, Lo/mw;->h:J

    invoke-interface {p1, p2, p3}, Lo/zE$StateListAnimator;->c(J)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/mw;)V
    .locals 0

    invoke-direct {p0}, Lo/mw;->m()V

    return-void
.end method

.method private c(Lo/np;)V
    .locals 2

    .line 920
    invoke-direct {p0, p1}, Lo/mw;->a(Lo/np;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "nf_msl_agent"

    const-string v1, "Falkor MSL Request %s is using its own MSLUserCredentialRegistry "

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 925
    :cond_0
    invoke-virtual {p1}, Lo/np;->Z()Lo/zX;

    move-result-object v0

    if-nez v0, :cond_1

    .line 926
    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->j()Lo/zX;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/np;->c(Lo/zX;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/netflix/android/org/json/JSONObject;Z)Z
    .locals 4

    const-string v0, "error"

    .line 500
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 504
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    .line 506
    invoke-direct {p0, p1, p2}, Lo/mw;->e(Lcom/netflix/android/org/json/JSONObject;Z)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string v1, "nf_msl_agent"

    const-string v3, "handleError:: not handling error %s"

    .line 507
    invoke-static {v1, v3, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    new-instance p2, Lcom/netflix/msl/MslException;

    sget-object v1, Lo/agA;->e:Lo/agz;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Unhandled error in appboot response (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p2
.end method

.method private c(Ljava/lang/String;[BZ)[B
    .locals 4

    const-string v0, "nf_msl_agent"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "AppBoot request with provisiong data"

    .line 350
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0, v1, v1, p2}, Lo/mB;->e(Ljava/lang/Long;Ljava/lang/Long;[B)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "Regular appBoot request"

    .line 353
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p2, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {p2, v1, v1}, Lo/mB;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p2

    .line 361
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 362
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    iget-object p1, p0, Lo/mw;->e:Lo/mB;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lo/mB;->e(Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    goto :goto_1

    .line 365
    :cond_1
    iget-object v2, p0, Lo/mw;->e:Lo/mB;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lo/mB;->c(Ljava/lang/String;Lcom/netflix/android/org/json/JSONObject;Ljava/util/List;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p1

    .line 367
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 374
    invoke-direct {p0, p1}, Lo/mw;->b(Lcom/netflix/android/org/json/JSONObject;)[B

    move-result-object p2

    .line 375
    invoke-direct {p0, p1, v2, v3, p3}, Lo/mw;->e(Lcom/netflix/android/org/json/JSONObject;JZ)V

    return-object p2
.end method

.method private d(Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 4

    const-string v0, "nf_msl_agent"

    const-string v1, "Handling action ID 13..."

    .line 608
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    invoke-interface {v1}, Lo/bO;->e()Lo/hT;

    move-result-object v1

    invoke-virtual {p0}, Lo/mw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3, p1}, Lo/hT;->c(Landroid/content/Context;Lo/zE;Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/android/org/json/JSONObject;)Lo/hR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 611
    invoke-virtual {p0}, Lo/mw;->getErrorHandler()Lo/zF;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/zF;->d(Lo/hR;)Z

    const-string p1, "Error handler added for action ID 13."

    .line 612
    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private d(Lcom/netflix/android/org/json/JSONObject;Z)Z
    .locals 4

    const-string v0, "nf_msl_agent"

    const-string v1, "Handling action ID 7, change appboot url and retry appboot..."

    .line 579
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "appbootendpoint"

    .line 580
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p1, "New appboot server URL not found. Not expected!"

    .line 581
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 585
    :cond_0
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-static {p1}, Lo/afT;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "New appboot server URL found, but is not proper web URL: %s. Not expected!"

    .line 587
    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 593
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lo/mw;->c(Ljava/lang/String;[BZ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Failed to re-execute AppBoot with new URL %son actionid 7"

    .line 595
    invoke-static {v0, p2, p1, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 598
    :cond_2
    invoke-virtual {p0}, Lo/mw;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lo/mA;

    invoke-direct {p2, p0}, Lo/mA;-><init>(Lo/mw;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v2
.end method

.method private d(Ljava/lang/String;Z)Z
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "nf_msl_agent"

    const-string v4, "Handling %s, retry appboot..."

    .line 547
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    iget v1, p0, Lo/mw;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/mw;->l:I

    .line 549
    iget v1, p0, Lo/mw;->l:I

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    if-le v1, v5, :cond_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v6, p2, v2

    .line 550
    iget v1, p0, Lo/mw;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    aput-object p1, p2, v7

    const-string p1, "Reached maximal number (%d) of retries %d for %s"

    invoke-static {v3, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 554
    :cond_0
    iget-object v1, p0, Lo/mw;->n:Lo/afJ;

    invoke-interface {v1}, Lo/afJ;->a()Z

    move-result v1

    if-nez v1, :cond_1

    new-array p2, v7, [Ljava/lang/Object;

    .line 555
    iget v1, p0, Lo/mw;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    aput-object p1, p2, v0

    const-string p1, "Can not retry anymore using backoff policy on %s, attempt %d"

    invoke-static {v3, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 559
    :cond_1
    iget-object v1, p0, Lo/mw;->n:Lo/afJ;

    invoke-interface {v1}, Lo/afJ;->b()J

    move-result-wide v8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 561
    iget v5, p0, Lo/mw;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    aput-object v6, v1, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v7

    aput-object p1, v1, v4

    const-string v4, "Retry # %d for %s (max %d) in %d ms"

    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_2

    .line 564
    :try_start_0
    invoke-direct {p0, v2}, Lo/mw;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-array v1, v7, [Ljava/lang/Object;

    .line 566
    iget v4, p0, Lo/mw;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "Failed to execute AppBoot for %s on %d retry"

    invoke-static {v3, p2, p1, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 570
    :cond_2
    invoke-virtual {p0}, Lo/mw;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lo/mx;

    invoke-direct {p2, p0}, Lo/mx;-><init>(Lo/mw;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v0
.end method

.method private d(Z)Z
    .locals 1

    const-string v0, "action ID 2"

    .line 535
    invoke-direct {p0, v0, p1}, Lo/mw;->d(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/netflix/android/org/json/JSONObject;JZ)V
    .locals 2

    .line 391
    invoke-direct {p0, p1, p4}, Lo/mw;->a(Lcom/netflix/android/org/json/JSONObject;Z)Z

    move-result v0

    const-string v1, "nf_msl_agent"

    if-eqz v0, :cond_0

    const-string p1, "Explicit retry on server response..."

    .line 392
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 396
    :cond_0
    invoke-direct {p0, p1, p4}, Lo/mw;->e(Lcom/netflix/android/org/json/JSONObject;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Explicit retry on server response for action ID..."

    .line 397
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 401
    :cond_1
    invoke-direct {p0, p1, p4}, Lo/mw;->c(Lcom/netflix/android/org/json/JSONObject;Z)Z

    .line 402
    invoke-direct {p0, p1, p2, p3}, Lo/mw;->c(Lcom/netflix/android/org/json/JSONObject;J)V

    .line 403
    invoke-direct {p0, p1}, Lo/mw;->c(Lcom/netflix/android/org/json/JSONObject;)V

    .line 405
    iget-object p1, p0, Lo/mw;->m:Lo/nc;

    invoke-virtual {p1}, Lo/nc;->e()V

    return-void
.end method

.method static synthetic e(Lo/mw;)V
    .locals 0

    invoke-direct {p0}, Lo/mw;->n()V

    return-void
.end method

.method private e(Lcom/netflix/android/org/json/JSONObject;Z)Z
    .locals 3

    const-string v0, "actionid"

    .line 516
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "nf_msl_agent"

    const-string p2, "Error found, but not actionid. Not expected!"

    .line 517
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 521
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 p2, 0xd

    if-eq v0, p2, :cond_1

    return v2

    .line 528
    :cond_1
    invoke-direct {p0, p1}, Lo/mw;->d(Lcom/netflix/android/org/json/JSONObject;)Z

    move-result p1

    return p1

    .line 526
    :cond_2
    invoke-direct {p0, p1, p2}, Lo/mw;->d(Lcom/netflix/android/org/json/JSONObject;Z)Z

    move-result p1

    return p1

    .line 524
    :cond_3
    invoke-direct {p0, p2}, Lo/mw;->d(Z)Z

    move-result p1

    return p1
.end method

.method private f()V
    .locals 0

    return-void
.end method

.method private g()Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    .line 287
    iget-object v0, p0, Lo/mw;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    move-result-object v0

    .line 288
    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    if-ne v0, v1, :cond_0

    .line 289
    sget-object v0, Lo/LegacyErrorStrings;->S:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lo/mw;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    const-string v1, "MSL_BLACKLISTED_DEVICE"

    invoke-interface {v0, v1}, Lo/zz;->b(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lo/LegacyErrorStrings;->Q:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0
.end method

.method private h()Lcom/netflix/mediaclient/android/app/Status;
    .locals 4

    const-string v0, "nf_msl_agent"

    .line 234
    :try_start_0
    invoke-direct {p0}, Lo/mw;->j()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MSLAgent::doInit failed!"

    .line 246
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    sget-object v0, Lo/LegacyErrorStrings;->ad:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "MSLAgent::doInit appboot failed!"

    .line 238
    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->d()Lo/ahF;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/mw;->c(Lo/ahF;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "MSLAgent::doInit failed."

    .line 241
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 249
    :cond_0
    :goto_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0
.end method

.method private i()Lcom/netflix/mediaclient/android/app/Status;
    .locals 5

    .line 218
    invoke-direct {p0}, Lo/mw;->f()V

    .line 221
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->b:Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    invoke-virtual {p0}, Lo/mw;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->a(Lo/ds;)V

    .line 222
    new-instance v0, Lo/mB;

    invoke-virtual {p0}, Lo/mw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lo/mw;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    iget-object v4, p0, Lo/mw;->d:Lo/H;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/mB;-><init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/H;)V

    iput-object v0, p0, Lo/mw;->e:Lo/mB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_msl_agent"

    const-string v3, "MSLAgent::doInit failed!"

    .line 224
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    sget-object v0, Lo/LegacyErrorStrings;->ad:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 314
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0}, Lo/mB;->b()Z

    move-result v0

    const-string v1, "nf_msl_agent"

    if-eqz v0, :cond_0

    const-string v0, "Execute AppBoot synchronously, first app launch..."

    .line 315
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 316
    invoke-direct {p0, v0}, Lo/mw;->b(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Execute AppBoot asynchronously, regular app launch..."

    .line 318
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    iget-object v1, p0, Lo/mw;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static k()Lo/afO;
    .locals 9

    .line 989
    new-instance v8, Lo/afO;

    const/16 v1, 0x3e8

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const v6, 0xea60

    const v7, 0xdbba0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/afO;-><init>(IDDII)V

    return-object v8
.end method

.method private synthetic l()V
    .locals 2

    .line 571
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    iget-object v1, p0, Lo/mw;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 482
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    iget-object v1, p0, Lo/mw;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic n()V
    .locals 4

    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-direct {p0, v0}, Lo/mw;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "nf_msl_agent"

    const-string v3, "Failed to execute AppBoot asynchronously"

    .line 158
    invoke-static {v2, v1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 599
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    iget-object v1, p0, Lo/mw;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 684
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Lo/mB;->f()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 1

    .line 772
    invoke-virtual {p0}, Lo/mw;->getResourceFetcher()Lo/xZ;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/xZ;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 701
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 705
    :cond_0
    invoke-virtual {v0, p1}, Lo/mB;->b(Ljava/lang/String;)Lo/ahX;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "msl"

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lo/aid;
    .locals 4

    .line 656
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0, p1}, Lo/mB;->b(Ljava/lang/String;)Lo/ahX;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "nf_msl_agent"

    const-string v3, " userIdToken for oldUserId %s is null, trying with some userIdToken as a recovery.."

    .line 658
    invoke-static {p1, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 659
    iget-object v1, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v1}, Lo/mB;->a()Lo/ahX;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "don\'t have any userIdTokens.. can\'t switch profile to %s"

    .line 663
    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v0, v1

    .line 668
    :cond_1
    new-instance p1, Lo/aid;

    invoke-direct {p1, v0, p2}, Lo/aid;-><init>(Lo/ahX;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Lo/zE$Activity;
    .locals 1

    .line 692
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 695
    :cond_0
    invoke-virtual {v0}, Lo/mB;->g()Lo/zE$Activity;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 1

    .line 888
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0, p1, p2}, Lo/mB;->b(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 1013
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0, p1}, Lo/mB;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()Lo/zE$TaskDescription;
    .locals 2

    .line 731
    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/mB;->c(Ljava/lang/String;)Lo/zE$TaskDescription;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    .line 255
    invoke-direct {p0}, Lo/mw;->h()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    const-string v1, "nf_msl_agent"

    const-string v2, "MSLAgent::doInit with delayed crypto init done"

    .line 256
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 1

    .line 883
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0, p1}, Lo/mB;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 298
    invoke-super {p0}, Lo/bV;->destroy()V

    .line 300
    iget-object v0, p0, Lo/mw;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lo/mw;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/mw;->j:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 3

    const-string v0, "nf_msl_agent"

    const-string v1, "MSLAgent::doInit start "

    .line 190
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lo/mw;->i()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 192
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MSLAgent::doInit internalInit error done"

    .line 193
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, v1}, Lo/mw;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 198
    :cond_0
    const-class v1, Lo/dm;

    invoke-static {v1, p0}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lo/mw;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->ar()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSLAgent::doInit done for delayed crypto init workflow"

    .line 201
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/mw;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0}, Lo/mw;->h()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    const-string v2, "MSLAgent::doInit regular workflow done"

    .line 205
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v1}, Lo/mw;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 208
    iget-object v0, p0, Lo/mw;->m:Lo/nc;

    invoke-virtual {v0}, Lo/nc;->e()V

    :goto_0
    return-void
.end method

.method public e()Lo/aho;
    .locals 1

    .line 741
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 745
    :cond_0
    invoke-virtual {v0}, Lo/mB;->j()Lo/aho;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {v0, p1, p2}, Lo/mB;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lo/zW;)V
    .locals 3

    .line 893
    check-cast p1, Lo/np;

    .line 896
    :try_start_0
    iget-object v0, p0, Lo/mw;->e:Lo/mB;

    invoke-virtual {p1, v0}, Lo/np;->c(Lo/mB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-virtual {p0}, Lo/mw;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/np;->d(Lo/cz;)V

    .line 903
    invoke-virtual {p0}, Lo/mw;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/np;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 904
    invoke-virtual {p1, p0}, Lo/np;->c(Lo/zE;)V

    .line 905
    invoke-virtual {p0}, Lo/mw;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/np;->c(Lo/zz;)V

    .line 906
    invoke-virtual {p0}, Lo/mw;->getErrorHandler()Lo/zF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/np;->e(Lo/zF;)V

    .line 908
    invoke-virtual {p0}, Lo/mw;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->am()I

    move-result v0

    .line 909
    invoke-virtual {p1, v0}, Lo/np;->e(I)V

    .line 911
    invoke-direct {p0, p1}, Lo/mw;->c(Lo/np;)V

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_msl_agent"

    const-string v2, "Failed to add request! This can happen only when ESN provoder is null, ignore since app is not in working state. Error will be reported to an user by UI,"

    .line 898
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;)[B
    .locals 2

    const-string v0, "nf_msl_agent"

    const-string v1, "Execute AppBoot with provisioning asynchronously, to not block..."

    .line 1004
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-interface {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lo/mw;->c(Ljava/lang/String;[BZ)[B

    move-result-object p1

    return-object p1
.end method
