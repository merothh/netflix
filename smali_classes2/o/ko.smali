.class public Lo/ko;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/zN;
.implements Lo/kR;
.implements Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;
.implements Lo/kF$TaskDescription;
.implements Lo/kG$Application;
.implements Lo/kz$Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ko$TaskDescription;,
        Lo/ko$Activity;
    }
.end annotation


# instance fields
.field private final A:Lo/ErrorCodes;

.field private B:I

.field private final C:Lo/cz;

.field private D:I

.field private final E:Ljava/lang/Runnable;

.field private F:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Landroid/content/BroadcastReceiver;

.field private final I:Landroid/content/BroadcastReceiver;

.field private a:Lo/kk;

.field private b:Lo/pK;

.field private c:Lo/km;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lo/kI;

.field private f:I

.field private g:Lo/aeM$Application;

.field private h:Lo/Bc;

.field private i:I

.field private j:Lo/aeM$Application;

.field private k:Z

.field private l:Z

.field private m:Lo/la;

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/os/HandlerThread;

.field private q:Landroid/net/wifi/WifiManager$WifiLock;

.field private final r:Landroid/os/Handler;

.field private s:Landroid/os/PowerManager$WakeLock;

.field private t:Lo/kF;

.field private u:Lo/kz;

.field private v:Lo/kO;

.field private final w:Ljava/lang/Object;

.field private x:Lo/kG;

.field private y:Lo/kA;

.field private z:Lo/kv;


