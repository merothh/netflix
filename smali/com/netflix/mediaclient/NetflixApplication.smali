.class public Lcom/netflix/mediaclient/NetflixApplication;
.super Lo/CarrierIdentifier;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;
    }
.end annotation


# static fields
.field private static B:Z = false

.field private static final t:Lcom/google/gson/Gson;

.field private static v:Z = false


# instance fields
.field private A:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final I:Landroid/content/BroadcastReceiver;

.field protected b:Lo/RJ;

.field protected c:Lo/CameraPrewarmService;

.field private d:Lo/Am;

.field private f:J

.field private g:J

.field private h:J

.field public i:Lo/ah;

.field protected final j:Lo/MimeTypeMap;

.field private k:Lo/Tp;

.field private l:Landroid/content/Context;

.field private m:Landroid/content/Intent;

.field private n:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Throwable;

.field private p:Z

.field private q:Ljava/util/Timer;

.field private r:Z

.field private s:Lo/iy;

.field private final u:Lo/afH;

.field private w:Z

.field private x:Ljava/util/TimerTask;

.field private final y:J

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 392
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 393
    invoke-static {}, Lo/Transformation;->d()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 394
    invoke-static {}, Lo/CalendarContract;->a()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 395
    invoke-static {}, Lo/TabWidget;->a()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 396
    invoke-static {}, Lo/CarrierService;->e()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 397
    invoke-static {}, Lo/Condition;->e()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 398
    invoke-static {}, Lo/MediaStore;->c()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 399
    invoke-static {}, Lo/wE;->c()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/NetflixApplication;->t:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 181
    invoke-direct {p0}, Lo/CarrierIdentifier;-><init>()V

    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->p:Z

    .line 352
    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->r:Z

    .line 354
    invoke-static {}, Lo/MimeTypeMap;->c()Lo/MimeTypeMap;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->j:Lo/MimeTypeMap;

    .line 360
    new-instance v1, Lo/afH;

    invoke-direct {v1}, Lo/afH;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->u:Lo/afH;

    const-wide/16 v1, 0x258

    .line 365
    iput-wide v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->y:J

    .line 380
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 382
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 738
    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$4;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->z:Landroid/content/BroadcastReceiver;

    .line 1004
    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$3;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->I:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static J()Lcom/google/gson/Gson;
    .locals 1

    .line 935
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->t:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static K()V
    .locals 1

    const/4 v0, 0x0

    .line 931
    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->e:Z

    return-void
.end method

.method public static N()V
    .locals 1

    const/4 v0, 0x1

    .line 927
    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->e:Z

    return-void
.end method

.method public static O()Z
    .locals 1

    .line 939
    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->v:Z

    return v0
.end method

.method private P()V
    .locals 2

    .line 814
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/PidHealthStats;->c(Z)V

    .line 816
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 815
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 819
    :goto_0
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/PidHealthStats;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static Q()Z
    .locals 1

    .line 963
    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->B:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-static {v0}, Lo/adh;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private R()V
    .locals 3

    const-string v0, "NetflixApplication"

    const-string v1, "Registering application broadcast receiver"

    .line 787
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    const-string v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    .line 788
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->z:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-static {p0, v1, v2, v0}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private S()Landroid/content/Context;
    .locals 3

    .line 1054
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "NetflixApplication"

    const-string v2, "using dynamicContext"

    .line 1056
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private synthetic X()J
    .locals 4

    const-string v0, "lolomo_cache_expiration_hours_override"

    const/4 v1, -0x1

    .line 496
    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 497
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ltz v0, :cond_0

    int-to-long v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xa

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.MAIN"

    .line 386
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.category.LAUNCHER"

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 0

    .line 520
    invoke-static {}, Lo/NfcB;->d()Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/netflix/mediaclient/NetflixApplication;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/netflix/mediaclient/NetflixApplication;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 1027
    invoke-static {p0}, Lo/adR;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1028
    invoke-static {}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->getInstance()Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->x:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)J

    .line 1029
    invoke-static {}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->getInstance()Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->y:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/util/AUILoggingUtilities$AUIDebugSessionLogger;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)J

    :cond_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 1

    .line 513
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/NetflixApplication;)J
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->X()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/NetflixApplication;Z)Z
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->w:Z

    return p1
.end method

