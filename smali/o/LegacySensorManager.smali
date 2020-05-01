.class public Lo/LegacySensorManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/PackageStats;

.field private final c:Lo/CompatResources;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lo/AssetFileDescriptor;

.field private final f:Lo/BiometricPrompt;

.field private final g:Lo/SerialPort;

.field private final i:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lo/LegacySensorManager;

    sput-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/PackageStats;Lo/AssetFileDescriptor;Lo/CompatResources;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/SerialPort;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/LegacySensorManager;->a:Lo/PackageStats;

    .line 55
    iput-object p2, p0, Lo/LegacySensorManager;->e:Lo/AssetFileDescriptor;

    .line 56
    iput-object p3, p0, Lo/LegacySensorManager;->c:Lo/CompatResources;

    .line 57
    iput-object p4, p0, Lo/LegacySensorManager;->d:Ljava/util/concurrent/Executor;

    .line 58
    iput-object p5, p0, Lo/LegacySensorManager;->i:Ljava/util/concurrent/Executor;

    .line 59
    iput-object p6, p0, Lo/LegacySensorManager;->g:Lo/SerialPort;

    .line 60
    invoke-static {}, Lo/BiometricPrompt;->a()Lo/BiometricPrompt;

    move-result-object p1

    iput-object p1, p0, Lo/LegacySensorManager;->f:Lo/BiometricPrompt;

    return-void
.end method

