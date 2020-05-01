.class public Lo/TypeReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TypeReference$Activity;,
        Lo/TypeReference$Application;,
        Lo/TypeReference$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/CameraDeviceState;

.field private final c:Lo/RuntimePermissionPresentationInfo;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lo/SyntheticKey;

.field private final f:I

.field private final g:Lo/CameraManager;

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresentationInfo;Ljava/util/concurrent/Executor;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/InputDeviceIdentifier;ILo/CameraManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RuntimePermissionPresentationInfo;",
            "Ljava/util/concurrent/Executor;",
            "Lo/SyntheticKey;",
            "Lo/CameraDeviceState;",
            "ZZZ",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;I",
            "Lo/CameraManager;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RuntimePermissionPresentationInfo;

    iput-object p1, p0, Lo/TypeReference;->c:Lo/RuntimePermissionPresentationInfo;

    .line 84
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/TypeReference;->d:Ljava/util/concurrent/Executor;

    .line 85
    invoke-static {p3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SyntheticKey;

    iput-object p1, p0, Lo/TypeReference;->e:Lo/SyntheticKey;

    .line 86
    invoke-static {p4}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CameraDeviceState;

    iput-object p1, p0, Lo/TypeReference;->b:Lo/CameraDeviceState;

    .line 87
    iput-boolean p5, p0, Lo/TypeReference;->j:Z

    .line 88
    iput-boolean p6, p0, Lo/TypeReference;->h:Z

    .line 89
    invoke-static {p8}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/TypeReference;->a:Lo/InputDeviceIdentifier;

    .line 90
    iput-boolean p7, p0, Lo/TypeReference;->i:Z

    .line 91
    iput p9, p0, Lo/TypeReference;->f:I

    .line 92
    iput-object p10, p0, Lo/TypeReference;->g:Lo/CameraManager;

    return-void
.end method

.method static synthetic a(Lo/TypeReference;)Lo/CameraManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/TypeReference;->g:Lo/CameraManager;

    return-object p0
.end method

.method static synthetic b(Lo/TypeReference;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lo/TypeReference;->h:Z

    return p0
.end method

.method static synthetic c(Lo/TypeReference;)Lo/SyntheticKey;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/TypeReference;->e:Lo/SyntheticKey;

    return-object p0
.end method

.method static synthetic d(Lo/TypeReference;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/TypeReference;->d:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic e(Lo/TypeReference;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lo/TypeReference;->j:Z

    return p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecodeProducer#produceResults"

    .line 101
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lo/ResourcesKey;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lo/TypeReference$Application;

    iget-boolean v5, p0, Lo/TypeReference;->i:Z

    iget v6, p0, Lo/TypeReference;->f:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lo/TypeReference$Application;-><init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V

    goto :goto_0

    .line 110
    :cond_1
    new-instance v4, Lo/CaptureCollector;

    iget-object v0, p0, Lo/TypeReference;->c:Lo/RuntimePermissionPresentationInfo;

    invoke-direct {v4, v0}, Lo/CaptureCollector;-><init>(Lo/RuntimePermissionPresentationInfo;)V

    .line 111
    new-instance v8, Lo/TypeReference$Activity;

    iget-object v5, p0, Lo/TypeReference;->b:Lo/CameraDeviceState;

    iget-boolean v6, p0, Lo/TypeReference;->i:Z

    iget v7, p0, Lo/TypeReference;->f:I

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lo/TypeReference$Activity;-><init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/CaptureCollector;Lo/CameraDeviceState;ZI)V

    move-object v0, v8

    .line 120
    :goto_0
    iget-object p1, p0, Lo/TypeReference;->a:Lo/InputDeviceIdentifier;

    invoke-interface {p1, v0, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 122
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 123
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    throw p1
.end method