.method public static synthetic d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/NetflixApplication;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/NetflixApplication;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/NetflixApplication;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/netflix/mediaclient/NetflixApplication;->I:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static getInstance()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    .line 287
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->a:Lo/CarrierIdentifier;

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method private k()J
    .locals 3

    .line 609
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 610
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 611
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private l()V
    .locals 5

    .line 248
    sget-object v0, Lo/Tj;->a:Lo/Tj;

    invoke-virtual {v0}, Lo/Tj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->i:Lo/ah;

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lo/ab;->d:Lo/ab$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/ab$StateListAnimator;->c(Landroid/content/Context;)Lo/ab;

    move-result-object v0

    const/4 v1, 0x1

    .line 251
    invoke-static {}, Lo/ek;->i()Z

    move-result v2

    .line 252
    invoke-static {}, Lo/ek;->h()J

    move-result-wide v3

    .line 250
    invoke-interface {v0, v1, v2, v3, v4}, Lo/ab;->e(ZZJ)Lo/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->i:Lo/ah;

    .line 254
    const-class v0, Lo/ah;

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->i:Lo/ah;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->i:Lo/ah;

    sget-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->d:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    invoke-interface {v0, v1, v2}, Lo/ah;->b(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;Lcom/netflix/cl/model/AppView;)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->i:Lo/ah;

    invoke-interface {v0}, Lo/ah;->e()V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 4

    .line 616
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/tvui/NrdAppId;

    invoke-static {}, Lo/adP;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/tvui/NrdAppId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 617
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/NrdSessionId;

    invoke-static {}, Lo/adP;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/context/NrdSessionId;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 618
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/AppVersion;

    invoke-static {p0}, Lo/adq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/AppVersion;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 619
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/Device;

    invoke-static {}, Lo/dj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/Device;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 620
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/DeviceLocale;

    sget-object v2, Lo/ys;->a:Lo/ys;

    invoke-virtual {v2}, Lo/ys;->e()Lo/afz;

    move-result-object v2

    invoke-virtual {v2}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/DeviceLocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 621
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/MdxLib;

    const-string v2, "2014.1"

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/MdxLib;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 622
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/MdxJs;

    const-string v2, "1.1.6-android"

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/MdxJs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 623
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/OsVersion;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/OsVersion;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 624
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/UserAgent;

    const-string v2, "Android"

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/UserAgent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 625
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/TimeZone;

    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/TimeZone;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 630
    invoke-static {}, Lo/adq;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "NetflixApplication"

    const-string v3, "Build data: %s"

    .line 631
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 632
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/context/UiVersion;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/context/UiVersion;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    return-void
.end method

