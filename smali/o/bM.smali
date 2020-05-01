.class public final Lo/bM;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Lo/zL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bM$Application;,
        Lo/bM$Activity;,
        Lo/bM$TaskDescription;,
        Lo/bM$LoaderManager;,
        Lo/bM$StateListAnimator;,
        Lo/bM$PendingIntent;,
        Lo/bM$ActionBar;,
        Lo/bM$FragmentManager;
    }
.end annotation


# static fields
.field private static y:Z


# instance fields
.field private A:Lcom/netflix/mediaclient/service/NetflixPowerManager;

.field private B:Z

.field private C:Lo/it;

.field private final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lo/bT;

.field private G:Lo/J;

.field private H:Lo/bS;

.field private I:Lo/bR;

.field private J:Lo/ii;

.field private K:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lo/is;

.field private M:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

.field private N:Lo/CameraPrewarmService;

.field private final O:Ljava/lang/Runnable;

.field private P:Lo/bM$Application;

.field private final Q:Landroid/os/IBinder;

.field private R:Lo/bM$FragmentManager;

.field private final S:Lo/bV$TaskDescription;

.field private final T:Ljava/lang/Runnable;

.field private final V:Landroid/content/BroadcastReceiver;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            "Lo/iB;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/hY;

.field private c:Lo/cd;

.field private d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field private e:Lo/cG;

.field private f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

.field private g:Lo/pB;

.field private h:Lo/ye;

.field private i:Lo/ko;

.field private j:Lo/jb;

.field private k:Lo/za;

.field private l:Lo/xP;

.field private m:Lo/hM;

.field private n:Lo/hX;

.field private o:Lo/hL;

.field private p:Landroid/os/Handler;

.field private q:Lo/nQ;

.field private r:Lo/nC;

.field private s:Lo/mw;

.field private t:Lo/iy;

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/bM$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lo/bI;

.field private volatile w:Z

.field private x:Lcom/netflix/mediaclient/android/app/Status;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 202
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/bM;->a:Ljava/util/Map;

    .line 234
    new-instance v0, Lo/bI;

    invoke-direct {v0}, Lo/bI;-><init>()V

    iput-object v0, p0, Lo/bM;->v:Lo/bI;

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lo/bM;->w:Z

    .line 243
    sget-object v1, Lo/LegacyErrorStrings;->j:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v1, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/bM;->u:Ljava/util/ArrayList;

    .line 250
    iput-boolean v0, p0, Lo/bM;->B:Z

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/bM;->D:Ljava/util/Set;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/bM;->E:Ljava/util/List;

    .line 273
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lo/bM;->K:Lio/reactivex/subjects/PublishSubject;

    .line 1488
    new-instance v0, Lo/bM$8;

    invoke-direct {v0, p0}, Lo/bM$8;-><init>(Lo/bM;)V

    iput-object v0, p0, Lo/bM;->S:Lo/bV$TaskDescription;

    .line 1581
    new-instance v0, Lo/bM$TaskDescription;

    invoke-direct {v0, p0}, Lo/bM$TaskDescription;-><init>(Lo/bM;)V

    iput-object v0, p0, Lo/bM;->Q:Landroid/os/IBinder;

    .line 1767
    new-instance v0, Lo/bM$10;

    invoke-direct {v0, p0}, Lo/bM$10;-><init>(Lo/bM;)V

    iput-object v0, p0, Lo/bM;->O:Ljava/lang/Runnable;

    .line 1929
    new-instance v0, Lo/bM$4;

    invoke-direct {v0, p0}, Lo/bM$4;-><init>(Lo/bM;)V

    iput-object v0, p0, Lo/bM;->V:Landroid/content/BroadcastReceiver;

    .line 1946
    new-instance v0, Lo/bM$1;

    invoke-direct {v0, p0}, Lo/bM$1;-><init>(Lo/bM;)V

    iput-object v0, p0, Lo/bM;->T:Ljava/lang/Runnable;

    return-void
.end method

.method public static E()Landroid/content/Intent;
    .locals 2

    .line 2030
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized T()V
    .locals 4

    monitor-enter p0

    .line 558
    :try_start_0
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/bM;->a(Landroid/content/Context;)V

    .line 559
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->a()V

    .line 560
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$1;-><init>(Lo/bM;)V

    .line 565
    new-instance v1, Lo/bM$2;

    invoke-direct {v1, p0, v0}, Lo/bM$2;-><init>(Lo/bM;Ljava/util/ArrayList;)V

    .line 672
    new-instance v2, Lo/bM$5;

    invoke-direct {v2, p0}, Lo/bM$5;-><init>(Lo/bM;)V

    .line 681
    new-instance v3, Lo/bM$3;

    invoke-direct {v3, p0, v0, v2, v1}, Lo/bM$3;-><init>(Lo/bM;Ljava/util/ArrayList;Lo/bV$Activity;Lo/bV$Activity;)V

    .line 694
    new-instance v1, Lo/bM$9;

    invoke-direct {v1, p0, v0, v2, v3}, Lo/bM$9;-><init>(Lo/bM;Ljava/util/ArrayList;Lo/bV$Activity;Lo/bV$Activity;)V

    const-string v0, "NetflixService"

    const-string v2, "NetflixService initing..."

    .line 707
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lo/bM;->h:Lo/ye;

    iget-object v2, p0, Lo/bM;->S:Lo/bV$TaskDescription;

    invoke-virtual {v0, v2, v1}, Lo/ye;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    .line 714
    sget-object v0, Lo/bL;->e:Lo/bL;

    iget-object v1, p0, Lo/bM;->E:Ljava/util/List;

    iget-object v2, p0, Lo/bM;->h:Lo/ye;

    iget-object v3, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0, v1, v2, v3}, Lo/bL;->d(Ljava/util/List;Lo/xZ;Lo/cz;)V

    const-wide/32 v0, 0x15f90

    .line 720
    iget-object v2, p0, Lo/bM;->p:Landroid/os/Handler;

    iget-object v3, p0, Lo/bM;->O:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private U()V
    .locals 1

    .line 416
    iget-object v0, p0, Lo/bM;->K:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 419
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lo/bM;->K:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method private V()V
    .locals 0

    return-void
.end method

.method private W()V
    .locals 7

    .line 724
    invoke-direct {p0}, Lo/bM;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/bM;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v1, p0, Lo/bM;->b:Lo/hY;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lo/hY;->b(IILjava/lang/String;ZLo/ci;)V

    :cond_0
    return-void
.end method

