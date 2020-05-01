.class public Lo/CameraCaptureSessionCore;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/res/Resources;

.field private final b:Lo/RuntimePermissionPresentationInfo;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Lo/SyntheticKey;

.field private e:Landroid/content/ContentResolver;

.field private final f:Z

.field private final g:Z

.field private final h:Lo/CameraDeviceState;

.field private final i:Lo/CaptureRequest;

.field private final j:Z

.field private final k:Lo/LegacySensorManager;

.field private final l:Lo/LegacySensorManager;

.field private final m:Lo/AssetFileDescriptor;

.field private final n:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lo/SensorEventListener;

.field private final q:I

.field private final r:Lo/Camera;

.field private s:Z

.field private final t:I

.field private final v:I

.field private final w:Lo/CameraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/RuntimePermissionPresentationInfo;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/CaptureRequest;Lo/AssetFileDescriptor;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Camera;IIZILo/CameraManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/RuntimePermissionPresentationInfo;",
            "Lo/SyntheticKey;",
            "Lo/CameraDeviceState;",
            "ZZZ",
            "Lo/CaptureRequest;",
            "Lo/AssetFileDescriptor;",
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
            "Lo/Camera;",
            "IIZI",
            "Lo/CameraManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lo/CameraCaptureSessionCore;->e:Landroid/content/ContentResolver;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lo/CameraCaptureSessionCore;->a:Landroid/content/res/Resources;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Lo/CameraCaptureSessionCore;->c:Landroid/content/res/AssetManager;

    move-object v1, p2

    .line 130
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->b:Lo/RuntimePermissionPresentationInfo;

    move-object v1, p3

    .line 131
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->d:Lo/SyntheticKey;

    move-object v1, p4

    .line 132
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->h:Lo/CameraDeviceState;

    move v1, p5

    .line 133
    iput-boolean v1, v0, Lo/CameraCaptureSessionCore;->f:Z

    move v1, p6

    .line 134
    iput-boolean v1, v0, Lo/CameraCaptureSessionCore;->g:Z

    move v1, p7

    .line 135
    iput-boolean v1, v0, Lo/CameraCaptureSessionCore;->j:Z

    move-object v1, p8

    .line 137
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    move-object v1, p9

    .line 138
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    move-object v1, p10

    .line 140
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->o:Lo/TriggerEventListener;

    move-object v1, p11

    .line 141
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->n:Lo/TriggerEventListener;

    move-object v1, p12

    .line 142
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->k:Lo/LegacySensorManager;

    move-object v1, p13

    .line 143
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->l:Lo/LegacySensorManager;

    move-object/from16 v1, p14

    .line 144
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    move-object/from16 v1, p15

    .line 145
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->r:Lo/Camera;

    move/from16 v1, p16

    .line 147
    iput v1, v0, Lo/CameraCaptureSessionCore;->q:I

    move/from16 v1, p17

    .line 148
    iput v1, v0, Lo/CameraCaptureSessionCore;->t:I

    move/from16 v1, p18

    .line 149
    iput-boolean v1, v0, Lo/CameraCaptureSessionCore;->s:Z

    move/from16 v1, p19

    .line 151
    iput v1, v0, Lo/CameraCaptureSessionCore;->v:I

    move-object/from16 v1, p20

    .line 152
    iput-object v1, v0, Lo/CameraCaptureSessionCore;->w:Lo/CameraManager;

    return-void
.end method

.method public static b(Lo/InputDeviceIdentifier;)Lo/ListUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/ListUtils;"
        }
    .end annotation

    .line 157
    new-instance v0, Lo/ListUtils;

    invoke-direct {v0, p0}, Lo/ListUtils;-><init>(Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public static c(Lo/InputDeviceIdentifier;Lo/InputDeviceIdentifier;)Lo/AmbientBrightnessDayStats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/AmbientBrightnessDayStats;"
        }
    .end annotation

    .line 178
    new-instance v0, Lo/AmbientBrightnessDayStats;

    invoke-direct {v0, p0, p1}, Lo/AmbientBrightnessDayStats;-><init>(Lo/InputDeviceIdentifier;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public static k(Lo/InputDeviceIdentifier;)Lo/ActivityRecognitionHardware;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;)",
            "Lo/ActivityRecognitionHardware<",
            "TT;>;"
        }
    .end annotation

    .line 339
    new-instance v0, Lo/ActivityRecognitionHardware;

    invoke-direct {v0, p0}, Lo/ActivityRecognitionHardware;-><init>(Lo/InputDeviceIdentifier;)V

    return-object v0
.end method


# virtual methods
.method public a(Lo/InputDeviceIdentifier;)Lo/LongParcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/LongParcelable;"
        }
    .end annotation

    .line 172
    new-instance v0, Lo/LongParcelable;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->o:Lo/TriggerEventListener;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, v2, p1}, Lo/LongParcelable;-><init>(Lo/TriggerEventListener;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public a(Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)Lo/TouchCalibration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;Z",
            "Lo/NanoAppInstanceInfo;",
            ")",
            "Lo/TouchCalibration;"
        }
    .end annotation

    .line 330
    new-instance v6, Lo/TouchCalibration;

    iget-object v0, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 331
    invoke-interface {v0}, Lo/CaptureRequest;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/TouchCalibration;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Lo/InputDeviceIdentifier;ZLo/NanoAppInstanceInfo;)V

    return-object v6
