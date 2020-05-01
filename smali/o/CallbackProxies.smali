.class public Lo/CallbackProxies;
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

.field private static e:Lo/CallbackProxies;


# instance fields
.field private final a:Lo/CameraDeviceImpl;

.field private final c:Lo/CameraManager;

.field private final d:Lo/ContextHubClient;

.field private f:Lo/SensorEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/SensorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorManager<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/SensorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorManager<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/SensorEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/LegacySensorManager;

.field private k:Lo/PackageStats;

.field private l:Lo/SyntheticKey;

.field private m:Lo/NanoAppInstanceInfo;

.field private n:Lo/CameraCaptureSessionCore;

.field private o:Lo/DngCreator;

.field private p:Lo/LegacySensorManager;

.field private q:Lo/Camera;

.field private r:Lo/PhysicalCaptureResultInfo;

.field private s:Lo/TonemapCurve;

.field private t:Lo/PackageStats;

.field private v:Lo/Learner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lo/CallbackProxies;

    sput-object v0, Lo/CallbackProxies;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/CameraDeviceImpl;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 141
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CameraDeviceImpl;

    iput-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 144
    new-instance v0, Lo/ContextHubClient;

    .line 146
    invoke-virtual {p1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v1

    invoke-interface {v1}, Lo/CaptureRequest;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ContextHubClient;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lo/CallbackProxies;->d:Lo/ContextHubClient;

    .line 147
    new-instance v0, Lo/CameraManager;

    .line 148
    invoke-virtual {p1}, Lo/CameraDeviceImpl;->D()Lo/GetCommand;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/CameraManager;-><init>(Lo/GetCommand;)V

    iput-object v0, p0, Lo/CallbackProxies;->c:Lo/CameraManager;

    .line 149
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Lo/CameraDeviceImpl;)V
    .locals 3

    const-class v0, Lo/CallbackProxies;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lo/CallbackProxies;->e:Lo/CallbackProxies;

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lo/CallbackProxies;->b:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance v1, Lo/CallbackProxies;

    invoke-direct {v1, p0}, Lo/CallbackProxies;-><init>(Lo/CameraDeviceImpl;)V

    sput-object v1, Lo/CallbackProxies;->e:Lo/CallbackProxies;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Lo/CallbackProxies;
    .locals 2

    .line 68
    sget-object v0, Lo/CallbackProxies;->e:Lo/CallbackProxies;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lo/StringParceledListSlice;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CallbackProxies;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lo/CallbackProxies;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImagePipelineFactory#initialize"

    .line 84
    invoke-static {v1}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lo/CameraDeviceImpl;->b(Landroid/content/Context;)Lo/CameraDeviceImpl$ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Lo/CameraDeviceImpl$ActionBar;->c()Lo/CameraDeviceImpl;

    move-result-object p0

    invoke-static {p0}, Lo/CallbackProxies;->a(Lo/CameraDeviceImpl;)V

    .line 87
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 88
    invoke-static {}, Lo/GeofenceHardwareService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private m()Lo/Learner;
    .locals 4

    .line 156
    iget-object v0, p0, Lo/CallbackProxies;->v:Lo/Learner;

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lo/CallbackProxies;->g()Lo/Camera;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 160
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lo/CallbackProxies;->e()Lo/SensorEventCallback;

    move-result-object v2

    iget-object v3, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 162
    invoke-virtual {v3}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->p()Z

    move-result v3

    .line 158
    invoke-static {v0, v1, v2, v3}, Lo/Instance;->d(Lo/Camera;Lo/CaptureRequest;Lo/SensorEventCallback;Z)Lo/Learner;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->v:Lo/Learner;

    .line 164
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->v:Lo/Learner;

    return-object v0
.end method