# direct methods
.method public constructor <init>(Lo/cz;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 104
    new-instance v0, Lo/aeM$Application;

    invoke-direct {v0}, Lo/aeM$Application;-><init>()V

    iput-object v0, p0, Lo/ko;->j:Lo/aeM$Application;

    .line 105
    new-instance v0, Lo/aeM$Application;

    invoke-direct {v0}, Lo/aeM$Application;-><init>()V

    iput-object v0, p0, Lo/ko;->g:Lo/aeM$Application;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ko;->w:Ljava/lang/Object;

    .line 161
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lo/ko;->F:Lio/reactivex/subjects/PublishSubject;

    .line 817
    new-instance v0, Lo/ko$3;

    invoke-direct {v0, p0}, Lo/ko$3;-><init>(Lo/ko;)V

    iput-object v0, p0, Lo/ko;->G:Landroid/content/BroadcastReceiver;

    .line 1457
    new-instance v0, Lo/ko$4;

    invoke-direct {v0, p0}, Lo/ko$4;-><init>(Lo/ko;)V

    iput-object v0, p0, Lo/ko;->I:Landroid/content/BroadcastReceiver;

    .line 1691
    new-instance v0, Lo/ko$10;

    invoke-direct {v0, p0}, Lo/ko$10;-><init>(Lo/ko;)V

    iput-object v0, p0, Lo/ko;->E:Ljava/lang/Runnable;

    const-string v0, "MdxAgent"

    const-string v1, "MdxAgent: start"

    .line 164
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/ko;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    iput-object p1, p0, Lo/ko;->C:Lo/cz;

    .line 168
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "MdxAgentWorker"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    .line 169
    iget-object p1, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/ko;->r:Landroid/os/Handler;

    .line 171
    sget-object p1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p1

    iput-object p1, p0, Lo/ko;->A:Lo/ErrorCodes;

    .line 172
    const-class p1, Lo/zN;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic A(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->I()V

    return-void
.end method

.method private B()Z
    .locals 3

    .line 410
    invoke-direct {p0}, Lo/ko;->C()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MdxAgent"

    if-nez v0, :cond_0

    const-string v0, "canCreateCastStack - cast not enabled."

    .line 411
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 415
    :cond_0
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v0}, Lo/kI;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "canCreateCastStack - cast stack already added"

    .line 416
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic C(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->R()V

    return-void
.end method

.method private C()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lo/ko;->C:Lo/cz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/cz;->x()Lo/cO;

    move-result-object v0

    invoke-interface {v0}, Lo/cO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D()V
    .locals 2

    .line 176
    iget-object v0, p0, Lo/ko;->F:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lo/ko;->F:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method static synthetic D(Lo/ko;)V
    .locals 0

    invoke-direct {p0}, Lo/ko;->S()V

    return-void
.end method

.method private E()V
    .locals 3

    .line 1257
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKSTART"

    .line 1258
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    .line 1259
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_SIMPLE_PLAYBACKSTATE"

    .line 1260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    .line 1261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    .line 1262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 1263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 1264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1266
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ko;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private F()Z
    .locals 2

    .line 745
    invoke-virtual {p0}, Lo/ko;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G()V
    .locals 3

    .line 718
    iget-object v0, p0, Lo/ko;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "MdxAgent"

    if-eqz v0, :cond_0

    const-string v0, "finishMdxStart starting the mdx"

    .line 719
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lo/ko;->v:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->b()V

    .line 721
    iget-object v0, p0, Lo/ko;->v:Lo/kO;

    invoke-virtual {v0}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a()V

    .line 722
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v0}, Lo/kI;->i()V

    .line 723
    iget-object v0, p0, Lo/ko;->t:Lo/kF;

    invoke-virtual {v0}, Lo/kF;->d()V

    goto :goto_0

    :cond_0
    const-string v0, "finishMdxStart already started"

    .line 725
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private H()V
    .locals 8

    .line 804
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    if-nez v0, :cond_0

    .line 805
    const-class v0, Lo/Cm;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/Cm;

    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v5, p0, Lo/ko;->y:Lo/kA;

    iget-object v0, p0, Lo/ko;->C:Lo/cz;

    .line 807
    invoke-interface {v0}, Lo/cz;->x()Lo/cO;

    move-result-object v6

    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    .line 808
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lo/kI;->k(Ljava/lang/String;)Z

    move-result v7

    move-object v4, p0

    .line 805
    invoke-interface/range {v1 .. v7}, Lo/Cm;->b(Landroid/content/Context;ZLcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;Lo/SuggestionsAdapter;Lo/cO;Z)Lo/la;

    move-result-object v0

    iput-object v0, p0, Lo/ko;->m:Lo/la;

    :cond_0
    return-void
.end method

.method private I()V
    .locals 2

    .line 731
    iget-object v0, p0, Lo/ko;->r:Landroid/os/Handler;

    new-instance v1, Lo/ko$1;

    invoke-direct {v1, p0}, Lo/ko$1;-><init>(Lo/ko;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private J()V
    .locals 3

    .line 1271
    :try_start_0
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/ko;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister mStartStopReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdxAgent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private K()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1426
    invoke-direct {p0}, Lo/ko;->N()V

    .line 1427
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->d(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const-string v1, "MdxAgent"

    if-eqz v0, :cond_0

    const-string v2, "WiFi lock acquiring..."

    .line 1429
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 1430
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lo/ko;->q:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1431
    iget-object v0, p0, Lo/ko;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const-string v0, "WiFi lock acquired."

    .line 1432
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_0
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 1435
    iget-object v2, p0, Lo/ko;->s:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1436
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lo/ko;->s:Landroid/os/PowerManager$WakeLock;

    .line 1438
    :cond_1
    iget-object v0, p0, Lo/ko;->s:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    iget-object v0, p0, Lo/ko;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method private L()V
    .locals 1

    .line 1300
    new-instance v0, Lo/aeM$Application;

    invoke-direct {v0}, Lo/aeM$Application;-><init>()V

    iput-object v0, p0, Lo/ko;->j:Lo/aeM$Application;

    const/4 v0, 0x0

    .line 1301
    iput-object v0, p0, Lo/ko;->h:Lo/Bc;

    return-void
.end method

.method private M()V
    .locals 3

    .line 1491
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/ko;->I:Landroid/content/BroadcastReceiver;

    .line 1493
    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v2

    .line 1491
    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private N()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lo/ko;->q:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MdxAgent"

    const-string v1, "WiFi lock was held, release..."

    .line 1445
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v1, p0, Lo/ko;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const-string v1, "WiFi lock released."

    .line 1447
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_0
    iget-object v0, p0, Lo/ko;->s:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    iget-object v0, p0, Lo/ko;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private P()V
    .locals 3

    .line 1498
    :try_start_0
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/ko;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterUserAgentReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdxAgent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private R()V
    .locals 9

    .line 1702
    iget v0, p0, Lo/ko;->D:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/ko;->D:I

    .line 1703
    iget v0, p0, Lo/ko;->B:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/ko;->B:I

    .line 1705
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1706
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1709
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "mobile"

    if-eqz v2, :cond_3

    .line 1713
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    .line 1714
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    .line 1716
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v1, :cond_1

    .line 1718
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->d(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1720
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :cond_0
    const-string v0, "WIFI"

    goto :goto_0

    .line 1726
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    const-string v0, "ETHERNET"

    :goto_0
    move-object v5, v0

    .line 1730
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "unknown"

    const/4 v6, 0x0

    .line 1733
    :goto_1
    invoke-static {v3}, Lo/mo;->e(Ljava/lang/String;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 1736
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v5, v2, v1

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v1

    const/4 v1, 0x3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string v1, "MdxAgent"

    const-string v7, "handleConnectivityChange currentTargetUuid=%s %s %b %s %s"

    .line 1735
    invoke-static {v1, v7, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1738
    new-instance v2, Lo/kv;

    invoke-direct {v2, v5, v0, v3, v6}, Lo/kv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1740
    iget-object v7, p0, Lo/ko;->z:Lo/kv;

    invoke-virtual {v2, v7}, Lo/kv;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v0, "handleConnectivityChange event, same network state. ignored"

    .line 1741
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1745
    :cond_4
    invoke-virtual {v2}, Lo/kv;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lo/ko;->z:Lo/kv;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lo/kv;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "handleConnectivityChange, network changed."

    .line 1750
    invoke-static {v1, v7}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-direct {p0, v4}, Lo/ko;->c(Z)V

    .line 1754
    :cond_5
    iget-object v1, p0, Lo/ko;->e:Lo/kI;

    if-eqz v1, :cond_6

    .line 1755
    invoke-virtual {v1, v5, v6, v3, v0}, Lo/kI;->d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1758
    :cond_6
    iput-object v2, p0, Lo/ko;->z:Lo/kv;

    .line 1759
    iget-object v0, p0, Lo/ko;->z:Lo/kv;

    invoke-virtual {v0}, Lo/kv;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/ko;->c(Z)V

    return-void
.end method

.method private synthetic S()V
    .locals 0

    .line 679
    invoke-virtual {p0}, Lo/ko;->s()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SKIP_INTRO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "segmentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    invoke-virtual {p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "invocSource"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    invoke-direct {p0, v0, p3}, Lo/ko;->e(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/reactivex/subjects/CompletableSubject;)V
    .locals 2

    .line 389
    invoke-direct {p0}, Lo/ko;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MdxAgent"

    const-string v1, "createCastStack - cannot create cast stack"

    .line 390
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Lio/reactivex/subjects/CompletableSubject;->onComplete()V

    return-void

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lo/ko;->d(Lio/reactivex/subjects/CompletableSubject;)V

    return-void
.end method

.method static synthetic a(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->H()V

    return-void
.end method

.method static synthetic a(Lo/ko;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/ko;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/ko;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/ko;->e(Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 13

    if-eqz p2, :cond_0

    .line 1238
    iget-object v0, p0, Lo/ko;->g:Lo/aeM$Application;

    iget-boolean v0, v0, Lo/aeM$Application;->d:Z

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-boolean v0, v0, Lo/aeM$Application;->d:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    .line 1241
    iget-object v0, p0, Lo/ko;->g:Lo/aeM$Application;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/ko;->j:Lo/aeM$Application;

    :goto_0
    iget-object v0, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 1244
    new-instance v6, Lo/ko$TaskDescription;

    invoke-direct {v6, p0, p1, p2, v0}, Lo/ko$TaskDescription;-><init>(Lo/ko;ZZLjava/lang/String;)V

    .line 1246
    const-class p1, Lo/hW;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/hW;

    .line 1247
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 1246
    invoke-interface/range {v1 .. v6}, Lo/hW;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    goto :goto_1

    .line 1249
    :cond_3
    new-instance v12, Lo/ko$Activity;

    invoke-direct {v12, p0, p1}, Lo/ko$Activity;-><init>(Lo/ko;Z)V

    .line 1251
    const-class p1, Lo/hW;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lo/hW;

    iget-object p1, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v8, p1, Lo/aeM$Application;->e:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-interface/range {v7 .. v12}, Lo/hW;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lo/ko;Z)Landroid/util/Pair;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/ko;->d(Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/ko;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1570
    iput-object p1, p0, Lo/ko;->o:Landroid/graphics/Bitmap;

    .line 1571
    iget-object p1, p0, Lo/ko;->y:Lo/kA;

    if-eqz p1, :cond_0

    .line 1572
    iget-object v0, p0, Lo/ko;->o:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lo/kA;->c(Landroid/graphics/Bitmap;)V

    .line 1575
    :cond_0
    iget-object p1, p0, Lo/ko;->m:Lo/la;

    if-eqz p1, :cond_1

    .line 1576
    iget-object v0, p0, Lo/ko;->o:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lo/la;->d(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lo/ko;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/ko;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lo/ko;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/ko;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/ko;ZZ)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lo/ko;->a(ZZ)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 1289
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v0

    .line 1291
    iget-object v1, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v1, v0}, Lo/kI;->j(Ljava/lang/String;)V

    .line 1292
    iget-object v1, p0, Lo/ko;->a:Lo/kk;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->v:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v2

    const-string v3, "stop connecting to target"

    invoke-virtual {v1, v0, v2, v3}, Lo/kk;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1293
    iget-object v1, p0, Lo/ko;->a:Lo/kk;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lo/kk;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1307
    invoke-direct {p0}, Lo/ko;->H()V

    .line 1308
    iget-object v0, p0, Lo/ko;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 1309
    :try_start_0
    iget-object v1, p0, Lo/ko;->m:Lo/la;

    invoke-interface {v1, p1, p2, p3}, Lo/la;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object p1, p0, Lo/ko;->y:Lo/kA;

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1314
    :goto_0
    iget-object p1, p0, Lo/ko;->y:Lo/kA;

    invoke-virtual {p1, p2, p4}, Lo/kA;->d(Ljava/lang/String;Z)V

    .line 1316
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1025
    iput-boolean v0, p0, Lo/ko;->l:Z

    const-string v1, "postplayState"

    .line 1027
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 1031
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1034
    iput-boolean v1, p0, Lo/ko;->l:Z

    .line 1035
    new-instance v2, Lo/zV;

    invoke-direct {v2, p1}, Lo/zV;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v2}, Lo/zV;->a()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lo/zV;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic c(Lo/ko;Lo/Bc;)Lo/Bc;
    .locals 0

    .line 86
    iput-object p1, p0, Lo/ko;->h:Lo/Bc;

    return-object p1
.end method

.method static synthetic c(Lo/ko;)Lo/kO;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->v:Lo/kO;

    return-object p0
.end method

.method static synthetic c(Lo/ko;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ko;->b(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 1763
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1766
    invoke-direct {p0}, Lo/ko;->L()V

    .line 1769
    :cond_0
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ko;->a:Lo/kk;

    if-eqz v0, :cond_1

    .line 1771
    invoke-virtual {v0, p1}, Lo/kk;->a(Z)V

    if-nez p1, :cond_1

    .line 1772
    iget-object p1, p0, Lo/ko;->m:Lo/la;

    if-eqz p1, :cond_1

    .line 1773
    invoke-virtual {p0}, Lo/ko;->getServiceNotificationHelper()Lo/Ac;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/la;->b(Lo/Ac;)V

    :cond_1
    return-void
.end method

.method private d(Z)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .line 609
    invoke-virtual {p0}, Lo/ko;->n()Lo/aeM$Application;

    move-result-object v0

    .line 611
    invoke-direct {p0}, Lo/ko;->H()V

    const-string v1, "MdxAgent"

    if-eqz v0, :cond_4

    .line 614
    iget-boolean v2, v0, Lo/aeM$Application;->d:Z

    iget-object v3, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-boolean v3, v3, Lo/aeM$Application;->d:Z

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    iget-boolean v2, v0, Lo/aeM$Application;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    iget-object v3, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v3, v3, Lo/aeM$Application;->b:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v2, v0, Lo/aeM$Application;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v3, v3, Lo/aeM$Application;->e:Ljava/lang/String;

    .line 616
    invoke-static {v2, v3}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "MdxAgent: videoIds are all same"

    .line 623
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lo/ko;->a:Lo/kk;

    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/kk;->e(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lo/ko;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 628
    iget-object v1, p0, Lo/ko;->m:Lo/la;

    invoke-interface {v1, v0}, Lo/la;->b(Landroid/graphics/Bitmap;)V

    .line 631
    :cond_2
    iget-object v0, p0, Lo/ko;->h:Lo/Bc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-boolean v0, v0, Lo/aeM$Application;->d:Z

    if-nez v0, :cond_5

    .line 632
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    iget-object v1, p0, Lo/ko;->h:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, v1, v2}, Lo/la;->b(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 618
    :cond_3
    :goto_0
    iput-object v0, p0, Lo/ko;->j:Lo/aeM$Application;

    .line 619
    invoke-direct {p0, v4, p1}, Lo/ko;->a(ZZ)V

    .line 620
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->c(Z)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "MdxAgent: new videoIds is null"

    .line 636
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_5
    :goto_1
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    invoke-interface {v0, p1}, Lo/la;->c(Z)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lo/ko;Lo/aeM$Application;)Lo/aeM$Application;
    .locals 0

    .line 86
    iput-object p1, p0, Lo/ko;->g:Lo/aeM$Application;

    return-object p1
.end method

.method private d(Landroid/content/Context;I)V
    .locals 2

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETVOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "volume"

    .line 596
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private d(Lio/reactivex/subjects/CompletableSubject;)V
    .locals 3

    .line 399
    invoke-direct {p0}, Lo/ko;->B()Z

    move-result v0

    const-string v1, "MdxAgent"

    if-nez v0, :cond_0

    const-string v0, "initCaf - cannot create cast stack"

    .line 400
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p1}, Lio/reactivex/subjects/CompletableSubject;->onComplete()V

    return-void

    :cond_0
    const-string v0, "initCaf - enabling CAF"

    .line 405
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lo/ko;->getMSLClient()Lo/zE;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lo/kI;->d(Landroid/content/Context;Lo/zE;Lio/reactivex/subjects/CompletableSubject;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 766
    iget-object v0, p0, Lo/ko;->b:Lo/pK;

    if-eqz v0, :cond_0

    .line 767
    invoke-interface {v0}, Lo/pK;->c()V

    .line 769
    :cond_0
    new-instance v0, Lo/pJ;

    invoke-virtual {p0}, Lo/ko;->getResourceFetcher()Lo/xZ;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/pJ;-><init>(Lo/xZ;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ko;->b:Lo/pK;

    return-void
.end method

.method static synthetic d(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->G()V

    return-void
.end method

.method private e(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 1402
    invoke-direct {p0, p1, v0}, Lo/ko;->e(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1406
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    invoke-interface {v1}, Lo/bO;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 1407
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1408
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Lo/ko;Lo/aeM$Application;)Lo/aeM$Application;
    .locals 0

    .line 86
    iput-object p1, p0, Lo/ko;->j:Lo/aeM$Application;

    return-object p1
.end method

.method static synthetic e(Lo/ko;)Lo/kI;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->e:Lo/kI;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    .line 653
    invoke-virtual {p0}, Lo/ko;->isReady()Z

    move-result v0

    const-string v1, "MdxAgent"

    if-nez v0, :cond_0

    const-string v0, "notifyUserProfileActivation MdxAgent not ready, ignoring"

    .line 654
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "MdxAgent: user login"

    .line 658
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "MdxAgent: user logout"

    .line 661
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 663
    invoke-virtual {p0, p1}, Lo/ko;->b(Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {p1}, Lo/kI;->g()V

    .line 666
    invoke-direct {p0}, Lo/ko;->L()V

    const/4 p1, 0x1

    .line 667
    invoke-direct {p0, p1}, Lo/ko;->b(Z)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/ko;Landroid/content/Intent;)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lo/ko;->b(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lo/ko;)Lo/Ac;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lo/ko;->getServiceNotificationHelper()Lo/Ac;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lo/ko;)Lo/kk;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->a:Lo/kk;

    return-object p0
.end method

.method private g(Ljava/lang/String;)V
    .locals 4

    .line 1043
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    new-instance v0, Lo/aeM$Application;

    invoke-direct {v0}, Lo/aeM$Application;-><init>()V

    iput-object v0, p0, Lo/ko;->g:Lo/aeM$Application;

    .line 1046
    iget-object v0, p0, Lo/ko;->g:Lo/aeM$Application;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/aeM$Application;->d:Z

    .line 1047
    iput-object p1, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 1049
    invoke-direct {p0}, Lo/ko;->H()V

    const/4 p1, 0x0

    .line 1050
    invoke-direct {p0, p1, v1}, Lo/ko;->a(ZZ)V

    .line 1053
    iget-object v0, p0, Lo/ko;->y:Lo/kA;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0, p1, v1}, Lo/kA;->e(ZZ)V

    .line 1058
    :cond_0
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    invoke-direct {p0, v1}, Lo/ko;->d(Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification;

    invoke-virtual {p0}, Lo/ko;->getServiceNotificationHelper()Lo/Ac;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lo/la;->a(Landroid/app/Notification;Lo/Ac;Z)V

    .line 1059
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    invoke-interface {v0, p1, p1, v1}, Lo/la;->e(ZZZ)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->L()V

    return-void
.end method

.method static synthetic i(Lo/ko;)Lo/la;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->m:Lo/la;

    return-object p0
.end method

.method static synthetic j(Lo/ko;)Lo/kA;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->y:Lo/kA;

    return-object p0
.end method

.method static synthetic k(Lo/ko;)Lo/Ac;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lo/ko;->getServiceNotificationHelper()Lo/Ac;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lo/ko;)Lo/Ac;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lo/ko;->getServiceNotificationHelper()Lo/Ac;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lo/ko;)Landroid/graphics/Bitmap;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->o:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic n(Lo/ko;)Lo/kz;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->u:Lo/kz;

    return-object p0
.end method

.method static synthetic o(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->K()V

    return-void
.end method

.method static synthetic p(Lo/ko;)Lo/ErrorCodes;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->A:Lo/ErrorCodes;

    return-object p0
.end method

.method static synthetic q(Lo/ko;)Lo/kG;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->x:Lo/kG;

    return-object p0
.end method

.method static synthetic r(Lo/ko;)Lo/aeM$Application;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->g:Lo/aeM$Application;

    return-object p0
.end method

.method static synthetic s(Lo/ko;)Lo/kF;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->t:Lo/kF;

    return-object p0
.end method

.method static synthetic t(Lo/ko;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/ko;->N()V

    return-void
.end method

.method static synthetic u(Lo/ko;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lo/ko;->k:Z

    return p0
.end method

.method static synthetic v(Lo/ko;)I
    .locals 0

    .line 86
    iget p0, p0, Lo/ko;->f:I

    return p0
.end method

.method static synthetic w(Lo/ko;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lo/ko;)I
    .locals 0

    .line 86
    iget p0, p0, Lo/ko;->i:I

    return p0
.end method

.method static synthetic y(Lo/ko;)Lo/aeM$Application;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->j:Lo/aeM$Application;

    return-object p0
.end method

.method static synthetic z(Lo/ko;)Lo/Bc;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/ko;->h:Lo/Bc;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 2

    const-string v0, "MdxAgent"

    const-string v1, "transfer playback from local to target"

    .line 1668
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a()Landroid/app/PendingIntent;
    .locals 2

    .line 1349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0, v0}, Lo/ko;->e(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;)Landroid/app/PendingIntent;
    .locals 2

    .line 1332
    sget-object v0, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->f:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/ko;->a(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1636
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v0

    .line 1637
    iget-object v1, p0, Lo/ko;->e:Lo/kI;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/kI;->v()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 1639
    iget-object v1, p0, Lo/ko;->v:Lo/kO;

    iget v4, p0, Lo/ko;->D:I

    iget v5, p0, Lo/ko;->B:I

    .line 1640
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->s(Landroid/content/Context;)Z

    move-result v6

    move-object v2, p1

    .line 1639
    invoke-virtual/range {v1 .. v6}, Lo/kO;->c(Ljava/lang/String;Ljava/lang/String;IIZ)V

    const/4 p1, 0x0

    .line 1641
    iput p1, p0, Lo/ko;->B:I

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 10

    .line 461
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v8

    .line 463
    invoke-static {v8}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ko;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/ko;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v0, v8, v9}, Lo/kI;->d(Ljava/lang/String;Z)V

    :cond_0
    new-array v0, v9, [Ljava/lang/Object;

    .line 467
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MdxAgent"

    const-string v3, "handleCommand %s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "com.netflix.mediaclient.intent.category.MDX"

    .line 468
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "uuid"

    const/4 v4, -0x1

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAY_VIDEOIDS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 469
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "catalogId"

    .line 475
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 476
    invoke-static {v0}, Lo/aev;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "Unable to parse catalogID from intent."

    .line 477
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v3, "episodeId"

    .line 480
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 481
    invoke-static {v3}, Lo/aev;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string p1, "Unable to parse episodeId from intent."

    .line 482
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string v5, "trackId"

    .line 486
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_4

    const-string v5, "MdxAgent: MDX_ACTION_PLAY_VIDEOIDS has invalid trackId"

    .line 488
    invoke-static {v1, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0xd2a38f

    .line 493
    :cond_4
    iput v5, p0, Lo/ko;->i:I

    const-string v5, "time"

    .line 494
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lo/ko;->f:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const-string v5, "previewPinProtected"

    .line 498
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lo/ko;->k:Z

    const-string v5, "prereleasePin"

    .line 499
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lo/ko;->n:Ljava/lang/String;

    const-string v5, "playNext"

    .line 510
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 511
    invoke-virtual {p0}, Lo/ko;->q()V

    .line 514
    :cond_6
    iget-object v2, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-boolean v2, v2, Lo/aeM$Application;->d:Z

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v2, v2, Lo/aeM$Application;->e:Ljava/lang/String;

    .line 515
    invoke-static {v2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_7

    iget-object v2, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v2, v2, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 516
    invoke-static {v2, v3}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const-string p1, "MdxAgent: videoIds are same, start play"

    .line 533
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    iget-object p1, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v2, p1, Lo/aeM$Application;->c:Ljava/lang/String;

    iget v3, p0, Lo/ko;->i:I

    iget-object p1, p0, Lo/ko;->j:Lo/aeM$Application;

    iget-object v4, p1, Lo/aeM$Application;->a:Ljava/lang/String;

    iget v5, p0, Lo/ko;->f:I

    iget-boolean v6, p0, Lo/ko;->k:Z

    iget-object v7, p0, Lo/ko;->n:Ljava/lang/String;

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lo/kI;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;)V

    .line 537
    iget-object p1, p0, Lo/ko;->a:Lo/kk;

    invoke-virtual {p1, v8}, Lo/kk;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 518
    :cond_8
    :goto_1
    iget-object v1, p0, Lo/ko;->a:Lo/kk;

    invoke-virtual {v1, v8}, Lo/kk;->b(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lo/ko;->j:Lo/aeM$Application;

    iput-boolean v4, v1, Lo/aeM$Application;->d:Z

    .line 521
    iput-object v0, v1, Lo/aeM$Application;->e:Ljava/lang/String;

    .line 522
    iput-object v3, v1, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lo/ko;->b:Lo/pK;

    if-eqz v0, :cond_9

    .line 526
    invoke-interface {v0}, Lo/pK;->c()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lo/ko;->b:Lo/pK;

    .line 530
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v9, p1}, Lo/ko;->a(ZZ)V

    goto/16 :goto_6

    .line 471
    :cond_a
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdxAgent: MDX_ACTION_PLAY_VIDEOIDS is for uuid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "vs. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 540
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.netflix.mediaclient.intent.action.MDX_CS_CAST_DISCOVERY_ISSUE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 541
    invoke-virtual {p0}, Lo/ko;->f()[Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_d

    if-eqz v8, :cond_d

    .line 545
    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_d

    aget-object v3, p1, v1

    .line 546
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 553
    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "csPage targetListCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_e

    array-length v4, p1

    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentTargetUuid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targetFound="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 556
    iget-object v0, p0, Lo/ko;->v:Lo/kO;

    invoke-virtual {v0, p1}, Lo/kO;->e(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string v0, "com.netflix.mediaclient.intent.category.MDXRCC"

    .line 559
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MdxAgent: get nf_mdx_RemoteControlClient intent"

    .line 560
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION__TOGGLE_PAUSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MdxAgent: get nf_mdx_RemoteControlClient intent toggle pause"

    .line 569
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 574
    invoke-virtual {p0}, Lo/ko;->q()V

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_5

    .line 578
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETVOLUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 579
    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "volume"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lo/ko;->d(Landroid/content/Context;I)V

    .line 582
    :cond_12
    :goto_5
    iget-object v0, p0, Lo/ko;->c:Lo/km;

    invoke-virtual {v0, p1}, Lo/km;->e(Landroid/content/Intent;)V

    :goto_6
    return v9
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v0, p1}, Lo/kI;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v0, p1, p2}, Lo/kI;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1}, Lo/ko;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "mdx"

    return-object v0
.end method

.method public b()Landroid/app/PendingIntent;
    .locals 5

    .line 1376
    iget-object v0, p0, Lo/ko;->h:Lo/Bc;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lo/AS;

    if-eqz v2, :cond_1

    .line 1377
    check-cast v0, Lo/AS;

    .line 1378
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAY_VIDEOIDS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1380
    invoke-interface {v0}, Lo/AS;->s()Ljava/lang/String;

    move-result-object v0

    .line 1381
    iget-object v3, p0, Lo/ko;->h:Lo/Bc;

    invoke-interface {v3}, Lo/Bc;->bb()Lo/AK;

    move-result-object v3

    invoke-interface {v3}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v3

    .line 1382
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "episodeId"

    .line 1386
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "catalogId"

    .line 1387
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "playNext"

    .line 1389
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1390
    invoke-direct {p0, v2}, Lo/ko;->e(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public b(I)Landroid/app/PendingIntent;
    .locals 2

    .line 1355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SEEK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "time"

    .line 1356
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1357
    invoke-direct {p0, v0}, Lo/ko;->e(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, v0}, Lo/ko;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V
    .locals 8

    .line 209
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {p1, v3}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 216
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lo/ko;->L()V

    .line 220
    :cond_0
    iget-object v6, p0, Lo/ko;->r:Landroid/os/Handler;

    new-instance v7, Lo/ko$5;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/ko$5;-><init>(Lo/ko;ZLjava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 2

    .line 1362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    invoke-direct {p0, v0}, Lo/ko;->e(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Landroid/app/PendingIntent;
    .locals 2

    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SKIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 1327
    invoke-direct {p0, p1}, Lo/ko;->e(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)Landroid/app/PendingIntent;
    .locals 2

    .line 1368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "invocSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    invoke-direct {p0, v0}, Lo/ko;->e(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1561
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    invoke-virtual {p0, p1}, Lo/ko;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1565
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {p0, p1, v0}, Lo/ko;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lo/ko;->l:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 431
    iget-object v0, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 434
    :try_start_0
    iget-object v0, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MdxAgent"

    const-string v1, "MdxAgent: mMdxAgentWorkerThread interrupted"

    .line 437
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    .line 441
    invoke-direct {p0}, Lo/ko;->P()V

    .line 443
    iget-object v1, p0, Lo/ko;->b:Lo/pK;

    if-eqz v1, :cond_0

    .line 444
    invoke-interface {v1}, Lo/pK;->c()V

    .line 445
    iput-object v0, p0, Lo/ko;->b:Lo/pK;

    .line 448
    :cond_0
    iget-object v0, p0, Lo/ko;->y:Lo/kA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/kA;->b()V

    .line 449
    :cond_1
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/kI;->n()V

    .line 451
    :cond_2
    invoke-direct {p0}, Lo/ko;->J()V

    .line 453
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    invoke-direct {p0}, Lo/ko;->D()V

    .line 457
    :cond_3
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 10

    const-string v0, "MdxAgent"

    const-string v1, "MdxAgent: doInit"

    .line 317
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lo/ko;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 321
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 327
    :cond_0
    new-instance v2, Lo/kO;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v1

    iget-object v3, p0, Lo/ko;->C:Lo/cz;

    invoke-direct {v2, v1, v3}, Lo/kO;-><init>(Lo/zS;Lo/cz;)V

    iput-object v2, p0, Lo/ko;->v:Lo/kO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    invoke-direct {p0}, Lo/ko;->M()V

    .line 338
    invoke-direct {p0}, Lo/ko;->E()V

    .line 340
    new-instance v1, Lo/kk;

    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/kk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/ko;->a:Lo/kk;

    .line 341
    new-instance v1, Lo/kF;

    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lo/kF;-><init>(Landroid/content/Context;Lo/kF$TaskDescription;)V

    iput-object v1, p0, Lo/ko;->t:Lo/kF;

    .line 342
    new-instance v1, Lo/kI;

    iget-object v4, p0, Lo/ko;->a:Lo/kk;

    iget-object v2, p0, Lo/ko;->C:Lo/cz;

    invoke-interface {v2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lo/ko;->p:Landroid/os/HandlerThread;

    .line 343
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {p0}, Lo/ko;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lo/ko;->t:Lo/kF;

    iget-object v9, p0, Lo/ko;->v:Lo/kO;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lo/kI;-><init>(Lo/kH;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Lo/kF;Lo/kO;)V

    iput-object v1, p0, Lo/ko;->e:Lo/kI;

    .line 346
    new-instance v1, Lo/km;

    iget-object v2, p0, Lo/ko;->e:Lo/kI;

    invoke-direct {v1, v2}, Lo/km;-><init>(Lo/kn;)V

    iput-object v1, p0, Lo/ko;->c:Lo/km;

    .line 347
    new-instance v1, Lo/kG;

    iget-object v2, p0, Lo/ko;->e:Lo/kI;

    invoke-direct {v1, v2, p0}, Lo/kG;-><init>(Lo/kI;Lo/kG$Application;)V

    iput-object v1, p0, Lo/ko;->x:Lo/kG;

    .line 349
    iget-object v1, p0, Lo/ko;->C:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/mo;->b(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lo/ko;->C:Lo/cz;

    invoke-interface {v1}, Lo/cz;->x()Lo/cO;

    move-result-object v1

    invoke-interface {v1}, Lo/cO;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    iget-object v1, p0, Lo/ko;->C:Lo/cz;

    invoke-interface {v1}, Lo/cz;->x()Lo/cO;

    move-result-object v1

    invoke-interface {v1}, Lo/cO;->d()Z

    move-result v1

    .line 357
    iget-object v2, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {p0}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lo/ko;->getMSLClient()Lo/zE;

    move-result-object v4

    iget-object v5, p0, Lo/ko;->C:Lo/cz;

    invoke-interface {v5}, Lo/cz;->x()Lo/cO;

    move-result-object v5

    invoke-interface {v5}, Lo/cO;->g()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lo/kI;->b(Landroid/content/Context;Lo/zE;ZLorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string v1, "legacy Netflix MDX is disabled."

    .line 360
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    new-instance v1, Lo/kz;

    iget-object v2, p0, Lo/ko;->r:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lo/kz;-><init>(Lo/kz$Activity;Landroid/os/Handler;)V

    iput-object v1, p0, Lo/ko;->u:Lo/kz;

    .line 364
    new-instance v1, Lo/kA;

    iget-object v2, p0, Lo/ko;->C:Lo/cz;

    invoke-interface {v2}, Lo/cz;->x()Lo/cO;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo/kA;-><init>(Lo/ko;Lo/cO;)V

    iput-object v1, p0, Lo/ko;->y:Lo/kA;

    .line 366
    invoke-virtual {p0}, Lo/ko;->o()V

    .line 368
    iget-object v1, p0, Lo/ko;->a:Lo/kk;

    invoke-virtual {v1}, Lo/kk;->a()V

    .line 369
    invoke-virtual {p0}, Lo/ko;->handleConnectivityChange()V

    .line 370
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v1}, Lo/ko;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "failed init of constructors used for target device management"

    .line 373
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    sget-object v2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 376
    new-instance v3, Lo/ku;

    .line 377
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->c:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    sget-object v5, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->g:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 378
    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Lo/ku;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;I)V

    .line 381
    invoke-virtual {p0, v2}, Lo/ko;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 382
    iget-object v1, p0, Lo/ko;->v:Lo/kO;

    invoke-virtual {v1}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lo/ku;Ljava/lang/String;)V

    :goto_1
    const-string v1, "MdxAgent: doInit done."

    .line 385
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_2
    :try_start_2
    const-string v1, "logging agent null at mdx doInit"

    .line 322
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v1, Lo/LegacyErrorStrings;->l:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v1}, Lo/ko;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    .line 330
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v0, Lo/LegacyErrorStrings;->l:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/ko;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 756
    iget-object v0, p0, Lo/ko;->b:Lo/pK;

    if-eqz v0, :cond_0

    .line 757
    invoke-interface {v0, p1}, Lo/pK;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/lang/String;I)V
    .locals 8

    .line 1553
    iget-object v0, p0, Lo/ko;->x:Lo/kG;

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lo/ko;->j:Lo/aeM$Application;

    iget v5, p0, Lo/ko;->i:I

    iget-boolean v6, p0, Lo/ko;->k:Z

    iget-object v7, p0, Lo/ko;->n:Ljava/lang/String;

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lo/kG;->c(Ljava/lang/String;Ljava/lang/String;Lo/aeM$Application;IIZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1520
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-direct {p0}, Lo/ko;->L()V

    .line 1524
    :cond_0
    invoke-static {}, Lo/kD;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1525
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1527
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/bO;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1531
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1532
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/bO;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1535
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/bO;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 245
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lo/ko;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {p0, p1, v0}, Lo/ko;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f()[Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lo/kI;->l()[Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/ko;->t:Lo/kF;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/kF;->c()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lo/ko;->t:Lo/kF;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 4

    .line 1679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1680
    invoke-direct {p0}, Lo/ko;->R()V

    goto :goto_0

    :cond_0
    const-string v0, "MdxAgent"

    const-string v1, "doHandleConnectivityChange delayed "

    .line 1685
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-virtual {p0}, Lo/ko;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ko;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1687
    invoke-virtual {p0}, Lo/ko;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ko;->E:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 190
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lo/kI;->m()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Lo/kC;
    .locals 1

    .line 290
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lo/kI;->p()Lo/kC;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 646
    invoke-direct {p0}, Lo/ko;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    const-string v0, "MdxAgent"

    const-string v1, "MdxAgent: UI coming to foreground, try restart discovery"

    .line 647
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {v0}, Lo/kI;->o()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lo/kI;->t()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Lo/aeM$Application;
    .locals 1

    .line 307
    iget-object v0, p0, Lo/ko;->g:Lo/aeM$Application;

    return-object v0
.end method

.method public n()Lo/aeM$Application;
    .locals 1

    .line 299
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lo/kI;->w()Lo/aeM$Application;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 3

    .line 673
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lo/ko;->s()V

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lo/ko;->F:Lio/reactivex/subjects/PublishSubject;

    .line 679
    new-instance v0, Lo/kp;

    invoke-direct {v0, p0}, Lo/kp;-><init>(Lo/ko;)V

    .line 680
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    iget-object v2, p0, Lo/ko;->F:Lio/reactivex/subjects/PublishSubject;

    invoke-interface {v1, v0, v2}, Lo/bO;->d(Ljava/lang/Runnable;Lio/reactivex/subjects/PublishSubject;)V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 1

    const-string v0, ""

    .line 1514
    invoke-virtual {p0, v0}, Lo/ko;->b(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lo/ko;->a:Lo/kk;

    invoke-virtual {v0}, Lo/kk;->e()V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "MdxAgent"

    const-string v1, "Stop all notifications"

    .line 773
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lo/ko;->H()V

    .line 776
    iget-object v0, p0, Lo/ko;->y:Lo/kA;

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0}, Lo/kA;->d()V

    .line 782
    :cond_0
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    invoke-virtual {p0}, Lo/ko;->getServiceNotificationHelper()Lo/Ac;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/la;->b(Lo/Ac;)V

    .line 783
    iget-object v0, p0, Lo/ko;->m:Lo/la;

    invoke-interface {v0}, Lo/la;->a()V

    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Lo/ko;->m:Lo/la;

    .line 785
    iput-object v0, p0, Lo/ko;->o:Landroid/graphics/Bitmap;

    .line 788
    invoke-virtual {p0}, Lo/ko;->x()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    .line 789
    instance-of v1, v0, Lo/kB;

    if-eqz v1, :cond_1

    .line 790
    check-cast v0, Lo/kB;

    invoke-virtual {v0}, Lo/kB;->c()V

    :cond_1
    return-void
.end method

.method public r()Lo/Bc;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1280
    iget-object v0, p0, Lo/ko;->h:Lo/Bc;

    return-object v0
.end method

.method public s()V
    .locals 3

    .line 687
    invoke-direct {p0}, Lo/ko;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MdxAgent"

    const-string v1, "startMdx profile is not active"

    .line 688
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 692
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/CompletableSubject;->create()Lio/reactivex/subjects/CompletableSubject;

    move-result-object v0

    .line 693
    invoke-direct {p0, v0}, Lo/ko;->a(Lio/reactivex/subjects/CompletableSubject;)V

    .line 695
    iget-object v1, p0, Lo/ko;->r:Landroid/os/Handler;

    new-instance v2, Lo/ko$2;

    invoke-direct {v2, p0, v0}, Lo/ko$2;-><init>(Lo/ko;Lio/reactivex/subjects/CompletableSubject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public t()Z
    .locals 2

    .line 800
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/kI;->k(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 4

    .line 1591
    iget-object v0, p0, Lo/ko;->a:Lo/kk;

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/kk;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public v()J
    .locals 2

    .line 1582
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 1583
    invoke-virtual {v0}, Lo/kI;->s()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public w()Z
    .locals 1

    .line 1646
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {v0}, Lo/kI;->r()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 2

    .line 1598
    invoke-virtual {p0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v0

    .line 1600
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lo/ko;->a:Lo/kk;

    invoke-virtual {v1, v0}, Lo/kk;->c(Ljava/lang/String;)Lo/kB;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 1655
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 1656
    invoke-virtual {v0}, Lo/kI;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()V
    .locals 1

    .line 1673
    iget-object v0, p0, Lo/ko;->e:Lo/kI;

    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {v0}, Lo/kI;->g()V

    :cond_0
    return-void
.end method