.end method

.method public a()Lo/WifiDisplaySessionInfo;
    .locals 4

    .line 245
    new-instance v0, Lo/WifiDisplaySessionInfo;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 246
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lo/WifiDisplaySessionInfo;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public b()Lo/DisplayViewport;
    .locals 4

    .line 252
    new-instance v0, Lo/DisplayViewport;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 253
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->e:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lo/DisplayViewport;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public c([Lo/ContextHubManager;)Lo/ContextHubMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/ContextHubManager<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/ContextHubMessage;"
        }
    .end annotation

    .line 274
    new-instance v0, Lo/ContextHubMessage;

    invoke-direct {v0, p1}, Lo/ContextHubMessage;-><init>([Lo/ContextHubManager;)V

    return-object v0
.end method

.method public c(Lo/InputDeviceIdentifier;)Lo/TypeReference;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/TypeReference;"
        }
    .end annotation

    .line 186
    new-instance v11, Lo/TypeReference;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->b:Lo/RuntimePermissionPresentationInfo;

    iget-object v0, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 188
    invoke-interface {v0}, Lo/CaptureRequest;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->d:Lo/SyntheticKey;

    iget-object v4, p0, Lo/CameraCaptureSessionCore;->h:Lo/CameraDeviceState;

    iget-boolean v5, p0, Lo/CameraCaptureSessionCore;->f:Z

    iget-boolean v6, p0, Lo/CameraCaptureSessionCore;->g:Z

    iget-boolean v7, p0, Lo/CameraCaptureSessionCore;->j:Z

    iget v9, p0, Lo/CameraCaptureSessionCore;->v:I

    iget-object v10, p0, Lo/CameraCaptureSessionCore;->w:Lo/CameraManager;

    move-object v0, v11

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lo/TypeReference;-><init>(Lo/RuntimePermissionPresentationInfo;Ljava/util/concurrent/Executor;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/InputDeviceIdentifier;ILo/CameraManager;)V

    return-object v11
.end method

.method public c()Lo/VirtualDisplay;
    .locals 4

    .line 259
    new-instance v0, Lo/VirtualDisplay;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 260
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->e:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lo/VirtualDisplay;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public d(Lo/HdmiRecordListener;)Lo/HdmiHotplugEvent;
    .locals 3

    .line 304
    new-instance v0, Lo/HdmiHotplugEvent;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->b:Lo/RuntimePermissionPresentationInfo;

    invoke-direct {v0, v1, v2, p1}, Lo/HdmiHotplugEvent;-><init>(Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/HdmiRecordListener;)V

    return-object v0
.end method

.method public d(Lo/InputDeviceIdentifier;Lo/ContextHubClient;)Lo/KeyboardLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;",
            "Lo/ContextHubClient;",
            ")",
            "Lo/KeyboardLayout<",
            "TT;>;"
        }
    .end annotation

    .line 344
    new-instance v0, Lo/KeyboardLayout;

    invoke-direct {v0, p1, p2}, Lo/KeyboardLayout;-><init>(Lo/InputDeviceIdentifier;Lo/ContextHubClient;)V

    return-object v0
.end method

.method public d(Lo/InputDeviceIdentifier;)Lo/SurfaceUtils;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/SurfaceUtils;"
        }
    .end annotation

    .line 162
    new-instance v0, Lo/SurfaceUtils;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->o:Lo/TriggerEventListener;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, v2, p1}, Lo/SurfaceUtils;-><init>(Lo/TriggerEventListener;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public d()Lo/WifiDisplay;
    .locals 4

    .line 266
    new-instance v0, Lo/WifiDisplay;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 267
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->e:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lo/WifiDisplay;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public e(Lo/InputDeviceIdentifier;)Lo/TaskDrainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/TaskDrainer;"
        }
    .end annotation

    .line 167
    new-instance v0, Lo/TaskDrainer;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, p1}, Lo/TaskDrainer;-><init>(Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public e()Lo/UncheckedThrow;
    .locals 2

    .line 182
    new-instance v0, Lo/UncheckedThrow;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    invoke-direct {v0, v1}, Lo/UncheckedThrow;-><init>(Lo/AssetFileDescriptor;)V

    return-object v0
.end method

.method public f(Lo/InputDeviceIdentifier;)Lo/HdmiPlaybackClient;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/HdmiPlaybackClient;"
        }
    .end annotation

    .line 221
    new-instance v6, Lo/HdmiPlaybackClient;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->k:Lo/LegacySensorManager;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v4, p0, Lo/CameraCaptureSessionCore;->b:Lo/RuntimePermissionPresentationInfo;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/HdmiPlaybackClient;-><init>(Lo/LegacySensorManager;Lo/SensorEventListener;Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/InputDeviceIdentifier;)V

    return-object v6