.method private n()Lo/CameraCaptureSessionCore;
    .locals 23

    move-object/from16 v0, p0

    .line 311
    iget-object v1, v0, Lo/CallbackProxies;->n:Lo/CameraCaptureSessionCore;

    if-nez v1, :cond_0

    .line 312
    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 314
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->m()Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    move-result-object v2

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 317
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->e()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 318
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lo/MarshalQueryableStreamConfiguration;->h()Lo/RuntimePermissionPresentationInfo;

    move-result-object v4

    .line 319
    invoke-direct/range {p0 .. p0}, Lo/CallbackProxies;->o()Lo/SyntheticKey;

    move-result-object v5

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 320
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->v()Lo/CameraDeviceState;

    move-result-object v6

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 321
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->h()Z

    move-result v7

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 322
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->w()Z

    move-result v8

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 323
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->a()Z

    move-result v9

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 324
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v10

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 325
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    iget-object v11, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v11}, Lo/CameraDeviceImpl;->t()I

    move-result v11

    invoke-virtual {v1, v11}, Lo/MarshalQueryableStreamConfiguration;->c(I)Lo/AssetFileDescriptor;

    move-result-object v11

    .line 326
    invoke-virtual/range {p0 .. p0}, Lo/CallbackProxies;->a()Lo/SensorManager;

    move-result-object v12

    .line 327
    invoke-virtual/range {p0 .. p0}, Lo/CallbackProxies;->c()Lo/SensorManager;

    move-result-object v13

    .line 328
    invoke-virtual/range {p0 .. p0}, Lo/CallbackProxies;->i()Lo/LegacySensorManager;

    move-result-object v14

    .line 329
    invoke-direct/range {p0 .. p0}, Lo/CallbackProxies;->s()Lo/LegacySensorManager;

    move-result-object v15

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 330
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->c()Lo/SensorEventListener;

    move-result-object v16

    .line 331
    invoke-virtual/range {p0 .. p0}, Lo/CallbackProxies;->g()Lo/Camera;

    move-result-object v17

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 332
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->f()I

    move-result v18

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 333
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->g()I

    move-result v19

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 334
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->o()Z

    move-result v20

    iget-object v1, v0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 335
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->k()I

    move-result v21

    .line 336
    invoke-virtual/range {p0 .. p0}, Lo/CallbackProxies;->k()Lo/CameraManager;

    move-result-object v22

    .line 316
    invoke-interface/range {v2 .. v22}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;->a(Landroid/content/Context;Lo/RuntimePermissionPresentationInfo;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/CaptureRequest;Lo/AssetFileDescriptor;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Camera;IIZILo/CameraManager;)Lo/CameraCaptureSessionCore;

    move-result-object v1

    iput-object v1, v0, Lo/CallbackProxies;->n:Lo/CameraCaptureSessionCore;

    .line 338
    :cond_0
    iget-object v1, v0, Lo/CallbackProxies;->n:Lo/CameraCaptureSessionCore;

    return-object v1
.end method

.method private o()Lo/SyntheticKey;
    .locals 5

    .line 215
    iget-object v0, p0, Lo/CallbackProxies;->l:Lo/SyntheticKey;

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v0}, Lo/CameraDeviceImpl;->l()Lo/SyntheticKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v0}, Lo/CameraDeviceImpl;->l()Lo/SyntheticKey;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->l:Lo/SyntheticKey;

    goto :goto_1

    .line 219
    :cond_0
    invoke-direct {p0}, Lo/CallbackProxies;->m()Lo/Learner;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v1}, Lo/CameraDeviceImpl;->d()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Learner;->c(Landroid/graphics/Bitmap$Config;)Lo/SyntheticKey;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v2}, Lo/CameraDeviceImpl;->d()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/Learner;->a(Landroid/graphics/Bitmap$Config;)Lo/SyntheticKey;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 229
    :goto_0
    iget-object v2, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v2}, Lo/CameraDeviceImpl;->B()Lo/PublicKey;

    move-result-object v2

    if-nez v2, :cond_2

    .line 230
    new-instance v2, Lo/SetCommand;

    .line 233
    invoke-virtual {p0}, Lo/CallbackProxies;->h()Lo/TonemapCurve;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lo/SetCommand;-><init>(Lo/SyntheticKey;Lo/SyntheticKey;Lo/TonemapCurve;)V

    iput-object v2, p0, Lo/CallbackProxies;->l:Lo/SyntheticKey;

    goto :goto_1

    .line 235
    :cond_2
    new-instance v2, Lo/SetCommand;

    .line 238
    invoke-virtual {p0}, Lo/CallbackProxies;->h()Lo/TonemapCurve;

    move-result-object v3

    iget-object v4, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 239
    invoke-virtual {v4}, Lo/CameraDeviceImpl;->B()Lo/PublicKey;

    move-result-object v4

    invoke-virtual {v4}, Lo/PublicKey;->d()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lo/SetCommand;-><init>(Lo/SyntheticKey;Lo/SyntheticKey;Lo/TonemapCurve;Ljava/util/Map;)V

    iput-object v2, p0, Lo/CallbackProxies;->l:Lo/SyntheticKey;

    .line 241
    invoke-static {}, Lo/GestureOverlayView;->d()Lo/GestureOverlayView;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 243
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->B()Lo/PublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lo/PublicKey;->b()Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lo/GestureOverlayView;->c(Ljava/util/List;)V

    .line 247
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/CallbackProxies;->l:Lo/SyntheticKey;

    return-object v0