.method private p()V
    .locals 2

    .line 687
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    new-instance v1, Lo/Pc;

    invoke-direct {v1}, Lo/Pc;-><init>()V

    invoke-static {v0, v1}, Lo/Ov;->d(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;Lo/OX;)V

    .line 688
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->MULTI_TITLE_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    new-instance v1, Lo/OU;

    invoke-direct {v1}, Lo/OU;-><init>()V

    invoke-static {v0, v1}, Lo/Ov;->d(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;Lo/OX;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 678
    const-class v0, Lo/MO;

    sget-object v1, Lo/RenderProcessGoneDetail;->b:Lo/RenderProcessGoneDetail;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 679
    const-class v0, Lo/Yk;

    sget-object v1, Lo/ServiceWorkerWebSettings;->a:Lo/ServiceWorkerWebSettings;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 680
    const-class v0, Lo/PermissionRequest;

    sget-object v1, Lo/SafeBrowsingResponse;->e:Lo/SafeBrowsingResponse;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 681
    const-class v0, Lo/PluginList;

    sget-object v1, Lo/PluginStub;->c:Lo/PluginStub;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 682
    const-class v0, Lo/ServiceWorkerClient;

    sget-object v1, Lo/TokenBindingService;->b:Lo/TokenBindingService;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 683
    const-class v0, Lo/M;

    new-instance v1, Lo/M;

    invoke-direct {v1}, Lo/M;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->r:Z

    return-void
.end method

.method public C()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->p:Z

    return v0
.end method

.method public D()V
    .locals 3

    .line 586
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->m()V

    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/Esn;

    iget-object v2, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    invoke-virtual {v2}, Lo/Am;->i()Lo/cz;

    move-result-object v2

    invoke-interface {v2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/Esn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 592
    :cond_0
    new-instance v0, Lo/afK;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/afK;-><init>(Landroid/content/Context;)V

    .line 593
    invoke-virtual {v0}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/VisitorDeviceId;

    invoke-virtual {v0}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/session/VisitorDeviceId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->q()V

    .line 601
    :cond_2
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/UserInteraction;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 603
    invoke-static {}, Lo/afG;->e()V

    .line 604
    invoke-static {}, Lo/afG;->d()V

    return-void
.end method

.method public E()Z
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public F()V
    .locals 4

    .line 869
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->q:Ljava/util/Timer;

    .line 870
    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$2;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->x:Ljava/util/TimerTask;

    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->q:Ljava/util/Timer;

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->x:Ljava/util/TimerTask;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public G()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->x:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->q:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 893
    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->w:Z

    return-void
.end method

.method public H()Lo/MimeTypeMap;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->j:Lo/MimeTypeMap;

    return-object v0
.end method

.method public I()Z
    .locals 1

    .line 735
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public L()Z
    .locals 2

    .line 905
    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->w:Z

    const/4 v1, 0x0

    .line 906
    iput-boolean v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->w:Z

    return v0
.end method

.method public M()Lo/afH;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->u:Lo/afH;

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 978
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {v0}, Lo/Am;->d()V

    .line 985
    :cond_0
    new-instance v0, Lo/Am;

    invoke-direct {v0}, Lo/Am;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    .line 986
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->d:Lo/Am;

    new-instance v1, Lcom/netflix/mediaclient/NetflixApplication$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/NetflixApplication$1;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    invoke-virtual {v0, v1}, Lo/Am;->c(Lo/zT;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->A:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 849
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->A:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1035
    invoke-super {p0, p1}, Lo/CarrierIdentifier;->attachBaseContext(Landroid/content/Context;)V

    .line 1037
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1041
    :cond_0
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->install(Landroid/content/Context;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lo/bO;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    :goto_0
    const p2, 0x10028000

    .line 306
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    invoke-static {p1}, Lo/adk;->h(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->n:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject;->hasComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NetflixApplication"

    const-string v2, "signal homeLolomoLoadEnded => %s"

    .line 236
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/NetflixApplication;->d(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->n:Lio/reactivex/subjects/ReplaySubject;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    .line 239
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->n:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject;->onComplete()V

    .line 241
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->l()V

    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .locals 0

    .line 558
    invoke-static {}, Lo/acC;->b()V

    .line 559
    invoke-static {p1}, Lo/acC;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->m:Landroid/content/Intent;

    return-void
.end method

.method public c(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "branch"

    const-string v1, "release/7.54"

    .line 544
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rev"

    const-string v1, "f056be4027fe29a9715b8317584b81968ccc17b0"

    .line 545
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lo/jE;)V
    .locals 2

    .line 425
    invoke-static {}, Lo/adk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NetflixApplication"

    const-string v0, "Running under test, do NOT enable external crash reporter!"

    .line 426
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 430
    invoke-interface {p1, p0, v0}, Lo/jE;->d(Landroid/content/Context;Z)V

    const-string v0, "create"

    .line 431
    invoke-interface {p1, v0}, Lo/jE;->a(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_locale"

    invoke-interface {p1, v1, v0}, Lo/jE;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d(Landroid/content/Context;)V
    .locals 0

    .line 553
    invoke-static {}, Lo/ht;->a()V

    .line 554
    invoke-static {p1}, Lo/ht;->d(Landroid/content/Context;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 273
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-wide v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->h:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "appOnCreateLatency"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-wide v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "latencyFromAppOnCreateToTTRStart"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->n:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->l:Landroid/content/Context;

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/NetflixApplication;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 843
    const-class v0, Lo/q;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/q;

    invoke-interface {v0, p1}, Lo/q;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/Locale;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1047
    sget-object p1, Lo/ys;->a:Lo/ys;

    invoke-virtual {p1, p0}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object p1

    invoke-virtual {p1}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object p1

    .line 1049
    :cond_0
    const-class v0, Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->S()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/afw;->c(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lo/TextViewMetrics;->d(Ljava/lang/Class;Ljava/lang/Object;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 724
    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->p:Z

    const-string v0, "useragent_userprofiles_data"

    const/4 v1, 0x0

    .line 725
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->p:Z

    return-void
.end method

.method public h()Lo/iy;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->s:Lo/iy;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 918
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/MimeTypeMap;->e()Z

    move-result v0

    return v0
.end method

.method public j()Lo/Plugin;
    .locals 1

    .line 731
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    return-object v0
.end method

.method public n()Lo/CameraPrewarmService;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->c:Lo/CameraPrewarmService;

    return-object v0
.end method

.method public o()J
    .locals 4

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/NetflixApplication;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-super {p0, p1}, Lo/CarrierIdentifier;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 413
    :cond_0
    invoke-super {p0, p1}, Lo/CarrierIdentifier;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "NetflixApplication"

    const-string v0, "onConfigurationChanged"

    .line 414
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 415
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/NetflixApplication;->e(Ljava/util/Locale;)V

    .line 416
    const-class p1, Lo/Cl;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Cl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/Cl;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;->e(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-super {p0}, Lo/CarrierIdentifier;->onCreate()V

    return-void

    .line 448
    :cond_0
    invoke-static {}, Lo/MimeTypeMap;->c()Lo/MimeTypeMap;

    move-result-object v0

    sget-object v1, Lo/zs;->b:Lo/zs;

    invoke-virtual {v0, v1}, Lo/MimeTypeMap;->b(Lo/JavascriptInterface;)Z

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->g:J

    .line 452
    :try_start_0
    sget-object v0, Lo/jy;->a:Lo/jy;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->c(Lo/jE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 455
    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->o:Ljava/lang/Throwable;

    .line 458
    :goto_0
    invoke-super {p0}, Lo/CarrierIdentifier;->onCreate()V

    .line 460
    invoke-static {}, Lo/adp;->d()V

    .line 462
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->q()V

    .line 463
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->e(Landroid/content/Context;)V

    const-string v0, "NetflixApplication"

    const-string v1, "Application onCreate"

    .line 464
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 466
    new-instance v0, Lo/CameraPrewarmService;

    invoke-direct {v0}, Lo/CameraPrewarmService;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->c:Lo/CameraPrewarmService;

    .line 467
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->u()V

    .line 470
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 471
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->c(Ljava/util/Properties;)V

    .line 472
    invoke-static {v0}, Lo/jB;->e(Ljava/util/Properties;)V

    .line 474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->z()V

    .line 475
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->A()V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->o:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 479
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->o:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->o:Ljava/lang/Throwable;

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->p()V

    .line 485
    new-instance v0, Lo/iz;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/iz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->s:Lo/iy;

    .line 487
    new-instance v0, Lo/HttpAuthHandler;

    invoke-direct {v0}, Lo/HttpAuthHandler;-><init>()V

    sput-object v0, Lo/bU;->a:Lo/bO;

    .line 490
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->y()V

    .line 491
    invoke-static {p0}, Lcom/netflix/mediaclient/NetflixApplication;->b(Landroid/content/Context;)V

    .line 493
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NotificationUtils;->a(Landroid/content/Context;)V

    .line 495
    new-instance v0, Lo/Sandman;

    invoke-direct {v0, p0}, Lo/Sandman;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    invoke-static {v0}, Lo/BrowserContract;->c(Lo/BrowserContract$ActionBar;)V

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->j:Lo/MimeTypeMap;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 501
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->R()V

    .line 502
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->P()V

    .line 503
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->v()V

    .line 504
    invoke-virtual {p0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->d(Landroid/content/Context;)V

    .line 505
    invoke-virtual {p0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Context;)V

    .line 507
    invoke-static {}, Lo/ed;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 512
    :cond_2
    sget-object v0, Lo/EuiccProfileInfo;->c:Lo/EuiccProfileInfo;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    .line 520
    sget-object v0, Lo/GetDownloadableSubscriptionMetadataResult;->b:Lo/GetDownloadableSubscriptionMetadataResult;

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->setInitMainThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 522
    invoke-static {}, Lcom/uber/rxdogtag/RxDogTag;->a()Lcom/uber/rxdogtag/RxDogTag$Builder;

    move-result-object v0

    sget-object v1, Lo/GetDefaultDownloadableSubscriptionListResult;->d:Lo/GetDefaultDownloadableSubscriptionListResult;

    .line 523
    invoke-virtual {v0, v1}, Lcom/uber/rxdogtag/RxDogTag$Builder;->c(Lcom/uber/rxdogtag/RxDogTag$Configurer;)Lcom/uber/rxdogtag/RxDogTag$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;->d()V

    .line 526
    new-instance v0, Lo/Tp;

    invoke-direct {v0, p0}, Lo/Tp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->k:Lo/Tp;

    .line 528
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;

    .line 529
    invoke-virtual {v0, p0, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;

    .line 530
    invoke-interface {v0}, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BD;

    .line 531
    invoke-interface {v2, p0}, Lo/BD;->d(Landroid/app/Application;)V

    goto :goto_1

    .line 534
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 535
    iget-wide v3, p0, Lcom/netflix/mediaclient/NetflixApplication;->g:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/netflix/mediaclient/NetflixApplication;->h:J

    .line 537
    invoke-interface {v0}, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;->j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    .line 538
    sget-object v3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->c:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    iget-wide v4, p0, Lcom/netflix/mediaclient/NetflixApplication;->g:J

    invoke-interface {v0, v3, v4, v5}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V

    .line 539
    sget-object v3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->b:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {v0, v3, v1, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 694
    invoke-super {p0, p1}, Lo/CarrierIdentifier;->onTrimMemory(I)V

    .line 696
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetflixApplication"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    .line 703
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(I)V

    :cond_1
    return-void
.end method

.method q()V
    .locals 1

    .line 225
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->n:Lio/reactivex/subjects/ReplaySubject;

    return-void
.end method

.method public r()Lo/Tp;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->k:Lo/Tp;

    return-object v0
.end method

.method public s()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->n:Lio/reactivex/subjects/ReplaySubject;

    return-object v0
.end method

.method public t()Landroid/content/Intent;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->m:Landroid/content/Intent;

    return-object v0
.end method

.method protected u()V
    .locals 2

    .line 567
    new-instance v0, Lo/afD;

    invoke-direct {v0, p0}, Lo/afD;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    .line 568
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->start(Lcom/netflix/cl/Platform$PlatformImpl;)V

    .line 569
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->m()V

    return-void
.end method

.method protected v()V
    .locals 0

    .line 549
    invoke-static {}, Lo/dA;->e()V

    return-void
.end method

.method public w()V
    .locals 5

    .line 266
    iget-wide v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/NetflixApplication;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->f:J

    :cond_0
    return-void
.end method

.method public x()Lo/RJ;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->b:Lo/RJ;

    return-object v0
.end method

.method protected y()V
    .locals 1

    .line 577
    invoke-static {}, Lo/afG;->d()V

    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->u:Lo/afH;

    invoke-virtual {v0}, Lo/afH;->a()V

    return-void
.end method

.method protected z()V
    .locals 3

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->e(Ljava/util/Locale;)V

    .line 637
    const-class v0, Lo/DS;

    new-instance v1, Lo/DS;

    invoke-direct {v1}, Lo/DS;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 638
    const-class v0, Lo/SpinnerAdapter;

    new-instance v1, Lo/jF;

    new-instance v2, Lo/EuiccService;

    invoke-direct {v2}, Lo/EuiccService;-><init>()V

    invoke-direct {v1, v2}, Lo/jF;-><init>(Lo/jF$Application;)V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 639
    new-instance v0, Lo/RJ;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/RJ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->b:Lo/RJ;

    .line 640
    const-class v0, Lo/Ck;

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->b:Lo/RJ;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 641
    const-class v0, Lo/Cm;

    new-instance v1, Lo/Mk;

    invoke-direct {v1}, Lo/Mk;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 642
    const-class v0, Lo/Co;

    new-instance v1, Lo/adc;

    invoke-direct {v1}, Lo/adc;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 643
    const-class v0, Lo/Cl;

    new-instance v1, Lo/Yb;

    invoke-direct {v1}, Lo/Yb;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 644
    const-class v0, Lo/Ce;

    new-instance v1, Lo/JJ;

    invoke-direct {v1}, Lo/JJ;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 645
    const-class v0, Lo/Cn;

    new-instance v1, Lo/Tx;

    invoke-direct {v1}, Lo/Tx;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 646
    const-class v0, Lo/Cq;

    new-instance v1, Lo/OB;

    invoke-direct {v1}, Lo/OB;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 647
    const-class v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 648
    const-class v0, Lo/TabHost;

    new-instance v1, Lcom/netflix/mediaclient/NetflixApplication$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/NetflixApplication$5;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 663
    const-class v0, Lcom/google/gson/Gson;

    sget-object v1, Lcom/netflix/mediaclient/NetflixApplication;->t:Lcom/google/gson/Gson;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 664
    const-class v0, Lo/kg;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 665
    const-class v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    new-instance v1, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 666
    const-class v0, Lo/Cf;

    new-instance v1, Lo/Cf;

    .line 667
    invoke-static {}, Lo/OfDouble;->e()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/Cf;-><init>(Landroid/os/Handler;)V

    .line 666
    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 669
    const-class v0, Lo/Plugin;

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->j:Lo/MimeTypeMap;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 670
    const-class v0, Lo/bY;

    invoke-static {p0}, Lo/bQ;->b(Landroid/content/Context;)Lo/bY;

    move-result-object v1

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 671
    const-class v0, Lo/IE;

    new-instance v1, Lo/IK;

    const-class v2, Lo/bY;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/bY;

    invoke-direct {v1, v2}, Lo/IK;-><init>(Lo/bY;)V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 672
    const-class v0, Lo/E;

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 673
    const-class v0, Lo/UrlInterceptRegistry;

    new-instance v1, Lo/UserPackage;

    invoke-direct {v1}, Lo/UserPackage;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 674
    const-class v0, Lo/zl;

    invoke-static {}, Lo/zo;->a()Lo/zo;

    move-result-object v1

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