.method private X()Z
    .locals 6

    .line 730
    invoke-static {}, Lo/MimeTypeMap;->c()Lo/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/MimeTypeMap;->g()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 731
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "NetflixService"

    const-string v5, "Number of activities count = %d"

    invoke-static {v3, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private Y()V
    .locals 2

    .line 770
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/Ye;->c(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;[I)V

    .line 771
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ac;->b(Landroid/content/Context;)V

    .line 772
    invoke-static {}, Lo/afE;->e()V

    return-void
.end method

.method private Z()Landroid/app/PendingIntent;
    .locals 3

    .line 1762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lo/bM;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lo/bM;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    return-object p0
.end method

.method private a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NetflixService"

    if-nez p1, :cond_0

    const-string p1, "Unable to unregister, receiver is null"

    .line 1978
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1986
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lo/bM;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1988
    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "preference_install_referrer_log"

    const-string v1, ""

    .line 835
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v3, "NetflixService"

    const-string v4, "nf_install deeplink context %s "

    .line 837
    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 838
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/context/DeepLinkInput;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 839
    invoke-static {p1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private aa()V
    .locals 2

    const-string v0, "NetflixService"

    const-string v1, "Service init has timed out"

    .line 844
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    sget-object v0, Lo/LegacyErrorStrings;->k:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    const-string v0, "timeout"

    .line 846
    invoke-direct {p0, v0}, Lo/bM;->d(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lo/bM;->stopSelf()V

    return-void
.end method

.method private ab()V
    .locals 2

    .line 1877
    iget-object v0, p0, Lo/bM;->P:Lo/bM$Application;

    if-eqz v0, :cond_0

    const-string v1, "MDX receiver"

    .line 1878
    invoke-direct {p0, v0, v1}, Lo/bM;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1879
    iput-object v0, p0, Lo/bM;->P:Lo/bM$Application;

    :cond_0
    return-void
.end method

.method private ac()V
    .locals 2

    .line 1750
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string v0, "NetflixService"

    const-string v1, "Can\'t access alarm manager to cancel shutdown alarm"

    .line 1752
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1757
    :cond_0
    invoke-direct {p0}, Lo/bM;->Z()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private ad()V
    .locals 3

    .line 1884
    invoke-direct {p0}, Lo/bM;->ab()V

    .line 1885
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKSTART"

    .line 1886
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    .line 1887
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 1888
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/bM;->P:Lo/bM$Application;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private ae()V
    .locals 2

    const-string v0, "NetflixService"

    const-string v1, "onNetworkChange"

    .line 1954
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b()V

    .line 1957
    iget-object v0, p0, Lo/bM;->g:Lo/pB;

    invoke-virtual {v0}, Lo/pB;->handleConnectivityChange()V

    .line 1958
    iget-object v0, p0, Lo/bM;->j:Lo/jb;

    invoke-virtual {v0}, Lo/jb;->handleConnectivityChange()V

    .line 1959
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v0

    .line 1960
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1959
    invoke-direct {p0, v1}, Lo/bM;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PidHealthStats;->b(Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    if-eqz v0, :cond_0

    .line 1962
    invoke-virtual {v0}, Lo/ko;->handleConnectivityChange()V

    .line 1964
    :cond_0
    iget-object v0, p0, Lo/bM;->F:Lo/bT;

    invoke-virtual {v0}, Lo/bT;->c()V

    .line 1965
    iget-object v0, p0, Lo/bM;->q:Lo/nQ;

    invoke-virtual {v0}, Lo/nQ;->handleConnectivityChange()V

    .line 1966
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->handleConnectivityChange()V

    .line 1967
    iget-object v0, p0, Lo/bM;->c:Lo/cd;

    invoke-virtual {v0}, Lo/cd;->handleConnectivityChange()V

    return-void
.end method

.method private af()V
    .locals 4

    .line 2267
    invoke-direct {p0}, Lo/bM;->al()V

    .line 2268
    new-instance v0, Lo/bM$FragmentManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/bM$FragmentManager;-><init>(Lo/bM;Lcom/netflix/mediaclient/service/NetflixService$1;)V

    iput-object v0, p0, Lo/bM;->R:Lo/bM$FragmentManager;

    .line 2269
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lo/bM;->R:Lo/bM$FragmentManager;

    const-string v3, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private ag()V
    .locals 2

    const-string v0, "NetflixService"

    const-string v1, "disableMdxAgent"

    .line 1912
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ko;->isInitCalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->destroy()V

    .line 1915
    iput-object v1, p0, Lo/bM;->i:Lo/ko;

    .line 1917
    :cond_0
    iget-object v0, p0, Lo/bM;->N:Lo/CameraPrewarmService;

    invoke-virtual {v0, v1}, Lo/CameraPrewarmService;->e(Lo/zN;)V

    const/4 v0, 0x0

    .line 1918
    iput-boolean v0, p0, Lo/bM;->B:Z

    return-void
.end method

.method private ah()V
    .locals 1

    .line 2038
    iget-boolean v0, p0, Lo/bM;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ko;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->k()V

    :cond_0
    return-void
.end method

.method private ak()Lorg/json/JSONObject;
    .locals 4

    .line 2282
    iget-object v0, p0, Lo/bM;->J:Lo/ii;

    if-nez v0, :cond_0

    .line 2283
    new-instance v0, Lo/ii;

    iget-object v1, p0, Lo/bM;->K:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lo/bM;->G()Lo/cz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/ii;-><init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;Lo/cz;)V

    iput-object v0, p0, Lo/bM;->J:Lo/ii;

    .line 2284
    iget-object v0, p0, Lo/bM;->J:Lo/ii;

    invoke-virtual {v0}, Lo/ii;->b()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private al()V
    .locals 2

    .line 2273
    iget-object v0, p0, Lo/bM;->R:Lo/bM$FragmentManager;

    if-eqz v0, :cond_0

    .line 2274
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/bM;->R:Lo/bM$FragmentManager;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    const/4 v0, 0x0

    .line 2275
    iput-object v0, p0, Lo/bM;->R:Lo/bM$FragmentManager;

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/bM;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 202
    iput-object p1, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method public static synthetic b(Lo/bM;)Lo/hL;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->o:Lo/hL;

    return-object p0
.end method

.method private b(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that service is ready, status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetflixService"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lo/bM;->v:Lo/bI;

    invoke-virtual {v0, p1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-eqz v0, :cond_0

    .line 1666
    invoke-interface {v0, p1, p2}, Lo/zK;->onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5

    .line 434
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "start_foreground"

    .line 438
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NetflixService"

    const-string v1, "Start service foreground..."

    .line 440
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "start_requester"

    .line 444
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    .line 448
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/xP;->e(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/InstallReferrerReceiver;->d(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    const-string p1, "sending foreground notification"

    .line 455
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0, v1, v2}, Lo/bM;->e(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lo/bM;Ljava/lang/String;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lo/bM;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/bM;Lo/bV;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lo/bV$Activity;)Z
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lo/bM;->b(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lo/bV$Activity;)Z

    move-result p0

    return p0
.end method

.method private b(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lo/bV$Activity;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bV;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List<",
            "Lo/bV;",
            ">;",
            "Lo/bV$Activity;",
            ")Z"
        }
    .end annotation

    .line 748
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetflixService init failed with ServiceAgent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " statusCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetflixService"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iput-object p2, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    .line 753
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/bV;

    .line 754
    invoke-virtual {p3}, Lo/bV;->isInitCalled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    iget-object v0, p0, Lo/bM;->S:Lo/bV$TaskDescription;

    invoke-virtual {p3, v0, p4}, Lo/bV;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 757
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Agent %s from error batch already initialized!"

    invoke-static {v2, p3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 760
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failedAgent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/bV;->agentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/bM;->d(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lo/bM;->stopSelf()V

    return v0

    :cond_2
    return v1
.end method

.method public static synthetic c(Lo/bM;)Lo/za;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->k:Lo/za;

    return-object p0
.end method

.method static synthetic c(Lo/bM;J)V
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2}, Lo/bM;->e(J)V

    return-void
.end method

.method static synthetic c(Lo/bM;Landroid/content/Intent;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lo/bM;->e(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    .line 2260
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2261
    invoke-static {}, Lo/tY;->a()Lo/tW;

    move-result-object v1

    invoke-virtual {v1}, Lo/tW;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 2262
    iget-object v2, p0, Lo/bM;->j:Lo/jb;

    sget-object v3, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1, p1}, Lo/jb;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string p1, "NetflixService"

    const-string v0, "BLOB: startup is scheduled to be sent"

    .line 2263
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    .line 776
    invoke-static {}, Lo/aeB;->a()Z

    .line 777
    const-class v0, Lo/kg;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kg;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->b:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-interface {v0, v1}, Lo/kg;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 778
    iget-object v0, p0, Lo/bM;->p:Landroid/os/Handler;

    iget-object v1, p0, Lo/bM;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 779
    iget-object v0, p0, Lo/bM;->F:Lo/bT;

    invoke-virtual {v0}, Lo/bT;->d()V

    .line 780
    sget-object v0, Lo/US;->b:Lo/US;

    invoke-virtual {v0, p0}, Lo/US;->c(Landroid/content/Context;)V

    .line 781
    iget-object v0, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->o()V

    goto :goto_0

    .line 784
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->k()V

    .line 786
    :goto_0
    invoke-direct {p0}, Lo/bM;->Y()V

    const-string v0, "NetflixService"

    const-string v1, "Invoking InitCallbacks..."

    .line 788
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Lo/bM;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/bM$ActionBar;

    .line 790
    invoke-interface {v2}, Lo/bM$ActionBar;->e()V

    goto :goto_1

    .line 792
    :cond_1
    iget-object v1, p0, Lo/bM;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    .line 793
    iput-boolean v1, p0, Lo/bM;->w:Z

    .line 797
    iget-object v2, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 798
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lo/bM;->V:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 799
    iget-object p1, p0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    if-eqz p1, :cond_2

    .line 800
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onServiceStarted()V

    :cond_2
    const-string p1, "Send local intent that Netflix service is ready"

    .line 803
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    const-string v3, "status_code"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    .line 806
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 809
    iget-object p1, p0, Lo/bM;->S:Lo/bV$TaskDescription;

    new-instance v2, Lo/bM$6;

    invoke-direct {v2, p0}, Lo/bM$6;-><init>(Lo/bM;)V

    invoke-direct {p0, p1, v2}, Lo/bM;->e(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    .line 818
    invoke-direct {p0}, Lo/bM;->ak()Lorg/json/JSONObject;

    move-result-object p1

    .line 819
    invoke-direct {p0, p1}, Lo/bM;->c(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 821
    :cond_3
    iget-object v2, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v2, p1}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 825
    :goto_2
    invoke-direct {p0}, Lo/bM;->V()V

    const p1, 0xea60

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v3, 0x3c

    .line 828
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "StopService runnable posted - service will die in %d seconds unless bound to or started..."

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    int-to-long v2, p1

    .line 829
    invoke-direct {p0, v2, v3}, Lo/bM;->e(J)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lo/bM;->z:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "NetflixService init took=%d"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic d(Lo/bM;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lo/bM;->ag()V

    return-void
.end method

.method public static synthetic e(Lo/bM;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    return-object p0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1940
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1943
    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private e(J)V
    .locals 3

    .line 1728
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string p1, "NetflixService"

    const-string p2, "Can\'t access alarm manager to set shutdown alarm"

    .line 1730
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1732
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    const/4 p1, 0x2

    .line 1742
    :try_start_0
    invoke-direct {p0}, Lo/bM;->Z()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1744
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-8729 - Exception trying to schedule an AlarmManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "NetflixService"

    const-string v1, "Received start command intent "

    .line 476
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 478
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    .line 483
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Stopping service via shutdown intent..."

    .line 484
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 485
    sput-boolean p1, Lo/bM;->y:Z

    .line 486
    invoke-virtual {p0}, Lo/bM;->stopSelf()V

    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 491
    invoke-direct {p0}, Lo/bM;->ac()V

    const-string v1, "com.netflix.mediaclient.intent.category.offline"

    .line 493
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Offline command intent "

    .line 494
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lo/bM;->q:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/bM;->q:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lo/bM;->q:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->l()Lo/bN;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/bN;->e(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "received a command while offline agent is not ready"

    .line 498
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 502
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lo/bM;->B:Z

    if-eqz v1, :cond_4

    const-string v1, "MDX command intent "

    .line 503
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Lo/bM;->i:Lo/ko;

    invoke-virtual {v1, p1}, Lo/ko;->a(Landroid/content/Intent;)Z

    :cond_4
    const-string v1, "com.netflix.mediaclient.intent.category.PUSH"

    .line 507
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isSupported()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "swiped_notification_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "Push notification command intent "

    .line 508
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->handleCommand(Landroid/content/Intent;)Z

    :cond_7
    const-string v1, "com.netflix.mediaclient.intent.category.LOGGING"

    .line 511
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Client logging command intent "

    .line 512
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lo/bM;->j:Lo/jb;

    invoke-virtual {v1, p1}, Lo/jb;->a(Landroid/content/Intent;)Z

    :cond_8
    const-string v1, "com.netflix.mediaclient.intent.category.USER"

    .line 515
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "User agent command intent "

    .line 516
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Landroid/content/Intent;)Z

    :cond_9
    const-string v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_WIDGET_PROVIDER"

    .line 520
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "app widget command intent "

    .line 521
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lo/bM;->l:Lo/xP;

    invoke-virtual {v0, p1}, Lo/xP;->b(Landroid/content/Intent;)Z

    goto :goto_1

    .line 525
    :cond_a
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPY-15398 init failed, ignore command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const-string p1, "service init failed, not sending commands to agents"

    .line 526
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    return-void
.end method

.method static synthetic e(Lo/bM;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2}, Lo/bM;->b(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e(Lo/bV$TaskDescription;Lo/bV$Activity;)V
    .locals 2

    .line 1893
    invoke-direct {p0}, Lo/bM;->ag()V

    .line 1894
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->x()Lo/cO;

    move-result-object v0

    invoke-interface {v0}, Lo/cO;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lo/bM;->B:Z

    .line 1896
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1897
    iput-boolean v0, p0, Lo/bM;->B:Z

    .line 1900
    :cond_0
    iget-boolean v0, p0, Lo/bM;->B:Z

    if-eqz v0, :cond_1

    .line 1901
    new-instance v0, Lo/ko;

    iget-object v1, p0, Lo/bM;->e:Lo/cG;

    invoke-direct {v0, v1}, Lo/ko;-><init>(Lo/cz;)V

    iput-object v0, p0, Lo/bM;->i:Lo/ko;

    .line 1902
    iget-object v0, p0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v1, p0, Lo/bM;->i:Lo/ko;

    invoke-virtual {v0, v1}, Lo/CameraPrewarmService;->e(Lo/zN;)V

    .line 1905
    invoke-direct {p0}, Lo/bM;->ad()V

    .line 1906
    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    invoke-virtual {v0, p1, p2}, Lo/ko;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    :cond_1
    return-void
.end method

.method public static e()Z
    .locals 1

    .line 306
    sget-boolean v0, Lo/bM;->y:Z

    return v0
.end method

.method public static synthetic f(Lo/bM;)Lo/cd;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->c:Lo/cd;

    return-object p0
.end method

.method public static synthetic g(Lo/bM;)Lo/hY;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->b:Lo/hY;

    return-object p0
.end method

.method public static synthetic h(Lo/bM;)Lo/jb;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->j:Lo/jb;

    return-object p0
.end method

.method public static synthetic i(Lo/bM;)Lo/xP;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->l:Lo/xP;

    return-object p0
.end method

.method public static synthetic j(Lo/bM;)Lo/hM;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->m:Lo/hM;

    return-object p0
.end method

.method public static synthetic k(Lo/bM;)Lo/nC;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->r:Lo/nC;

    return-object p0
.end method

.method public static synthetic l(Lo/bM;)Lo/pB;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->g:Lo/pB;

    return-object p0
.end method

.method public static synthetic m(Lo/bM;)Lo/nQ;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->q:Lo/nQ;

    return-object p0
.end method

.method public static synthetic n(Lo/bM;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object p0
.end method

.method static synthetic o(Lo/bM;)Lo/mw;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->s:Lo/mw;

    return-object p0
.end method

.method static synthetic p(Lo/bM;)Lo/bI;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->v:Lo/bI;

    return-object p0
.end method

.method static synthetic q(Lo/bM;)Lo/ye;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->h:Lo/ye;

    return-object p0
.end method

.method static synthetic r(Lo/bM;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lo/bM;->W()V

    return-void
.end method

.method static synthetic s(Lo/bM;)Lo/bV$TaskDescription;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->S:Lo/bV$TaskDescription;

    return-object p0
.end method

.method static synthetic t(Lo/bM;)Lo/cG;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->e:Lo/cG;

    return-object p0
.end method

.method static synthetic u(Lo/bM;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lo/bM;->ac()V

    return-void
.end method

.method static synthetic v(Lo/bM;)Lo/ko;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->i:Lo/ko;

    return-object p0
.end method

.method static synthetic w(Lo/bM;)Ljava/lang/Runnable;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->T:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic x(Lo/bM;)Landroid/os/Handler;
    .locals 0

    .line 202
    iget-object p0, p0, Lo/bM;->p:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic y(Lo/bM;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lo/bM;->aa()V

    return-void
.end method

.method static synthetic z(Lo/bM;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lo/bM;->ae()V

    return-void
.end method


# virtual methods
.method public A()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .line 1998
    iget-object v0, p0, Lo/bM;->j:Lo/jb;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1481
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->aD()Z

    move-result v0

    return v0
.end method

.method public C()Lo/ds;
    .locals 1

    .line 1926
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->e()Lo/ds;

    move-result-object v0

    return-object v0
.end method

.method public D()Lo/zN;
    .locals 1

    .line 1785
    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    return-object v0
.end method

.method public F()V
    .locals 2

    const-string v0, "NetflixService"

    const-string v1, "UI coming from background, notify MDX"

    .line 2045
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-direct {p0}, Lo/bM;->ah()V

    return-void
.end method

.method public G()Lo/cz;
    .locals 1

    .line 2007
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    return-object v0
.end method

.method public H()Lo/zI;
    .locals 1

    .line 2019
    iget-object v0, p0, Lo/bM;->n:Lo/hX;

    return-object v0
.end method

.method public I()Lo/cc;
    .locals 1

    .line 2012
    iget-object v0, p0, Lo/bM;->c:Lo/cd;

    return-object v0
.end method

.method public J()Lo/zF;
    .locals 1

    .line 2056
    iget-object v0, p0, Lo/bM;->o:Lo/hL;

    return-object v0
.end method

.method public K()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .line 2064
    iget-object v0, p0, Lo/bM;->k:Lo/za;

    invoke-virtual {v0}, Lo/za;->d()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    return-object v0
.end method

.method public L()Lo/nS;
    .locals 1

    .line 2051
    iget-object v0, p0, Lo/bM;->q:Lo/nQ;

    return-object v0
.end method

.method public M()J
    .locals 2

    .line 2171
    iget-wide v0, p0, Lo/bM;->z:J

    return-wide v0
.end method

.method public N()Lo/hF;
    .locals 1

    .line 2060
    iget-object v0, p0, Lo/bM;->k:Lo/za;

    return-object v0
.end method

.method public O()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .line 2250
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    return-object v0
.end method

.method public P()Lcom/netflix/mediaclient/servicemgr/PrepareManager;
    .locals 1

    .line 2197
    iget-object v0, p0, Lo/bM;->g:Lo/pB;

    invoke-virtual {v0}, Lo/pB;->c()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lo/ic;
    .locals 1

    .line 2255
    iget-object v0, p0, Lo/bM;->b:Lo/hY;

    return-object v0
.end method

.method public R()Lo/Ag;
    .locals 1

    .line 2176
    iget-object v0, p0, Lo/bM;->F:Lo/bT;

    return-object v0
.end method

.method public S()Lo/Ah;
    .locals 1

    .line 2192
    iget-object v0, p0, Lo/bM;->g:Lo/pB;

    invoke-virtual {v0}, Lo/pB;->e()Lo/Ah;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .line 954
    iget-object v0, p0, Lo/bM;->h:Lo/ye;

    invoke-virtual {v0}, Lo/ye;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 2093
    iget-object v0, p0, Lo/bM;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2094
    :try_start_0
    iget-object v1, p0, Lo/bM;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/iB;

    .line 2095
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2097
    invoke-interface {v1, p1}, Lo/iB;->onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 2095
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;II)V
    .locals 1

    .line 980
    new-instance v0, Lo/bM$StateListAnimator;

    invoke-direct {v0, p0, p3, p4}, Lo/bM$StateListAnimator;-><init>(Lo/bM;II)V

    .line 981
    iget-object p3, p0, Lo/bM;->h:Lo/ye;

    invoke-virtual {p3, p1, p2, v0}, Lo/ye;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 1

    .line 2207
    sget-object v0, Lo/bL;->e:Lo/bL;

    invoke-virtual {v0, p1}, Lo/bL;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    move-result p1

    return p1
.end method

.method public b(II)V
    .locals 1

    .line 1167
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p1, p2}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1168
    iget-object p1, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g(Lo/ym;)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1

    .line 1161
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p2, p3}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1162
    iget-object p2, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p2, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Ljava/lang/String;Lo/ym;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;II)V
    .locals 7

    .line 1155
    new-instance v6, Lo/bM$LoaderManager;

    invoke-direct {v6, p0, p6, p7}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1156
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/ym;)V

    return-void
.end method

.method public b(Lo/zK;)V
    .locals 3

    .line 1637
    invoke-static {}, Lo/aeB;->a()Z

    .line 1638
    invoke-direct {p0}, Lo/bM;->ac()V

    if-eqz p1, :cond_2

    .line 1644
    iget-object v0, p0, Lo/bM;->v:Lo/bI;

    invoke-virtual {v0, p1}, Lo/bI;->b(Lo/zK;)I

    move-result v0

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetflixService"

    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-boolean p1, p0, Lo/bM;->w:Z

    if-eqz p1, :cond_0

    .line 1647
    iget-object p1, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, v0, p1}, Lo/bM;->b(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 1648
    iget-object p1, p0, Lo/bM;->v:Lo/bI;

    invoke-virtual {p1}, Lo/bI;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "UI started, notify MDX"

    .line 1649
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-direct {p0}, Lo/bM;->ah()V

    goto :goto_0

    .line 1653
    :cond_0
    iget-object p1, p0, Lo/bM;->u:Ljava/util/ArrayList;

    new-instance v1, Lo/bM$Activity;

    invoke-direct {v1, p0, v0}, Lo/bM$Activity;-><init>(Lo/bM;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    .line 1641
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, " registerCallback - cb is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 2202
    iget-object v0, p0, Lo/bM;->g:Lo/pB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/pB;->e()Lo/Ah;

    move-result-object v0

    invoke-interface {v0}, Lo/Ah;->c()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized c()V
    .locals 13

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Lo/zA;

    .line 2215
    iget-object v2, p0, Lo/bM;->s:Lo/mw;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2217
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 2219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v8, "NetflixService"

    const-string v9, "Delayed initialization of %s started..."

    new-array v10, v0, [Ljava/lang/Object;

    .line 2220
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v9, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2221
    invoke-interface {v5}, Lo/zA;->d()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v8

    .line 2222
    sget-object v9, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-eq v8, v9, :cond_0

    const-string v1, "NetflixService"

    const-string v2, "Delayed initialization of %s failed!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 2223
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2224
    invoke-virtual {p0}, Lo/bM;->J()Lo/zF;

    move-result-object v0

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    invoke-interface {v1}, Lo/bO;->e()Lo/hT;

    move-result-object v1

    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v8, v3}, Lo/hT;->c(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Z)Lo/hR;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/zF;->d(Lo/hR;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v8, "NetflixService"

    const-string v9, "Delayed initialization of %s completed in %d ms."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 2227
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v0

    invoke-static {v8, v9, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2231
    :cond_1
    iget-object v1, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v1}, Lo/cG;->aL()V

    .line 2233
    iget-object v1, p0, Lo/bM;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "NetflixService"

    const-string v2, "Crypto is initialized with delay, MSL is ready, send MSL requests: %d"

    new-array v0, v0, [Ljava/lang/Object;

    .line 2234
    iget-object v4, p0, Lo/bM;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2235
    iget-object v0, p0, Lo/bM;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    .line 2236
    iget-object v2, p0, Lo/bM;->h:Lo/ye;

    invoke-virtual {v2, v1}, Lo/ye;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_1

    .line 2238
    :cond_2
    iget-object v0, p0, Lo/bM;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_3
    const-string v0, "NetflixService"

    const-string v1, "No pending MSL requests..."

    .line 2240
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2242
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(II)V
    .locals 1

    .line 1183
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p1, p2}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1184
    iget-object p1, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->i(Lo/ym;)V

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1412
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p4, p5}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1413
    iget-object p4, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(ILjava/lang/String;Ljava/lang/String;Lo/ym;)V

    return-void
.end method

.method public c(IZ)V
    .locals 1

    .line 2120
    invoke-static {}, Lo/aeB;->a()Z

    .line 2121
    iget-object v0, p0, Lo/bM;->D:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2122
    iget-object p1, p0, Lo/bM;->D:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 2126
    invoke-static {}, Lo/adk;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 2129
    :cond_0
    invoke-virtual {p0, p2}, Lo/bM;->stopForeground(Z)V

    :cond_1
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1724
    invoke-direct {p0, p1, p2}, Lo/bM;->e(J)V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 0

    .line 2187
    invoke-direct {p0, p1}, Lo/bM;->e(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->i(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 1

    .line 1065
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p2, p3}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1067
    iget-object p2, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lo/ym;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1072
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p2, p3}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1074
    iget-object p2, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/ym;Ljava/util/List;)V

    return-void
.end method

.method public c(ZLjava/lang/String;)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public d(IILjava/lang/String;)V
    .locals 1

    .line 1189
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p1, p2}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1190
    iget-object p1, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1, v0, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lo/ym;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 2077
    iget-object v0, p0, Lo/bM;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2078
    :try_start_0
    iget-object v1, p0, Lo/bM;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/iB;

    .line 2079
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2081
    invoke-interface {v1, p1}, Lo/iB;->onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 2079
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V
    .locals 2

    .line 2069
    iget-object v0, p0, Lo/bM;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2070
    :try_start_0
    iget-object v1, p0, Lo/bM;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;II)V
    .locals 6

    .line 1149
    new-instance v5, Lo/bM$LoaderManager;

    invoke-direct {v5, p0, p5, p6}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1150
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/ym;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1032
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->H()Z

    move-result v0

    return v0
.end method

.method public e(II)V
    .locals 1

    .line 1389
    new-instance v0, Lo/bM$LoaderManager;

    invoke-direct {v0, p0, p1, p2}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1390
    iget-object p1, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h(Lo/ym;)V

    return-void
.end method

.method public e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1195
    new-instance v1, Lo/bM$LoaderManager;

    invoke-direct {v1, p0, p1, p2}, Lo/bM$LoaderManager;-><init>(Lo/bM;II)V

    .line 1196
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lo/ym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(ILandroid/app/Notification;)V
    .locals 2

    .line 2108
    invoke-static {}, Lo/aeB;->a()Z

    .line 2109
    iget-object v0, p0, Lo/bM;->D:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lo/bM;->D:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2114
    invoke-virtual {p0, p1, p2}, Lo/bM;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public e(Lo/zK;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1703
    :cond_0
    iget-object v0, p0, Lo/bM;->v:Lo/bI;

    invoke-virtual {v0, p1}, Lo/bI;->d(Lo/zK;)Lo/zK;

    move-result-object p1

    const-string v0, "NetflixService"

    if-nez p1, :cond_1

    const-string p1, "Client callback was either not-registered/removed"

    .line 1705
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1050
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .line 1089
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->m()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 2245
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1045
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 1060
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->u()V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1124
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a()Z

    move-result v0

    return v0
.end method

.method public l()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->A()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1114
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->B()V

    return-void
.end method

.method public n()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    .line 1109
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public o()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->D()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "NetflixService"

    const-string v0, "NetflixService is onBind"

    .line 1585
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-direct {p0}, Lo/bM;->ac()V

    .line 1588
    iget-object p1, p0, Lo/bM;->Q:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "NetflixService"

    const-string v2, "NetflixService.onCreate."

    .line 318
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-class v2, Lo/kg;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/kg;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->b:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-interface {v2, v3}, Lo/kg;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 320
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 321
    invoke-direct/range {p0 .. p0}, Lo/bM;->U()V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 323
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v3

    iput-object v3, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    const/4 v3, 0x1

    .line 324
    sput-boolean v3, Lo/bM;->y:Z

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lo/bM;->z:J

    .line 326
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e()V

    .line 331
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v0, Lo/bM;->p:Landroid/os/Handler;

    .line 332
    invoke-static {v2}, Lo/adi;->j(Landroid/content/Context;)V

    .line 333
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v4

    iput-object v4, v0, Lo/bM;->t:Lo/iy;

    .line 334
    const-class v4, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    iput-object v4, v0, Lo/bM;->M:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    .line 335
    new-instance v4, Lo/J;

    invoke-virtual/range {p0 .. p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lo/J;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lo/bM;->G:Lo/J;

    .line 336
    sget-object v4, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    iget-object v5, v0, Lo/bM;->S:Lo/bV$TaskDescription;

    iget-wide v6, v0, Lo/bM;->z:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->e(Lo/bV$TaskDescription;J)V

    .line 337
    iget-object v4, v0, Lo/bM;->G:Lo/J;

    sget-object v5, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    invoke-virtual {v4, v5}, Lo/J;->a(Lo/E;)V

    .line 339
    new-instance v4, Lo/cG;

    invoke-virtual/range {p0 .. p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lo/bM;->M:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    invoke-direct {v4, v5, v6}, Lo/cG;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V

    iput-object v4, v0, Lo/bM;->e:Lo/cG;

    .line 340
    iget-object v4, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v5, v0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v4, v5}, Lo/CameraPrewarmService;->c(Lo/cz;)V

    .line 341
    new-instance v4, Lo/cd;

    invoke-virtual/range {p0 .. p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lo/bM;->e:Lo/cG;

    invoke-direct {v4, v5, v6}, Lo/cd;-><init>(Landroid/content/Context;Lo/cG;)V

    iput-object v4, v0, Lo/bM;->c:Lo/cd;

    .line 342
    new-instance v4, Lo/mw;

    iget-object v5, v0, Lo/bM;->G:Lo/J;

    iget-object v6, v0, Lo/bM;->M:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    invoke-direct {v4, v5, v6}, Lo/mw;-><init>(Lo/H;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V

    iput-object v4, v0, Lo/bM;->s:Lo/mw;

    .line 344
    new-instance v4, Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {v4, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    .line 345
    iget-object v4, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v5, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v4, v5}, Lo/CameraPrewarmService;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 346
    new-instance v4, Lo/ye;

    iget-object v5, v0, Lo/bM;->G:Lo/J;

    invoke-direct {v4, v2, v5}, Lo/ye;-><init>(Landroid/content/Context;Lo/H;)V

    iput-object v4, v0, Lo/bM;->h:Lo/ye;

    .line 347
    iget-object v4, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v5, v0, Lo/bM;->h:Lo/ye;

    invoke-virtual {v4, v5}, Lo/CameraPrewarmService;->d(Lo/xZ;)V

    .line 349
    new-instance v12, Lo/pM;

    new-instance v4, Lo/pZ;

    iget-object v5, v0, Lo/bM;->e:Lo/cG;

    iget-object v6, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v7, v0, Lo/bM;->s:Lo/mw;

    invoke-direct {v4, v5, v6, v7}, Lo/pZ;-><init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;)V

    invoke-direct {v12, v0, v4}, Lo/pM;-><init>(Lo/SmartSelectSprite;Lo/pZ;)V

    .line 350
    new-instance v4, Lo/pB;

    invoke-virtual/range {p0 .. p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, v0, Lo/bM;->e:Lo/cG;

    iget-object v10, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v11, v0, Lo/bM;->G:Lo/J;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lo/pB;-><init>(Landroid/content/Context;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/H;)V

    iput-object v4, v0, Lo/bM;->g:Lo/pB;

    .line 351
    iget-object v4, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v5, v0, Lo/bM;->g:Lo/pB;

    invoke-virtual {v4, v5}, Lo/CameraPrewarmService;->c(Lo/pz;)V

    .line 355
    invoke-static {}, Lo/aek;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, v0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v4}, Lo/cG;->aC()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    const-string v4, "com.netflix.mediaclient.service.pushnotification.ADMPushNotificationAgent"

    .line 358
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 359
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Lcom/netflix/mediaclient/service/user/UserAgent;

    aput-object v7, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    .line 360
    iget-object v6, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 362
    instance-of v4, v3, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    if-eqz v4, :cond_1

    .line 363
    check-cast v3, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    iput-object v3, v0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Could not successfully create ADMPushNotificationAgent instance"

    .line 366
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;

    iget-object v3, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v1, v0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    .line 374
    :cond_1
    :goto_0
    new-instance v1, Lo/jb;

    iget-object v3, v0, Lo/bM;->e:Lo/cG;

    iget-object v4, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v5, v0, Lo/bM;->s:Lo/mw;

    invoke-direct {v1, v2, v3, v4, v5}, Lo/jb;-><init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;)V

    iput-object v1, v0, Lo/bM;->j:Lo/jb;

    .line 375
    iget-object v1, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v3, v0, Lo/bM;->j:Lo/jb;

    invoke-virtual {v1, v3}, Lo/CameraPrewarmService;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    .line 376
    new-instance v1, Lo/hM;

    invoke-direct {v1}, Lo/hM;-><init>()V

    iput-object v1, v0, Lo/bM;->m:Lo/hM;

    .line 378
    new-instance v1, Lo/it;

    iget-object v3, v0, Lo/bM;->t:Lo/iy;

    iget-object v4, v0, Lo/bM;->e:Lo/cG;

    iget-object v5, v0, Lo/bM;->j:Lo/jb;

    invoke-direct {v1, v2, v3, v4, v5}, Lo/it;-><init>(Landroid/content/Context;Lo/iy;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v1, v0, Lo/bM;->C:Lo/it;

    .line 380
    new-instance v1, Lo/hY;

    iget-object v3, v0, Lo/bM;->e:Lo/cG;

    iget-object v4, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v5, v0, Lo/bM;->f:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    iget-object v6, v0, Lo/bM;->C:Lo/it;

    invoke-direct {v1, v3, v4, v5, v6}, Lo/hY;-><init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zM;Lo/iu;)V

    iput-object v1, v0, Lo/bM;->b:Lo/hY;

    .line 381
    new-instance v1, Lo/hX;

    iget-object v3, v0, Lo/bM;->b:Lo/hY;

    iget-object v4, v0, Lo/bM;->v:Lo/bI;

    invoke-direct {v1, v3, v4}, Lo/hX;-><init>(Lo/hY;Lo/bI;)V

    iput-object v1, v0, Lo/bM;->n:Lo/hX;

    .line 383
    new-instance v1, Lo/hL;

    invoke-direct {v1}, Lo/hL;-><init>()V

    iput-object v1, v0, Lo/bM;->o:Lo/hL;

    .line 384
    iget-object v1, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v3, v0, Lo/bM;->o:Lo/hL;

    invoke-virtual {v1, v3}, Lo/CameraPrewarmService;->b(Lo/zF;)V

    .line 385
    new-instance v1, Lo/za;

    iget-object v3, v0, Lo/bM;->e:Lo/cG;

    iget-object v4, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {v1, v3, v4}, Lo/za;-><init>(Lo/cG;Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    iput-object v1, v0, Lo/bM;->k:Lo/za;

    .line 386
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v3, v0, Lo/bM;->C:Lo/it;

    invoke-virtual {v0, v1, v3}, Lo/bM;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 388
    new-instance v1, Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/NetflixPowerManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/bM;->A:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    .line 390
    new-instance v1, Lo/nQ;

    iget-object v7, v0, Lo/bM;->e:Lo/cG;

    iget-object v8, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v9, v0, Lo/bM;->C:Lo/it;

    iget-object v10, v0, Lo/bM;->G:Lo/J;

    iget-object v11, v0, Lo/bM;->A:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v12

    invoke-direct/range {v4 .. v11}, Lo/nQ;-><init>(Landroid/content/Context;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/iu;Lo/H;Lcom/netflix/mediaclient/service/NetflixPowerManager;)V

    iput-object v1, v0, Lo/bM;->q:Lo/nQ;

    .line 393
    iget-object v13, v0, Lo/bM;->t:Lo/iy;

    iget-object v14, v0, Lo/bM;->h:Lo/ye;

    iget-object v15, v0, Lo/bM;->b:Lo/hY;

    iget-object v1, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v3, v0, Lo/bM;->q:Lo/nQ;

    iget-object v4, v0, Lo/bM;->e:Lo/cG;

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v13 .. v18}, Lo/is;->a(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/cz;)Lo/is;

    move-result-object v1

    iput-object v1, v0, Lo/bM;->L:Lo/is;

    .line 396
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v3, v0, Lo/bM;->L:Lo/is;

    invoke-virtual {v0, v1, v3}, Lo/bM;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 398
    iget-object v1, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    iget-object v3, v0, Lo/bM;->q:Lo/nQ;

    invoke-virtual {v1, v3}, Lo/CameraPrewarmService;->c(Lo/nS;)V

    .line 399
    iget-object v1, v0, Lo/bM;->N:Lo/CameraPrewarmService;

    invoke-virtual {v1, v0}, Lo/CameraPrewarmService;->e(Lo/Ac;)V

    .line 400
    new-instance v1, Lo/xP;

    iget-object v3, v0, Lo/bM;->C:Lo/it;

    iget-object v4, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {v1, v3, v4}, Lo/xP;-><init>(Lo/iu;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v1, v0, Lo/bM;->l:Lo/xP;

    .line 401
    new-instance v1, Lo/bT;

    iget-object v3, v0, Lo/bM;->g:Lo/pB;

    invoke-direct {v1, v2, v0, v3}, Lo/bT;-><init>(Landroid/content/Context;Lo/zL;Lo/pz;)V

    iput-object v1, v0, Lo/bM;->F:Lo/bT;

    .line 402
    new-instance v1, Lo/nC;

    invoke-direct {v1}, Lo/nC;-><init>()V

    iput-object v1, v0, Lo/bM;->r:Lo/nC;

    .line 404
    iget-object v3, v0, Lo/bM;->M:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    invoke-virtual/range {p0 .. p0}, Lo/bM;->M()J

    move-result-wide v4

    iget-object v6, v0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v7, v0, Lo/bM;->q:Lo/nQ;

    iget-object v8, v0, Lo/bM;->o:Lo/hL;

    iget-object v1, v0, Lo/bM;->j:Lo/jb;

    invoke-virtual {v1}, Lo/jb;->a()Lo/zz;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->e(JLcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/zF;Lo/zz;)V

    .line 405
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    new-instance v3, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;

    iget-object v4, v0, Lo/bM;->t:Lo/iy;

    invoke-direct {v3, v2, v4}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;-><init>(Landroid/content/Context;Lo/iy;)V

    invoke-virtual {v0, v1, v3}, Lo/bM;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 407
    new-instance v1, Lo/tR;

    iget-object v2, v0, Lo/bM;->t:Lo/iy;

    invoke-virtual/range {p0 .. p0}, Lo/bM;->P()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v3

    iget-object v4, v0, Lo/bM;->b:Lo/hY;

    iget-object v5, v0, Lo/bM;->j:Lo/jb;

    invoke-direct {v1, v2, v3, v4, v5}, Lo/tR;-><init>(Lo/iy;Lcom/netflix/mediaclient/servicemgr/PrepareManager;Lo/hY;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    .line 408
    sget-object v2, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v0, v2, v1}, Lo/bM;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 409
    sget-object v2, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->j:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v0, v2, v1}, Lo/bM;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 410
    invoke-direct/range {p0 .. p0}, Lo/bM;->af()V

    .line 412
    invoke-direct/range {p0 .. p0}, Lo/bM;->T()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 852
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 853
    iget-object v0, p0, Lo/bM;->K:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    const-string v0, "NetflixService"

    const-string v1, "NetflixService.onDestroy."

    .line 854
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-direct {p0}, Lo/bM;->ac()V

    const-string v1, "Send local intent that Netflix service is destroyed"

    .line 858
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    .line 860
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 863
    iget-object v1, p0, Lo/bM;->I:Lo/bR;

    if-eqz v1, :cond_0

    const-string v2, "PartnerOfflineBroadcastReceiver"

    .line 864
    invoke-direct {p0, v1, v2}, Lo/bM;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 866
    :cond_0
    iget-object v1, p0, Lo/bM;->H:Lo/bS;

    if-eqz v1, :cond_1

    const-string v2, "PartnerUserAgentBroadcastReceiver"

    .line 867
    invoke-direct {p0, v1, v2}, Lo/bM;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 870
    :cond_1
    iget-object v1, p0, Lo/bM;->V:Landroid/content/BroadcastReceiver;

    const-string v2, "network receiver"

    invoke-direct {p0, v1, v2}, Lo/bM;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 871
    invoke-direct {p0}, Lo/bM;->al()V

    .line 872
    invoke-direct {p0}, Lo/bM;->ab()V

    .line 874
    iget-object v1, p0, Lo/bM;->v:Lo/bI;

    invoke-virtual {v1}, Lo/bI;->clear()V

    .line 877
    iget-boolean v1, p0, Lo/bM;->B:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/bM;->i:Lo/ko;

    if-eqz v1, :cond_2

    .line 878
    invoke-virtual {v1}, Lo/ko;->destroy()V

    .line 880
    :cond_2
    iget-object v1, p0, Lo/bM;->b:Lo/hY;

    if-eqz v1, :cond_3

    .line 881
    invoke-virtual {v1}, Lo/hY;->destroy()V

    .line 884
    :cond_3
    iget-object v1, p0, Lo/bM;->g:Lo/pB;

    if-eqz v1, :cond_4

    .line 885
    invoke-virtual {v1}, Lo/pB;->destroy()V

    .line 887
    :cond_4
    iget-object v1, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    if-eqz v1, :cond_5

    .line 888
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->destroy()V

    .line 891
    :cond_5
    iget-object v1, p0, Lo/bM;->e:Lo/cG;

    if-eqz v1, :cond_6

    .line 892
    invoke-virtual {v1}, Lo/cG;->destroy()V

    .line 894
    :cond_6
    iget-object v1, p0, Lo/bM;->c:Lo/cd;

    if-eqz v1, :cond_7

    .line 895
    invoke-virtual {v1}, Lo/cd;->destroy()V

    .line 897
    :cond_7
    iget-object v1, p0, Lo/bM;->h:Lo/ye;

    if-eqz v1, :cond_8

    .line 898
    invoke-virtual {v1}, Lo/ye;->destroy()V

    .line 900
    :cond_8
    iget-object v1, p0, Lo/bM;->j:Lo/jb;

    if-eqz v1, :cond_9

    .line 901
    invoke-virtual {v1}, Lo/jb;->destroy()V

    .line 903
    :cond_9
    iget-object v1, p0, Lo/bM;->m:Lo/hM;

    if-eqz v1, :cond_a

    .line 904
    invoke-virtual {v1}, Lo/hM;->destroy()V

    .line 907
    :cond_a
    iget-object v1, p0, Lo/bM;->k:Lo/za;

    if-eqz v1, :cond_b

    .line 908
    invoke-virtual {v1}, Lo/za;->destroy()V

    .line 911
    :cond_b
    iget-object v1, p0, Lo/bM;->q:Lo/nQ;

    if-eqz v1, :cond_c

    .line 912
    invoke-virtual {v1}, Lo/nQ;->destroy()V

    .line 915
    :cond_c
    iget-object v1, p0, Lo/bM;->s:Lo/mw;

    if-eqz v1, :cond_d

    .line 916
    invoke-virtual {v1}, Lo/mw;->destroy()V

    .line 919
    :cond_d
    iget-object v1, p0, Lo/bM;->A:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v1, :cond_e

    .line 920
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->d()V

    .line 922
    :cond_e
    iget-object v1, p0, Lo/bM;->C:Lo/it;

    if-eqz v1, :cond_f

    .line 923
    invoke-virtual {v1}, Lo/it;->e()V

    .line 925
    :cond_f
    iget-object v1, p0, Lo/bM;->F:Lo/bT;

    if-eqz v1, :cond_10

    .line 926
    invoke-virtual {v1}, Lo/bT;->e()V

    .line 928
    :cond_10
    iget-object v1, p0, Lo/bM;->r:Lo/nC;

    if-eqz v1, :cond_11

    .line 929
    invoke-virtual {v1}, Lo/nC;->destroy()V

    .line 931
    :cond_11
    iget-object v1, p0, Lo/bM;->L:Lo/is;

    if-eqz v1, :cond_12

    .line 932
    invoke-virtual {v1}, Lo/is;->e()V

    :cond_12
    const/4 v1, 0x0

    .line 934
    iput-object v1, p0, Lo/bM;->t:Lo/iy;

    .line 935
    iget-object v1, p0, Lo/bM;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 936
    sput-boolean v1, Lo/bM;->y:Z

    .line 941
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying app process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " done."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 464
    invoke-direct {p0, p1}, Lo/bM;->b(Landroid/content/Intent;)V

    .line 465
    iget-boolean v0, p0, Lo/bM;->w:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p1}, Lo/bM;->e(Landroid/content/Intent;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lo/bM;->u:Ljava/util/ArrayList;

    new-instance v1, Lo/bM$PendingIntent;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/bM$PendingIntent;-><init>(Lo/bM;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 1713
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1717
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "prefs_app_task_removed_user"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 2150
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 2151
    iget-boolean v0, p0, Lo/bM;->w:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 2157
    iget-object v0, p0, Lo/bM;->q:Lo/nQ;

    invoke-virtual {v0, p1}, Lo/nQ;->onTrimMemory(I)V

    .line 2159
    :cond_0
    iget-object v0, p0, Lo/bM;->g:Lo/pB;

    invoke-virtual {v0, p1}, Lo/pB;->onTrimMemory(I)V

    .line 2160
    iget-object v0, p0, Lo/bM;->h:Lo/ye;

    invoke-virtual {v0, p1}, Lo/ye;->onTrimMemory(I)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const-string p1, "NetflixService"

    const-string v0, "NetflixService is onUnbind"

    .line 1593
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lo/bM;->v:Lo/bI;

    invoke-virtual {v0}, Lo/bI;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We still have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " callbacks - not stopping service"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1601
    :cond_0
    iget-boolean v0, p0, Lo/bM;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bM;->i:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "has active mdx session"

    .line 1602
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1604
    :cond_1
    iget-object v0, p0, Lo/bM;->x:Lcom/netflix/mediaclient/android/app/Status;

    sget-object v2, Lo/LegacyErrorStrings;->n:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v0, v2, :cond_2

    const-string v0, "Service init failed due to no connectivity - calling stopSelf()"

    .line 1606
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual {p0}, Lo/bM;->stopSelf()V

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x1b77400

    .line 1612
    invoke-direct {p0, v2, v3}, Lo/bM;->e(J)V

    :goto_0
    return v1
.end method

.method public p()V
    .locals 1

    .line 1178
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->v()V

    return-void
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;"
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 1

    .line 1407
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->z()V

    return-void
.end method

.method public s()Z
    .locals 2

    .line 1139
    iget-object v0, p0, Lo/bM;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->p()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "NetflixService"

    const-string v1, "isProfileSwitchInProgress is false because user agent is null"

    .line 1142
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1418
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->aG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lo/Ak;
    .locals 1

    .line 1465
    new-instance v0, Lo/bM$7;

    invoke-direct {v0, p0}, Lo/bM$7;-><init>(Lo/bM;)V

    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1441
    invoke-static {}, Lo/adU;->b()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1451
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/qG;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .line 1423
    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->b()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 1446
    invoke-virtual {p0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/qG;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bM;->e:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;
    .locals 1

    .line 1776
    iget-object v0, p0, Lo/bM;->m:Lo/hM;

    return-object v0
.end method