.end method

.method private p()Lo/NanoAppInstanceInfo;
    .locals 5

    .line 399
    iget-object v0, p0, Lo/CallbackProxies;->m:Lo/NanoAppInstanceInfo;

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v0}, Lo/CameraDeviceImpl;->o()Lo/NanoAppInstanceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 401
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->k()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 402
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Lo/NanoAppMessage;

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 404
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->k()I

    move-result v1

    invoke-direct {v0, v1}, Lo/NanoAppMessage;-><init>(I)V

    iput-object v0, p0, Lo/CallbackProxies;->m:Lo/NanoAppInstanceInfo;

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Lo/NanoApp;

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 408
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->k()I

    move-result v1

    iget-object v2, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 409
    invoke-virtual {v2}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->b()Z

    move-result v2

    iget-object v3, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 410
    invoke-virtual {v3}, Lo/CameraDeviceImpl;->o()Lo/NanoAppInstanceInfo;

    move-result-object v3

    iget-object v4, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 411
    invoke-virtual {v4}, Lo/CameraDeviceImpl;->k()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/NanoApp;-><init>(IZLo/NanoAppInstanceInfo;Ljava/lang/Integer;)V

    iput-object v0, p0, Lo/CallbackProxies;->m:Lo/NanoAppInstanceInfo;

    .line 414
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/CallbackProxies;->m:Lo/NanoAppInstanceInfo;

    return-object v0
.end method

.method private r()Lo/PhysicalCaptureResultInfo;
    .locals 13

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 344
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 346
    :goto_0
    iget-object v0, p0, Lo/CallbackProxies;->r:Lo/PhysicalCaptureResultInfo;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lo/PhysicalCaptureResultInfo;

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 349
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 350
    invoke-direct {p0}, Lo/CallbackProxies;->n()Lo/CameraCaptureSessionCore;

    move-result-object v3

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 351
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->p()Lo/HdmiRecordListener;

    move-result-object v4

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 352
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->w()Z

    move-result v5

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 353
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->c()Z

    move-result v6

    iget-object v7, p0, Lo/CallbackProxies;->d:Lo/ContextHubClient;

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 355
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->h()Z

    move-result v8

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 357
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->i()Z

    move-result v10

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 358
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->j()Z

    move-result v11

    .line 359
    invoke-direct {p0}, Lo/CallbackProxies;->p()Lo/NanoAppInstanceInfo;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lo/PhysicalCaptureResultInfo;-><init>(Landroid/content/ContentResolver;Lo/CameraCaptureSessionCore;Lo/HdmiRecordListener;ZZLo/ContextHubClient;ZZZZLo/NanoAppInstanceInfo;)V

    iput-object v0, p0, Lo/CallbackProxies;->r:Lo/PhysicalCaptureResultInfo;

    .line 361
    :cond_1
    iget-object v0, p0, Lo/CallbackProxies;->r:Lo/PhysicalCaptureResultInfo;

    return-object v0
.end method

.method private s()Lo/LegacySensorManager;
    .locals 8

    .line 377
    iget-object v0, p0, Lo/CallbackProxies;->p:Lo/LegacySensorManager;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lo/LegacySensorManager;

    .line 380
    invoke-virtual {p0}, Lo/CallbackProxies;->l()Lo/PackageStats;

    move-result-object v2

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 381
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    iget-object v3, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v3}, Lo/CameraDeviceImpl;->t()I

    move-result v3

    invoke-virtual {v1, v3}, Lo/MarshalQueryableStreamConfiguration;->c(I)Lo/AssetFileDescriptor;

    move-result-object v3

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 382
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lo/MarshalQueryableStreamConfiguration;->f()Lo/CompatResources;

    move-result-object v4

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 383
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v1

    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 384
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v1

    invoke-interface {v1}, Lo/CaptureRequest;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 385
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->n()Lo/SerialPort;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/LegacySensorManager;-><init>(Lo/PackageStats;Lo/AssetFileDescriptor;Lo/CompatResources;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/SerialPort;)V

    iput-object v0, p0, Lo/CallbackProxies;->p:Lo/LegacySensorManager;

    .line 387
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->p:Lo/LegacySensorManager;

    return-object v0