.end method

.method public f()Lo/HdmiTvClient;
    .locals 4

    .line 284
    new-instance v0, Lo/HdmiTvClient;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 285
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->e:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lo/HdmiTvClient;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public g(Lo/InputDeviceIdentifier;)Lo/DisplayManager;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/DisplayManager;"
        }
    .end annotation

    .line 201
    new-instance v0, Lo/DisplayManager;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->k:Lo/LegacySensorManager;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->l:Lo/LegacySensorManager;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, v2, v3, p1}, Lo/DisplayManager;-><init>(Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public g()Lo/HdmiDeviceInfo;
    .locals 4

    .line 291
    new-instance v0, Lo/HdmiDeviceInfo;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 292
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lo/HdmiDeviceInfo;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public h(Lo/InputDeviceIdentifier;)Lo/DisplayManagerInternal;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/DisplayManagerInternal;"
        }
    .end annotation

    .line 238
    new-instance v0, Lo/DisplayManagerInternal;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->n:Lo/TriggerEventListener;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, v2, p1}, Lo/DisplayManagerInternal;-><init>(Lo/TriggerEventListener;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public h()Lo/HdmiControlManager;
    .locals 3

    .line 298
    new-instance v0, Lo/HdmiControlManager;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 299
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->e:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lo/HdmiControlManager;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public i(Lo/InputDeviceIdentifier;)Lo/Curve;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/Curve;"
        }
    .end annotation

    .line 211
    new-instance v0, Lo/Curve;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->k:Lo/LegacySensorManager;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->l:Lo/LegacySensorManager;

    iget-object v3, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, v2, v3, p1}, Lo/Curve;-><init>(Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public i()Lo/FingerprintManager;
    .locals 3

    .line 278
    new-instance v0, Lo/FingerprintManager;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 279
    invoke-interface {v1}, Lo/CaptureRequest;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    invoke-direct {v0, v1, v2}, Lo/FingerprintManager;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;)V

    return-object v0
.end method

.method public j(Lo/InputDeviceIdentifier;)Lo/BrightnessConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/BrightnessConfiguration;"
        }
    .end annotation

    .line 231
    new-instance v0, Lo/BrightnessConfiguration;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, p1}, Lo/BrightnessConfiguration;-><init>(Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public l(Lo/InputDeviceIdentifier;)Lo/HdmiRecordSources;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/HdmiRecordSources;"
        }
    .end annotation

    .line 316
    new-instance v0, Lo/HdmiRecordSources;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->o:Lo/TriggerEventListener;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->p:Lo/SensorEventListener;

    invoke-direct {v0, v1, v2, p1}, Lo/HdmiRecordSources;-><init>(Lo/TriggerEventListener;Lo/SensorEventListener;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public m(Lo/InputDeviceIdentifier;)Lo/ContextHubInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;)",
            "Lo/ContextHubInfo<",
            "TT;>;"
        }
    .end annotation

    .line 351
    new-instance v0, Lo/ContextHubInfo;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 353
    invoke-interface {v1}, Lo/CaptureRequest;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lo/ContextHubInfo;-><init>(ILjava/util/concurrent/Executor;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public n(Lo/InputDeviceIdentifier;)Lo/GeofenceHardwareImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Lo/GeofenceHardwareImpl;"
        }
    .end annotation

    .line 359
    new-instance v0, Lo/GeofenceHardwareImpl;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 360
    invoke-interface {v1}, Lo/CaptureRequest;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->m:Lo/AssetFileDescriptor;

    invoke-direct {v0, v1, v2, p1}, Lo/GeofenceHardwareImpl;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Lo/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public o(Lo/InputDeviceIdentifier;)Lo/HdmiPortInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/HdmiPortInfo;"
        }
    .end annotation

    .line 322
    new-instance v0, Lo/HdmiPortInfo;

    iget-object v1, p0, Lo/CameraCaptureSessionCore;->r:Lo/Camera;

    iget-object v2, p0, Lo/CameraCaptureSessionCore;->i:Lo/CaptureRequest;

    .line 323
    invoke-interface {v2}, Lo/CaptureRequest;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lo/HdmiPortInfo;-><init>(Lo/InputDeviceIdentifier;Lo/Camera;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public r(Lo/InputDeviceIdentifier;)Lo/SubmitInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)",
            "Lo/SubmitInfo;"
        }
    .end annotation

    .line 367
    new-instance v0, Lo/SubmitInfo;

    iget v1, p0, Lo/CameraCaptureSessionCore;->q:I

    iget v2, p0, Lo/CameraCaptureSessionCore;->t:I

    iget-boolean v3, p0, Lo/CameraCaptureSessionCore;->s:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lo/SubmitInfo;-><init>(Lo/InputDeviceIdentifier;IIZ)V

    return-object v0
.end method
