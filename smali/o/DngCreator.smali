.class public Lo/DngCreator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final a:Lo/PhysicalCaptureResultInfo;

.field private final c:Lo/PerfMeasurement;

.field private final d:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/ContextHubClient;

.field private final g:Lo/SensorEventListener;

.field private final h:Lo/LegacySensorManager;

.field private final i:Lo/LegacySensorManager;

.field private final j:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Lo/PackageUserState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/DngCreator;->b:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lo/PhysicalCaptureResultInfo;Ljava/util/Set;Lo/UserInfo;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/ContextHubClient;Lo/UserInfo;Lo/UserInfo;Lo/PackageUserState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PhysicalCaptureResultInfo;",
            "Ljava/util/Set<",
            "Lo/PerfMeasurement;",
            ">;",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/LegacySensorManager;",
            "Lo/LegacySensorManager;",
            "Lo/SensorEventListener;",
            "Lo/ContextHubClient;",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/PackageUserState;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lo/DngCreator;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    iput-object p1, p0, Lo/DngCreator;->a:Lo/PhysicalCaptureResultInfo;

    .line 84
    new-instance p1, Lo/ParameterUtils;

    invoke-direct {p1, p2}, Lo/ParameterUtils;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lo/DngCreator;->c:Lo/PerfMeasurement;

    .line 85
    iput-object p3, p0, Lo/DngCreator;->e:Lo/UserInfo;

    .line 86
    iput-object p4, p0, Lo/DngCreator;->d:Lo/TriggerEventListener;

    .line 87
    iput-object p5, p0, Lo/DngCreator;->j:Lo/TriggerEventListener;

    .line 88
    iput-object p6, p0, Lo/DngCreator;->h:Lo/LegacySensorManager;

    .line 89
    iput-object p7, p0, Lo/DngCreator;->i:Lo/LegacySensorManager;

    .line 90
    iput-object p8, p0, Lo/DngCreator;->g:Lo/SensorEventListener;

    .line 91
    iput-object p9, p0, Lo/DngCreator;->f:Lo/ContextHubClient;

    .line 92
    iput-object p10, p0, Lo/DngCreator;->k:Lo/UserInfo;

    .line 93
    iput-object p11, p0, Lo/DngCreator;->m:Lo/UserInfo;

    .line 94
    iput-object p12, p0, Lo/DngCreator;->o:Lo/PackageUserState;

    return-void
.end method