.end method


# virtual methods
.method public a()Lo/SensorManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SensorManager<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lo/CallbackProxies;->h:Lo/SensorManager;

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lo/CallbackProxies;->e()Lo/SensorEventCallback;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 190
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->n()Lo/SerialPort;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lo/Sensor;->c(Lo/SensorEventCallback;Lo/SerialPort;)Lo/SensorManager;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->h:Lo/SensorManager;

    .line 192
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->h:Lo/SensorManager;

    return-object v0
.end method

.method public c()Lo/SensorManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SensorManager<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lo/CallbackProxies;->g:Lo/SensorManager;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lo/CallbackProxies;->d()Lo/SensorEventCallback;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 209
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->n()Lo/SerialPort;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lo/SensorListener;->d(Lo/SensorEventCallback;Lo/SerialPort;)Lo/SensorManager;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->g:Lo/SensorManager;

    .line 211
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->g:Lo/SensorManager;

    return-object v0
.end method

.method public d()Lo/SensorEventCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lo/CallbackProxies;->f:Lo/SensorEventCallback;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 199
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->i()Lo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v1}, Lo/CameraDeviceImpl;->r()Lo/RuntimePermissionPresenter;

    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Lo/SensorEventListener2;->e(Lo/UserInfo;Lo/RuntimePermissionPresenter;)Lo/SensorEventCallback;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->f:Lo/SensorEventCallback;

    .line 201
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->f:Lo/SensorEventCallback;

    return-object v0
.end method

.method public e(Landroid/content/Context;)Lo/LegacyCameraDevice;
    .locals 1

    .line 169
    invoke-direct {p0}, Lo/CallbackProxies;->m()Lo/Learner;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v0, p1}, Lo/Learner;->c(Landroid/content/Context;)Lo/LegacyCameraDevice;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e()Lo/SensorEventCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lo/CallbackProxies;->i:Lo/SensorEventCallback;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 178
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->a()Lo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 179
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->r()Lo/RuntimePermissionPresenter;

    move-result-object v1

    iget-object v2, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 180
    invoke-virtual {v2}, Lo/CameraDeviceImpl;->b()Lo/SensorEventCallback$Application;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lo/GeomagneticField;->b(Lo/UserInfo;Lo/RuntimePermissionPresenter;Lo/SensorEventCallback$Application;)Lo/SensorEventCallback;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->i:Lo/SensorEventCallback;

    .line 182
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->i:Lo/SensorEventCallback;

    return-object v0
.end method

.method public f()Lo/DngCreator;
    .locals 14

    .line 273
    iget-object v0, p0, Lo/CallbackProxies;->o:Lo/DngCreator;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lo/DngCreator;

    .line 276
    invoke-direct {p0}, Lo/CallbackProxies;->r()Lo/PhysicalCaptureResultInfo;

    move-result-object v2

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 277
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->x()Ljava/util/Set;

    move-result-object v3

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 278
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->q()Lo/UserInfo;

    move-result-object v4

    .line 279
    invoke-virtual {p0}, Lo/CallbackProxies;->a()Lo/SensorManager;

    move-result-object v5

    .line 280
    invoke-virtual {p0}, Lo/CallbackProxies;->c()Lo/SensorManager;

    move-result-object v6

    .line 281
    invoke-virtual {p0}, Lo/CallbackProxies;->i()Lo/LegacySensorManager;

    move-result-object v7

    .line 282
    invoke-direct {p0}, Lo/CallbackProxies;->s()Lo/LegacySensorManager;

    move-result-object v8

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 283
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->c()Lo/SensorEventListener;

    move-result-object v9

    iget-object v10, p0, Lo/CallbackProxies;->d:Lo/ContextHubClient;

    const/4 v1, 0x0

    .line 285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lo/VerifierDeviceIdentity;->e(Ljava/lang/Object;)Lo/UserInfo;

    move-result-object v11

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 286
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->l()Lo/UserInfo;

    move-result-object v12

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 287
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->z()Lo/PackageUserState;

    move-result-object v13

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lo/DngCreator;-><init>(Lo/PhysicalCaptureResultInfo;Ljava/util/Set;Lo/UserInfo;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/ContextHubClient;Lo/UserInfo;Lo/UserInfo;Lo/PackageUserState;)V

    iput-object v0, p0, Lo/CallbackProxies;->o:Lo/DngCreator;

    .line 289
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->o:Lo/DngCreator;

    return-object v0