.method static synthetic a(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/LegacySensorManager;->b(Lo/MacAuthenticatedInputStream;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lo/LegacySensorManager;)Lo/CompatResources;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/LegacySensorManager;->c:Lo/CompatResources;

    return-object p0
.end method

.method private a(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 3

    .line 403
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "About to write to disk-cache for key %s"

    invoke-static {v0, v2, v1}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    :try_start_0
    iget-object v0, p0, Lo/LegacySensorManager;->a:Lo/PackageStats;

    new-instance v1, Lo/LegacySensorManager$2;

    invoke-direct {v1, p0, p2}, Lo/LegacySensorManager$2;-><init>(Lo/LegacySensorManager;Lo/LegacyFaceDetectMapper;)V

    invoke-interface {v0, p1, v1}, Lo/PackageStats;->e(Lo/MacAuthenticatedInputStream;Lo/PackageCleanItem;)Lo/InstantAppResolveInfo;

    .line 413
    sget-object p2, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const-string v0, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 417
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to write to disk-cache for key %s"

    invoke-static {v0, p2, p1, v1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private b(Lo/MacAuthenticatedInputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 5

    .line 364
    :try_start_0
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lo/LegacySensorManager;->a:Lo/PackageStats;

    invoke-interface {v0, p1}, Lo/PackageStats;->a(Lo/MacAuthenticatedInputStream;)Lo/InstantAppResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const-string v1, "Disk cache miss for %s"

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lo/LegacySensorManager;->g:Lo/SerialPort;

    invoke-interface {v0}, Lo/SerialPort;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 372
    :cond_0
    sget-object v1, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lo/LegacySensorManager;->g:Lo/SerialPort;

    invoke-interface {v1, p1}, Lo/SerialPort;->a(Lo/MacAuthenticatedInputStream;)V

    .line 377
    invoke-interface {v0}, Lo/InstantAppResolveInfo;->d()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :try_start_1
    iget-object v2, p0, Lo/LegacySensorManager;->e:Lo/AssetFileDescriptor;

    invoke-interface {v0}, Lo/InstantAppResolveInfo;->c()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v2, v1, v0}, Lo/AssetFileDescriptor;->d(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 384
    sget-object v1, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const-string v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 381
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 390
    sget-object v1, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Exception reading from cache for %s"

    invoke-static {v1, v0, p1, v2}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object p1, p0, Lo/LegacySensorManager;->g:Lo/SerialPort;

    invoke-interface {p1}, Lo/SerialPort;->f()V

    .line 392
    throw v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .line 36
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    return-object v0
.end method

.method private b(Lo/MacAuthenticatedInputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MacAuthenticatedInputStream;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lo/HashSet<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 174
    :try_start_0
    new-instance v0, Lo/LegacySensorManager$3;

    invoke-direct {v0, p0, p2, p1}, Lo/LegacySensorManager$3;-><init>(Lo/LegacySensorManager;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/MacAuthenticatedInputStream;)V

    iget-object p2, p0, Lo/LegacySensorManager;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, p2}, Lo/HashSet;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/HashSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 229
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 233
    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to schedule disk-cache read for %s"

    .line 229
    invoke-static {v0, p2, p1, v1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {p2}, Lo/HashSet;->d(Ljava/lang/Exception;)Lo/HashSet;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lo/LegacySensorManager;)Lo/BiometricPrompt;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/LegacySensorManager;->f:Lo/BiometricPrompt;

    return-object p0
.end method

.method private c(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)Lo/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyFaceDetectMapper;",
            ")",
            "Lo/HashSet<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 356
    sget-object v0, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    invoke-static {v0, v2, v1}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lo/LegacySensorManager;->g:Lo/SerialPort;

    invoke-interface {v0, p1}, Lo/SerialPort;->b(Lo/MacAuthenticatedInputStream;)V

    .line 358
    invoke-static {p2}, Lo/HashSet;->c(Ljava/lang/Object;)Lo/HashSet;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lo/LegacySensorManager;)Lo/SerialPort;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/LegacySensorManager;->g:Lo/SerialPort;

    return-object p0
.end method

.method static synthetic e(Lo/LegacySensorManager;)Lo/PackageStats;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/LegacySensorManager;->a:Lo/PackageStats;

    return-object p0
.end method

.method static synthetic e(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lo/LegacySensorManager;->a(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    return-void
.end method


# virtual methods
.method public a(Lo/MacAuthenticatedInputStream;)Lo/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MacAuthenticatedInputStream;",
            ")",
            "Lo/HashSet<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lo/LegacySensorManager;->f:Lo/BiometricPrompt;

    invoke-virtual {v0, p1}, Lo/BiometricPrompt;->c(Lo/MacAuthenticatedInputStream;)Z

    .line 300
    :try_start_0
    new-instance v0, Lo/LegacySensorManager$5;

    invoke-direct {v0, p0, p1}, Lo/LegacySensorManager$5;-><init>(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;)V

    iget-object v1, p0, Lo/LegacySensorManager;->i:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lo/HashSet;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/HashSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 322
    sget-object v1, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Failed to schedule disk-cache remove for %s"

    invoke-static {v1, v0, p1, v2}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    invoke-static {v0}, Lo/HashSet;->d(Ljava/lang/Exception;)Lo/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/MacAuthenticatedInputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MacAuthenticatedInputStream;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lo/HashSet<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#get"

    .line 134
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lo/LegacySensorManager;->f:Lo/BiometricPrompt;

    invoke-virtual {v0, p1}, Lo/BiometricPrompt;->e(Lo/MacAuthenticatedInputStream;)Lo/LegacyFaceDetectMapper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0, p1, v0}, Lo/LegacySensorManager;->c(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)Lo/HashSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object p1

    .line 140
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lo/LegacySensorManager;->b(Lo/MacAuthenticatedInputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/HashSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 143
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 142
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 143
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    throw p1
.end method

.method public d(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 7

    .line 246
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#put"

    .line 247
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 253
    iget-object v0, p0, Lo/LegacySensorManager;->f:Lo/BiometricPrompt;

    invoke-virtual {v0, p1, p2}, Lo/BiometricPrompt;->a(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    .line 258
    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    iget-object v1, p0, Lo/LegacySensorManager;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/LegacySensorManager$1;

    invoke-direct {v2, p0, p1, v0}, Lo/LegacySensorManager$1;-><init>(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 282
    :try_start_2
    sget-object v2, Lo/LegacySensorManager;->b:Ljava/lang/Class;

    const-string v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lo/LegacySensorManager;->f:Lo/BiometricPrompt;

    invoke-virtual {v1, p1, p2}, Lo/BiometricPrompt;->c(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)Z

    .line 284
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :goto_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 287
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 288
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw p1
.end method