.method private b(Lo/InputDeviceIdentifier;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lo/PerfMeasurement;)Lo/XmlResourceParser;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lo/PerfMeasurement;",
            ")",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "TT;>;>;"
        }
    .end annotation

    .line 703
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 704
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 707
    :cond_0
    invoke-virtual {p0, p2, p5}, Lo/DngCreator;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/PerfMeasurement;)Lo/PerfMeasurement;

    move-result-object p5

    .line 709
    iget-object v0, p0, Lo/DngCreator;->o:Lo/PackageUserState;

    if-eqz v0, :cond_1

    .line 710
    invoke-interface {v0, p4}, Lo/PackageUserState;->a(Ljava/lang/Object;)V

    .line 716
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 715
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->d(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 717
    new-instance p3, Lo/ActivityChangedEvent;

    .line 720
    invoke-virtual {p0}, Lo/DngCreator;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 725
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lo/ResourcesKey;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    const/4 v8, 0x1

    .line 727
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    move-object v1, p3

    move-object v2, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lo/ActivityChangedEvent;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 728
    invoke-static {p1, p3, p5}, Lo/CameraMetadataNative;->b(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)Lo/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 734
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 731
    :try_start_1
    invoke-static {p1}, Lo/BulkCursorDescriptor;->b(Ljava/lang/Throwable;)Lo/XmlResourceParser;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 734
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-object p1

    .line 733
    :goto_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 734
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    throw p1
.end method

.method private c(Lo/InputDeviceIdentifier;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lo/XmlResourceParser;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lo/XmlResourceParser<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p0, p2, v0}, Lo/DngCreator;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/PerfMeasurement;)Lo/PerfMeasurement;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lo/DngCreator;->o:Lo/PackageUserState;

    if-eqz v1, :cond_0

    .line 771
    invoke-interface {v1, p4}, Lo/PackageUserState;->a(Ljava/lang/Object;)V

    .line 776
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 775
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->d(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 778
    new-instance p3, Lo/ActivityChangedEvent;

    .line 780
    invoke-virtual {p0}, Lo/DngCreator;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v4, v0

    move-object v5, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lo/ActivityChangedEvent;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 787
    invoke-static {p1, p3, v0}, Lo/CaptureResultExtras;->b(Lo/InputDeviceIdentifier;Lo/ActivityChangedEvent;Lo/PerfMeasurement;)Lo/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 792
    invoke-static {p1}, Lo/BulkCursorDescriptor;->b(Ljava/lang/Throwable;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lo/SensorEventListener;
    .locals 1

    .line 841
    iget-object v0, p0, Lo/DngCreator;->g:Lo/SensorEventListener;

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lo/XmlResourceParser;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lo/XmlResourceParser<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lo/DngCreator;->e:Lo/UserInfo;

    invoke-interface {v0}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    sget-object p1, Lo/DngCreator;->b:Ljava/util/concurrent/CancellationException;

    invoke-static {p1}, Lo/BulkCursorDescriptor;->b(Ljava/lang/Throwable;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1

    .line 411
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/DngCreator;->a:Lo/PhysicalCaptureResultInfo;

    .line 412
    invoke-virtual {v0, p1}, Lo/PhysicalCaptureResultInfo;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/InputDeviceIdentifier;

    move-result-object v2

    .line 413
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->d:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/DngCreator;->c(Lo/InputDeviceIdentifier;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lo/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 420
    invoke-static {p1}, Lo/BulkCursorDescriptor;->b(Ljava/lang/Throwable;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/DngCreator;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lo/PerfMeasurement;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lo/PerfMeasurement;)Lo/XmlResourceParser;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lo/PerfMeasurement;",
            ")",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Lo/DngCreator;->a:Lo/PhysicalCaptureResultInfo;

    .line 273
    invoke-virtual {v0, p1}, Lo/PhysicalCaptureResultInfo;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/InputDeviceIdentifier;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    .line 274
    invoke-direct/range {v1 .. v6}, Lo/DngCreator;->b(Lo/InputDeviceIdentifier;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lo/PerfMeasurement;)Lo/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 281
    invoke-static {p1}, Lo/BulkCursorDescriptor;->b(Ljava/lang/Throwable;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lo/DngCreator;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->d:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lo/DngCreator;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;
    .locals 2

    .line 651
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#getCacheKey"

    .line 652
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 654
    :cond_0
    iget-object v0, p0, Lo/DngCreator;->g:Lo/SensorEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 657
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lo/GeofenceHardwareCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 658
    invoke-interface {v0, p1, p2}, Lo/SensorEventListener;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v1

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v0, p1, p2}, Lo/SensorEventListener;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v1

    .line 663
    :cond_2
    :goto_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 664
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object v1
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/PerfMeasurement;)Lo/PerfMeasurement;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 799
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lo/PerfMeasurement;

    move-result-object p2

    if-nez p2, :cond_0

    .line 800
    iget-object p1, p0, Lo/DngCreator;->c:Lo/PerfMeasurement;

    return-object p1

    .line 802
    :cond_0
    new-instance p2, Lo/ParameterUtils;

    new-array v0, v0, [Lo/PerfMeasurement;

    iget-object v3, p0, Lo/DngCreator;->c:Lo/PerfMeasurement;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lo/PerfMeasurement;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Lo/ParameterUtils;-><init>([Lo/PerfMeasurement;)V

    return-object p2

    .line 804
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lo/PerfMeasurement;

    move-result-object v3

    if-nez v3, :cond_2

    .line 805
    new-instance p1, Lo/ParameterUtils;

    new-array v0, v0, [Lo/PerfMeasurement;

    iget-object v3, p0, Lo/DngCreator;->c:Lo/PerfMeasurement;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lo/ParameterUtils;-><init>([Lo/PerfMeasurement;)V

    return-object p1

    .line 807
    :cond_2
    new-instance v3, Lo/ParameterUtils;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/PerfMeasurement;

    iget-object v5, p0, Lo/DngCreator;->c:Lo/PerfMeasurement;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    .line 808
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lo/PerfMeasurement;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Lo/ParameterUtils;-><init>([Lo/PerfMeasurement;)V

    return-object v3
.end method

.method public e()Lo/TriggerEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lo/DngCreator;->d:Lo/TriggerEventListener;

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 541
    :cond_0
    iget-object v0, p0, Lo/DngCreator;->g:Lo/SensorEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/SensorEventListener;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object p1

    .line 542
    iget-object v0, p0, Lo/DngCreator;->d:Lo/TriggerEventListener;

    invoke-interface {v0, p1}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object p1

    .line 544
    :try_start_0
    invoke-static {p1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v0
.end method