.end method

.method public g()Lo/Camera;
    .locals 3

    .line 293
    iget-object v0, p0, Lo/CallbackProxies;->q:Lo/Camera;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 296
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lo/CallbackProxies;->h()Lo/TonemapCurve;

    move-result-object v1

    invoke-virtual {p0}, Lo/CallbackProxies;->k()Lo/CameraManager;

    move-result-object v2

    .line 295
    invoke-static {v0, v1, v2}, Lo/CameraInfo;->d(Lo/MarshalQueryableStreamConfiguration;Lo/TonemapCurve;Lo/CameraManager;)Lo/Camera;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->q:Lo/Camera;

    .line 298
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->q:Lo/Camera;

    return-object v0
.end method

.method public h()Lo/TonemapCurve;
    .locals 2

    .line 302
    iget-object v0, p0, Lo/CallbackProxies;->s:Lo/TonemapCurve;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 305
    invoke-virtual {v0}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v0

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v1}, Lo/CameraDeviceImpl;->A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->n()Z

    move-result v1

    .line 304
    invoke-static {v0, v1}, Lo/StreamConfigurationMap;->c(Lo/MarshalQueryableStreamConfiguration;Z)Lo/TonemapCurve;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->s:Lo/TonemapCurve;

    .line 307
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->s:Lo/TonemapCurve;

    return-object v0
.end method

.method public i()Lo/LegacySensorManager;
    .locals 8

    .line 251
    iget-object v0, p0, Lo/CallbackProxies;->j:Lo/LegacySensorManager;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lo/LegacySensorManager;

    .line 254
    invoke-virtual {p0}, Lo/CallbackProxies;->j()Lo/PackageStats;

    move-result-object v2

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 255
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    iget-object v3, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v3}, Lo/CameraDeviceImpl;->t()I

    move-result v3

    invoke-virtual {v1, v3}, Lo/MarshalQueryableStreamConfiguration;->c(I)Lo/AssetFileDescriptor;

    move-result-object v3

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 256
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lo/MarshalQueryableStreamConfiguration;->f()Lo/CompatResources;

    move-result-object v4

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 257
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v1

    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 258
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->m()Lo/CaptureRequest;

    move-result-object v1

    invoke-interface {v1}, Lo/CaptureRequest;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    .line 259
    invoke-virtual {v1}, Lo/CameraDeviceImpl;->n()Lo/SerialPort;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/LegacySensorManager;-><init>(Lo/PackageStats;Lo/AssetFileDescriptor;Lo/CompatResources;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/SerialPort;)V

    iput-object v0, p0, Lo/CallbackProxies;->j:Lo/LegacySensorManager;

    .line 261
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->j:Lo/LegacySensorManager;

    return-object v0
.end method

.method public j()Lo/PackageStats;
    .locals 2

    .line 265
    iget-object v0, p0, Lo/CallbackProxies;->k:Lo/PackageStats;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v0}, Lo/CameraDeviceImpl;->s()Lo/PackageBackwardCompatibility;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v1}, Lo/CameraDeviceImpl;->f()Lo/CaptureFailure;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/CaptureFailure;->b(Lo/PackageBackwardCompatibility;)Lo/PackageStats;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->k:Lo/PackageStats;

    .line 269
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->k:Lo/PackageStats;

    return-object v0
.end method

.method public k()Lo/CameraManager;
    .locals 1

    .line 373
    iget-object v0, p0, Lo/CallbackProxies;->c:Lo/CameraManager;

    return-object v0
.end method

.method public l()Lo/PackageStats;
    .locals 2

    .line 365
    iget-object v0, p0, Lo/CallbackProxies;->t:Lo/PackageStats;

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v0}, Lo/CameraDeviceImpl;->y()Lo/PackageBackwardCompatibility;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lo/CallbackProxies;->a:Lo/CameraDeviceImpl;

    invoke-virtual {v1}, Lo/CameraDeviceImpl;->f()Lo/CaptureFailure;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/CaptureFailure;->b(Lo/PackageBackwardCompatibility;)Lo/PackageStats;

    move-result-object v0

    iput-object v0, p0, Lo/CallbackProxies;->t:Lo/PackageStats;

    .line 369
    :cond_0
    iget-object v0, p0, Lo/CallbackProxies;->t:Lo/PackageStats;

    return-object v0
.end method
