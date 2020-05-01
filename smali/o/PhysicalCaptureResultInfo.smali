.class public Lo/PhysicalCaptureResultInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private D:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field a:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field b:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field d:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field e:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field f:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field g:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field h:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field j:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field l:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;>;"
        }
    .end annotation
.end field

.field n:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final p:Lo/HdmiRecordListener;

.field private final q:Z

.field private final r:Lo/CameraCaptureSessionCore;

.field private final s:Landroid/content/ContentResolver;

.field private final t:Z

.field private final u:Lo/ContextHubClient;

.field private final v:Z

.field private final w:Z

.field private final x:Z

.field private final y:Z

.field private final z:Lo/NanoAppInstanceInfo;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lo/CameraCaptureSessionCore;Lo/HdmiRecordListener;ZZLo/ContextHubClient;ZZZZLo/NanoAppInstanceInfo;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lo/PhysicalCaptureResultInfo;->s:Landroid/content/ContentResolver;

    .line 118
    iput-object p2, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 119
    iput-object p3, p0, Lo/PhysicalCaptureResultInfo;->p:Lo/HdmiRecordListener;

    .line 120
    iput-boolean p4, p0, Lo/PhysicalCaptureResultInfo;->t:Z

    .line 121
    iput-boolean p5, p0, Lo/PhysicalCaptureResultInfo;->q:Z

    .line 122
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/PhysicalCaptureResultInfo;->o:Ljava/util/Map;

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/PhysicalCaptureResultInfo;->k:Ljava/util/Map;

    .line 124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/PhysicalCaptureResultInfo;->m:Ljava/util/Map;

    .line 125
    iput-object p6, p0, Lo/PhysicalCaptureResultInfo;->u:Lo/ContextHubClient;

    .line 126
    iput-boolean p7, p0, Lo/PhysicalCaptureResultInfo;->v:Z

    .line 127
    iput-boolean p8, p0, Lo/PhysicalCaptureResultInfo;->x:Z

    .line 128
    iput-boolean p9, p0, Lo/PhysicalCaptureResultInfo;->y:Z

    .line 129
    iput-boolean p10, p0, Lo/PhysicalCaptureResultInfo;->w:Z

    .line 130
    iput-object p11, p0, Lo/PhysicalCaptureResultInfo;->z:Lo/NanoAppInstanceInfo;

    return-void
.end method

