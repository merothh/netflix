.class public Lo/CameraMetadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CaptureRequest;


# instance fields
.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/CameraCaptureSessionImpl;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "FrescoIoBoundExecutor"

    invoke-direct {v0, v1, v3, v2}, Lo/CameraCaptureSessionImpl;-><init>(ILjava/lang/String;Z)V

    const/4 v3, 0x2

    .line 32
    invoke-static {v3, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/CameraMetadata;->c:Ljava/util/concurrent/Executor;

    .line 36
    new-instance v0, Lo/CameraCaptureSessionImpl;

    const-string v3, "FrescoDecodeExecutor"

    invoke-direct {v0, v1, v3, v2}, Lo/CameraCaptureSessionImpl;-><init>(ILjava/lang/String;Z)V

    .line 37
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/CameraMetadata;->e:Ljava/util/concurrent/Executor;

    .line 41
    new-instance v0, Lo/CameraCaptureSessionImpl;

    const-string v3, "FrescoBackgroundExecutor"

    invoke-direct {v0, v1, v3, v2}, Lo/CameraCaptureSessionImpl;-><init>(ILjava/lang/String;Z)V

    .line 42
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/CameraMetadata;->b:Ljava/util/concurrent/Executor;

    .line 46
    new-instance p1, Lo/CameraCaptureSessionImpl;

    const-string v0, "FrescoLightWeightBackgroundExecutor"

    invoke-direct {p1, v1, v0, v2}, Lo/CameraCaptureSessionImpl;-><init>(ILjava/lang/String;Z)V

    .line 47
    invoke-static {v2, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/CameraMetadata;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/CameraMetadata;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/CameraMetadata;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/CameraMetadata;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/CameraMetadata;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/Executor;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/CameraMetadata;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method
