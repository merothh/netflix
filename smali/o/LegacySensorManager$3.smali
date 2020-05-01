.class Lo/LegacySensorManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LegacySensorManager;->b(Lo/MacAuthenticatedInputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lo/MacAuthenticatedInputStream;

.field final synthetic d:Lo/LegacySensorManager;


# direct methods
.method constructor <init>(Lo/LegacySensorManager;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/MacAuthenticatedInputStream;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lo/LegacySensorManager$3;->d:Lo/LegacySensorManager;

    iput-object p2, p0, Lo/LegacySensorManager$3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lo/LegacySensorManager$3;->b:Lo/MacAuthenticatedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lo/LegacySensorManager$3;->d()Lo/LegacyFaceDetectMapper;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/LegacyFaceDetectMapper;
    .locals 4

    .line 179
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#getAsync"

    .line 180
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lo/LegacySensorManager$3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 185
    iget-object v0, p0, Lo/LegacySensorManager$3;->d:Lo/LegacySensorManager;

    invoke-static {v0}, Lo/LegacySensorManager;->c(Lo/LegacySensorManager;)Lo/BiometricPrompt;

    move-result-object v0

    iget-object v1, p0, Lo/LegacySensorManager$3;->b:Lo/MacAuthenticatedInputStream;

    invoke-virtual {v0, v1}, Lo/BiometricPrompt;->e(Lo/MacAuthenticatedInputStream;)Lo/LegacyFaceDetectMapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lo/LegacySensorManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Lo/LegacySensorManager$3;->b:Lo/MacAuthenticatedInputStream;

    invoke-interface {v3}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lo/LegacySensorManager$3;->d:Lo/LegacySensorManager;

    invoke-static {v1}, Lo/LegacySensorManager;->d(Lo/LegacySensorManager;)Lo/SerialPort;

    move-result-object v1

    iget-object v2, p0, Lo/LegacySensorManager$3;->b:Lo/MacAuthenticatedInputStream;

    invoke-interface {v1, v2}, Lo/SerialPort;->b(Lo/MacAuthenticatedInputStream;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lo/LegacySensorManager;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lo/LegacySensorManager$3;->b:Lo/MacAuthenticatedInputStream;

    invoke-interface {v2}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lo/LegacySensorManager$3;->d:Lo/LegacySensorManager;

    invoke-static {v0}, Lo/LegacySensorManager;->d(Lo/LegacySensorManager;)Lo/SerialPort;

    move-result-object v0

    invoke-interface {v0}, Lo/SerialPort;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 194
    :try_start_1
    iget-object v1, p0, Lo/LegacySensorManager$3;->d:Lo/LegacySensorManager;

    iget-object v2, p0, Lo/LegacySensorManager$3;->b:Lo/MacAuthenticatedInputStream;

    invoke-static {v1, v2}, Lo/LegacySensorManager;->a(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    .line 219
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object v0

    .line 198
    :cond_3
    :try_start_2
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    :try_start_3
    new-instance v2, Lo/LegacyFaceDetectMapper;

    invoke-direct {v2, v1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :try_start_4
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v2

    .line 209
    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    invoke-static {}, Lo/LegacySensorManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lo/LegacyFaceDetectMapper;->close()V

    .line 214
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    :cond_4
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v2

    .line 202
    :try_start_6
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    nop

    .line 219
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    return-object v0

    .line 183
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 219
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 220
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    throw v0
.end method