.method private declared-synchronized a()Lo/InputDeviceIdentifier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 459
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence"

    .line 460
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->D:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_3

    .line 464
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence:init"

    .line 465
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 468
    :cond_1
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->p:Lo/HdmiRecordListener;

    .line 470
    invoke-virtual {v0, v1}, Lo/CameraCaptureSessionCore;->d(Lo/HdmiRecordListener;)Lo/HdmiHotplugEvent;

    move-result-object v0

    .line 469
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->a(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 472
    invoke-static {v0}, Lo/CameraCaptureSessionCore;->b(Lo/InputDeviceIdentifier;)Lo/ListUtils;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->D:Lo/InputDeviceIdentifier;

    .line 474
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->D:Lo/InputDeviceIdentifier;

    iget-boolean v2, p0, Lo/PhysicalCaptureResultInfo;->t:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lo/PhysicalCaptureResultInfo;->v:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lo/PhysicalCaptureResultInfo;->z:Lo/NanoAppInstanceInfo;

    .line 475
    invoke-virtual {v0, v1, v2, v3}, Lo/CameraCaptureSessionCore;->a(Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)Lo/TouchCalibration;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->D:Lo/InputDeviceIdentifier;

    .line 479
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 483
    :cond_3
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 486
    :cond_4
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->D:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 775
    sget-boolean v0, Lo/ThemedResourceCache;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/PhysicalCaptureResultInfo;->q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/ThemedResourceCache;->a:Lo/ResourcesImpl;

    if-nez v0, :cond_1

    .line 777
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->n(Lo/InputDeviceIdentifier;)Lo/GeofenceHardwareImpl;

    move-result-object p1

    .line 779
    :cond_1
    iget-boolean v0, p0, Lo/PhysicalCaptureResultInfo;->w:Z

    if-eqz v0, :cond_2

    .line 780
    invoke-direct {p0, p1}, Lo/PhysicalCaptureResultInfo;->c(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object p1

    .line 782
    :cond_2
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 783
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->h(Lo/InputDeviceIdentifier;)Lo/DisplayManagerInternal;

    move-result-object p1

    .line 784
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->j(Lo/InputDeviceIdentifier;)Lo/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private a([Lo/ContextHubManager;)Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/ContextHubManager<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 852
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->c([Lo/ContextHubManager;)Lo/ContextHubMessage;

    move-result-object p1

    .line 853
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->z:Lo/NanoAppInstanceInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lo/CameraCaptureSessionCore;->a(Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)Lo/TouchCalibration;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 1

    .line 284
    invoke-static {p0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result p0

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 287
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 285
    :goto_0
    invoke-static {p0}, Lo/StringParceledListSlice;->a(Z)V

    return-void
.end method

.method private static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 902
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private declared-synchronized b()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 435
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence"

    .line 436
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->a:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_2

    .line 440
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence:init"

    .line 441
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 446
    :cond_1
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->c()Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lo/CameraCaptureSessionCore;->k(Lo/InputDeviceIdentifier;)Lo/ActivityRecognitionHardware;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->a:Lo/InputDeviceIdentifier;

    .line 447
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 451
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 454
    :cond_3
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->a:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 338
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getBasicDecodedImageSequence"

    .line 339
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri is null."

    .line 344
    invoke-static {v0, v1}, Lo/StringParceledListSlice;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->d()I

    move-result p1

    if-eqz p1, :cond_a

    packed-switch p1, :pswitch_data_0

    .line 367
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported uri scheme! Uri is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v0}, Lo/PhysicalCaptureResultInfo;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :pswitch_0
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->g()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object p1

    .line 365
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->n()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object p1

    .line 361
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->m()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object p1

    .line 359
    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->l()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-object p1

    .line 354
    :pswitch_4
    :try_start_4
    iget-object p1, p0, Lo/PhysicalCaptureResultInfo;->s:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ArtManagerInternal;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 355
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->i()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-object p1

    .line 357
    :cond_6
    :try_start_5
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->h()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-object p1

    .line 352
    :pswitch_5
    :try_start_6
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->j()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    return-object p1

    .line 350
    :pswitch_6
    :try_start_7
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->i()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_9
    return-object p1

    .line 348
    :cond_a
    :try_start_8
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->e()Lo/InputDeviceIdentifier;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_b
    return-object p1

    :catchall_0
    move-exception p1

    .line 371
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 372
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_c
    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 814
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->a(Lo/InputDeviceIdentifier;)Lo/LongParcelable;

    move-result-object p1

    .line 815
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 816
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->e(Lo/InputDeviceIdentifier;)Lo/TaskDrainer;

    move-result-object p1

    .line 817
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->u:Lo/ContextHubClient;

    .line 818
    invoke-virtual {v0, p1, v1}, Lo/CameraCaptureSessionCore;->d(Lo/InputDeviceIdentifier;Lo/ContextHubClient;)Lo/KeyboardLayout;

    move-result-object p1

    .line 821
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->d(Lo/InputDeviceIdentifier;)Lo/SurfaceUtils;

    move-result-object p1

    return-object p1
.end method

.method private b(Lo/InputDeviceIdentifier;[Lo/ContextHubManager;)Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;[",
            "Lo/ContextHubManager<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 837
    invoke-static {p1}, Lo/CameraCaptureSessionCore;->b(Lo/InputDeviceIdentifier;)Lo/ListUtils;

    move-result-object p1

    .line 838
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->z:Lo/NanoAppInstanceInfo;

    const/4 v2, 0x1

    .line 839
    invoke-virtual {v0, p1, v2, v1}, Lo/CameraCaptureSessionCore;->a(Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)Lo/TouchCalibration;

    move-result-object p1

    .line 842
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 843
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->m(Lo/InputDeviceIdentifier;)Lo/ContextHubInfo;

    move-result-object p1

    .line 844
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 845
    invoke-direct {p0, p2}, Lo/PhysicalCaptureResultInfo;->a([Lo/ContextHubManager;)Lo/InputDeviceIdentifier;

    move-result-object p2

    .line 844
    invoke-static {p2, p1}, Lo/CameraCaptureSessionCore;->c(Lo/InputDeviceIdentifier;Lo/InputDeviceIdentifier;)Lo/AmbientBrightnessDayStats;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized c()Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence"

    .line 408
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->d:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_2

    .line 412
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence:init"

    .line 413
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 417
    :cond_1
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 419
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->a()Lo/InputDeviceIdentifier;

    move-result-object v1

    iget-object v2, p0, Lo/PhysicalCaptureResultInfo;->u:Lo/ContextHubClient;

    .line 418
    invoke-virtual {v0, v1, v2}, Lo/CameraCaptureSessionCore;->d(Lo/InputDeviceIdentifier;Lo/ContextHubClient;)Lo/KeyboardLayout;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->d:Lo/InputDeviceIdentifier;

    .line 420
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 424
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 427
    :cond_3
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->d:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    .line 789
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#newDiskCacheSequence"

    .line 790
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 792
    :cond_0
    iget-boolean v0, p0, Lo/PhysicalCaptureResultInfo;->y:Z

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 794
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->f(Lo/InputDeviceIdentifier;)Lo/HdmiPlaybackClient;

    move-result-object p1

    .line 795
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->i(Lo/InputDeviceIdentifier;)Lo/Curve;

    move-result-object p1

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->i(Lo/InputDeviceIdentifier;)Lo/Curve;

    move-result-object p1

    .line 799
    :goto_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->g(Lo/InputDeviceIdentifier;)Lo/DisplayManager;

    move-result-object p1

    .line 800
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object p1
.end method

.method private declared-synchronized d()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 494
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence"

    .line 495
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->e:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_2

    .line 499
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence:init"

    .line 500
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 505
    :cond_1
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->f()Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 504
    invoke-static {v0}, Lo/CameraCaptureSessionCore;->k(Lo/InputDeviceIdentifier;)Lo/ActivityRecognitionHardware;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->e:Lo/InputDeviceIdentifier;

    .line 506
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 510
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 513
    :cond_3
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->e:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 756
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence"

    .line 757
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 759
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->c(Lo/InputDeviceIdentifier;)Lo/TypeReference;

    move-result-object p1

    .line 761
    invoke-direct {p0, p1}, Lo/PhysicalCaptureResultInfo;->b(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object p1

    .line 762
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object p1
.end method

.method private d(Lo/InputDeviceIdentifier;[Lo/ContextHubManager;)Lo/InputDeviceIdentifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;[",
            "Lo/ContextHubManager<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 742
    invoke-direct {p0, p1}, Lo/PhysicalCaptureResultInfo;->a(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object p1

    .line 744
    invoke-direct {p0, p1, p2}, Lo/PhysicalCaptureResultInfo;->b(Lo/InputDeviceIdentifier;[Lo/ContextHubManager;)Lo/InputDeviceIdentifier;

    move-result-object p1

    .line 745
    invoke-direct {p0, p1}, Lo/PhysicalCaptureResultInfo;->d(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized e()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getNetworkFetchSequence"

    .line 384
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->b:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_2

    .line 387
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProducerSequenceFactory#getNetworkFetchSequence:init"

    .line 388
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 391
    :cond_1
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->a()Lo/InputDeviceIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->d(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->b:Lo/InputDeviceIdentifier;

    .line 392
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 396
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 399
    :cond_3
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->b:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lo/ContextHubManager;

    .line 728
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v1}, Lo/CameraCaptureSessionCore;->d()Lo/WifiDisplay;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 729
    invoke-direct {p0, p1, v0}, Lo/PhysicalCaptureResultInfo;->d(Lo/InputDeviceIdentifier;[Lo/ContextHubManager;)Lo/InputDeviceIdentifier;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized f()Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 521
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence"

    .line 522
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->c:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_2

    .line 526
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence:init"

    .line 527
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 530
    :cond_1
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 531
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->i()Lo/FingerprintManager;

    move-result-object v0

    .line 534
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->a(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    iget-object v2, p0, Lo/PhysicalCaptureResultInfo;->u:Lo/ContextHubClient;

    .line 537
    invoke-virtual {v1, v0, v2}, Lo/CameraCaptureSessionCore;->d(Lo/InputDeviceIdentifier;Lo/ContextHubClient;)Lo/KeyboardLayout;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->c:Lo/InputDeviceIdentifier;

    .line 539
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 543
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 546
    :cond_3
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->c:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->l:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 656
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->f()Lo/HdmiTvClient;

    move-result-object v0

    .line 658
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->e(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->l:Lo/InputDeviceIdentifier;

    .line 660
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->l:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 862
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 864
    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->o(Lo/InputDeviceIdentifier;)Lo/HdmiPortInfo;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 866
    invoke-virtual {v1, v0}, Lo/CameraCaptureSessionCore;->l(Lo/InputDeviceIdentifier;)Lo/HdmiRecordSources;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->o:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h()Lo/InputDeviceIdentifier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->j:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 631
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->b()Lo/DisplayViewport;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lo/ContextHubManager;

    const/4 v2, 0x0

    .line 634
    iget-object v3, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v3}, Lo/CameraCaptureSessionCore;->c()Lo/VirtualDisplay;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 635
    iget-object v3, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v3}, Lo/CameraCaptureSessionCore;->d()Lo/WifiDisplay;

    move-result-object v3

    aput-object v3, v1, v2

    .line 637
    invoke-direct {p0, v0, v1}, Lo/PhysicalCaptureResultInfo;->d(Lo/InputDeviceIdentifier;[Lo/ContextHubManager;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->j:Lo/InputDeviceIdentifier;

    .line 641
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->j:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->f:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 610
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->h()Lo/HdmiControlManager;

    move-result-object v0

    .line 612
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->b(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->f:Lo/InputDeviceIdentifier;

    .line 614
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->f:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 593
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->h:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 595
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->i()Lo/FingerprintManager;

    move-result-object v0

    .line 597
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->e(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->h:Lo/InputDeviceIdentifier;

    .line 599
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->h:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 890
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->m:Ljava/util/Map;

    .line 891
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 894
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0, p1}, Lo/CameraCaptureSessionCore;->r(Lo/InputDeviceIdentifier;)Lo/SubmitInfo;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 691
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->g:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 693
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->a()Lo/WifiDisplaySessionInfo;

    move-result-object v0

    .line 695
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->e(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->g:Lo/InputDeviceIdentifier;

    .line 697
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->g:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->i:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    .line 675
    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->g()Lo/HdmiDeviceInfo;

    move-result-object v0

    .line 677
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->e(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->i:Lo/InputDeviceIdentifier;

    .line 679
    :cond_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->i:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()Lo/InputDeviceIdentifier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 706
    :try_start_0
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->n:Lo/InputDeviceIdentifier;

    if-nez v0, :cond_2

    .line 707
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v0}, Lo/CameraCaptureSessionCore;->e()Lo/UncheckedThrow;

    move-result-object v0

    .line 708
    sget-boolean v1, Lo/ThemedResourceCache;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/PhysicalCaptureResultInfo;->q:Z

    if-eqz v1, :cond_0

    sget-object v1, Lo/ThemedResourceCache;->a:Lo/ResourcesImpl;

    if-nez v1, :cond_1

    .line 710
    :cond_0
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-virtual {v1, v0}, Lo/CameraCaptureSessionCore;->n(Lo/InputDeviceIdentifier;)Lo/GeofenceHardwareImpl;

    move-result-object v0

    .line 712
    :cond_1
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    invoke-static {v0}, Lo/CameraCaptureSessionCore;->b(Lo/InputDeviceIdentifier;)Lo/ListUtils;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lo/PhysicalCaptureResultInfo;->r:Lo/CameraCaptureSessionCore;

    const/4 v2, 0x1

    iget-object v3, p0, Lo/PhysicalCaptureResultInfo;->z:Lo/NanoAppInstanceInfo;

    .line 714
    invoke-virtual {v1, v0, v2, v3}, Lo/CameraCaptureSessionCore;->a(Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)Lo/TouchCalibration;

    move-result-object v0

    .line 715
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->d(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lo/PhysicalCaptureResultInfo;->n:Lo/InputDeviceIdentifier;

    .line 717
    :cond_2
    iget-object v0, p0, Lo/PhysicalCaptureResultInfo;->n:Lo/InputDeviceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/InputDeviceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 298
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProducerSequenceFactory#getDecodedImageProducerSequence"

    .line 299
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lo/PhysicalCaptureResultInfo;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lo/GeofenceHardwareCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->g(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 308
    :cond_1
    iget-boolean p1, p0, Lo/PhysicalCaptureResultInfo;->x:Z

    if-eqz p1, :cond_2

    .line 309
    invoke-direct {p0, v0}, Lo/PhysicalCaptureResultInfo;->j(Lo/InputDeviceIdentifier;)Lo/InputDeviceIdentifier;

    move-result-object v0

    .line 311
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 312
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/InputDeviceIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lo/InputDeviceIdentifier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 267
    invoke-static {p1}, Lo/PhysicalCaptureResultInfo;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 269
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->d()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object p1

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported uri scheme for encoded image fetch! Uri is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {p1}, Lo/PhysicalCaptureResultInfo;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->d()Lo/InputDeviceIdentifier;

    move-result-object p1

    return-object p1

    .line 271
    :cond_2
    invoke-direct {p0}, Lo/PhysicalCaptureResultInfo;->b()Lo/InputDeviceIdentifier;

    move-result-object p1

    return-object p1
.end method
