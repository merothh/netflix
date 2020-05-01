.class Lo/TouchCalibration$TaskDescription;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TouchCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/LegacyFaceDetectMapper;",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Z

.field final synthetic c:Lo/TouchCalibration;

.field private final d:Lo/HdmiTimerRecordSources;

.field private final e:Lo/NanoAppInstanceInfo;

.field private final i:Lcom/facebook/imagepipeline/producers/JobScheduler;


# direct methods
.method constructor <init>(Lo/TouchCalibration;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZLo/NanoAppInstanceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            "Z",
            "Lo/NanoAppInstanceInfo;",
            ")V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lo/TouchCalibration$TaskDescription;->c:Lo/TouchCalibration;

    .line 97
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lo/TouchCalibration$TaskDescription;->b:Z

    .line 99
    iput-object p3, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    .line 101
    iget-object p3, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    .line 102
    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p3

    invoke-virtual {p3}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 105
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :cond_0
    iput-boolean p4, p0, Lo/TouchCalibration$TaskDescription;->a:Z

    .line 108
    iput-object p5, p0, Lo/TouchCalibration$TaskDescription;->e:Lo/NanoAppInstanceInfo;

    .line 110
    new-instance p3, Lo/TouchCalibration$TaskDescription$3;

    invoke-direct {p3, p0, p1}, Lo/TouchCalibration$TaskDescription$3;-><init>(Lo/TouchCalibration$TaskDescription;Lo/TouchCalibration;)V

    .line 122
    new-instance p4, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lo/TouchCalibration;->b(Lo/TouchCalibration;)Ljava/util/concurrent/Executor;

    move-result-object p5

    const/16 v0, 0x64

    invoke-direct {p4, p5, p3, v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;I)V

    iput-object p4, p0, Lo/TouchCalibration$TaskDescription;->i:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 124
    iget-object p3, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    new-instance p4, Lo/TouchCalibration$TaskDescription$1;

    invoke-direct {p4, p0, p1, p2}, Lo/TouchCalibration$TaskDescription$1;-><init>(Lo/TouchCalibration$TaskDescription;Lo/TouchCalibration;Lo/BrightnessChangeEvent;)V

    invoke-interface {p3, p4}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method private a(Lo/LegacyFaceDetectMapper;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/GeofenceHardwareMonitorEvent;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacyFaceDetectMapper;",
            "Lo/CameraConstrainedHighSpeedCaptureSession;",
            "Lo/GeofenceHardwareMonitorEvent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v1}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lo/CameraConstrainedHighSpeedCaptureSession;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lo/CameraConstrainedHighSpeedCaptureSession;->a:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "Unspecified"

    .line 293
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 294
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Image format"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Original size"

    .line 295
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Requested size"

    .line 296
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p1, p0, Lo/TouchCalibration$TaskDescription;->i:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->e()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "queueTime"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Transcoder id"

    .line 298
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Transcoding result"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private a(Lo/LegacyFaceDetectMapper;I)Lo/LegacyFaceDetectMapper;
    .locals 1

    .line 209
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p2}, Lo/LegacyFaceDetectMapper;->b(I)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lo/TouchCalibration$TaskDescription;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lo/TouchCalibration$TaskDescription;->a:Z

    return p0
.end method

.method static synthetic a(Lo/TouchCalibration$TaskDescription;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lo/TouchCalibration$TaskDescription;->b:Z

    return p1
.end method

.method private b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;
    .locals 2

    .line 199
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraDevice;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->h()I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->h()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0}, Lo/TouchCalibration$TaskDescription;->a(Lo/LegacyFaceDetectMapper;I)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Lo/LegacyFaceDetectMapper;ILo/GestureLibraries;)V
    .locals 1

    .line 182
    sget-object v0, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    if-eq p3, v0, :cond_1

    sget-object v0, Lo/GestureLibrary;->o:Lo/GestureLibraries;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lo/TouchCalibration$TaskDescription;->e(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    goto :goto_1

    .line 183
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lo/TouchCalibration$TaskDescription;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    .line 187
    :goto_1
    invoke-virtual {p0}, Lo/TouchCalibration$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic b(Lo/TouchCalibration$TaskDescription;Lo/LegacyFaceDetectMapper;ILo/GeofenceHardwareRequestParcelable;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lo/TouchCalibration$TaskDescription;->e(Lo/LegacyFaceDetectMapper;ILo/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic c(Lo/TouchCalibration$TaskDescription;)Lo/HdmiTimerRecordSources;
    .locals 0

    .line 83
    iget-object p0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    return-object p0
.end method

.method static synthetic d(Lo/TouchCalibration$TaskDescription;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 0

    .line 83
    iget-object p0, p0, Lo/TouchCalibration$TaskDescription;->i:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object p0
.end method

.method private e(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;
    .locals 2

    .line 191
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lo/CameraDevice;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lo/CameraDevice;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lo/CameraDevice;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lo/TouchCalibration$TaskDescription;->a(Lo/LegacyFaceDetectMapper;I)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic e(Lo/TouchCalibration$TaskDescription;)Lo/NanoAppInstanceInfo;
    .locals 0

    .line 83
    iget-object p0, p0, Lo/TouchCalibration$TaskDescription;->e:Lo/NanoAppInstanceInfo;

    return-object p0
.end method

.method private e(Lo/LegacyFaceDetectMapper;ILo/GeofenceHardwareRequestParcelable;)V
    .locals 11

    .line 219
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v1}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResizeAndRotateProducer"

    invoke-interface {v0, v1, v2}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lo/TouchCalibration$TaskDescription;->c:Lo/TouchCalibration;

    invoke-static {v1}, Lo/TouchCalibration;->d(Lo/TouchCalibration;)Lo/AssetFileDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lo/AssetFileDescriptor;->d()Lo/SplitDependencyLoader;

    move-result-object v1

    const/4 v10, 0x0

    .line 229
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v6

    .line 230
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v3, 0x55

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v3, p3

    move-object v4, p1

    move-object v5, v1

    .line 226
    invoke-interface/range {v3 .. v9}, Lo/GeofenceHardwareRequestParcelable;->a(Lo/LegacyFaceDetectMapper;Ljava/io/OutputStream;Lo/CameraDevice;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/GestureLibraries;Ljava/lang/Integer;)Lo/GeofenceHardwareMonitorEvent;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lo/GeofenceHardwareMonitorEvent;->b()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v0

    .line 243
    invoke-interface {p3}, Lo/GeofenceHardwareRequestParcelable;->c()Ljava/lang/String;

    move-result-object p3

    .line 239
    invoke-direct {p0, p1, v0, v3, p3}, Lo/TouchCalibration$TaskDescription;->a(Lo/LegacyFaceDetectMapper;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/GeofenceHardwareMonitorEvent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 246
    invoke-virtual {v1}, Lo/SplitDependencyLoader;->d()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 248
    :try_start_1
    new-instance p3, Lo/LegacyFaceDetectMapper;

    invoke-direct {p3, p1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V

    .line 249
    sget-object v0, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    invoke-virtual {p3, v0}, Lo/LegacyFaceDetectMapper;->c(Lo/GestureLibraries;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    :try_start_2
    invoke-virtual {p3}, Lo/LegacyFaceDetectMapper;->m()V

    .line 252
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    iget-object v4, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    .line 253
    invoke-interface {v4}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2, v10}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    invoke-virtual {v3}, Lo/GeofenceHardwareMonitorEvent;->b()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    or-int/lit8 p2, p2, 0x10

    .line 257
    :cond_0
    invoke-virtual {p0}, Lo/TouchCalibration$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    invoke-static {p3}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    :try_start_4
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 272
    invoke-virtual {v1}, Lo/SplitDependencyLoader;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 259
    :try_start_5
    invoke-static {p3}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    .line 262
    :try_start_6
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p3

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "Error while transcoding the image"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    :try_start_7
    iget-object p3, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object p3

    iget-object v0, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    .line 266
    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, v2, p1, v10}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 267
    invoke-static {p2}, Lo/TouchCalibration$TaskDescription;->e(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 268
    invoke-virtual {p0}, Lo/TouchCalibration$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 272
    :cond_2
    invoke-virtual {v1}, Lo/SplitDependencyLoader;->close()V

    return-void

    :goto_0
    invoke-virtual {v1}, Lo/SplitDependencyLoader;->close()V

    throw p1
.end method


# virtual methods
.method protected bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 83
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/TouchCalibration$TaskDescription;->c(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method protected c(Lo/LegacyFaceDetectMapper;I)V
    .locals 5

    .line 145
    iget-boolean v0, p0, Lo/TouchCalibration$TaskDescription;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {p2}, Lo/TouchCalibration$TaskDescription;->e(I)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lo/TouchCalibration$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_1
    return-void

    .line 155
    :cond_2
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    .line 158
    invoke-interface {v2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    iget-object v3, p0, Lo/TouchCalibration$TaskDescription;->e:Lo/NanoAppInstanceInfo;

    iget-boolean v4, p0, Lo/TouchCalibration$TaskDescription;->a:Z

    .line 161
    invoke-interface {v3, v1, v4}, Lo/NanoAppInstanceInfo;->createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object v3

    .line 160
    invoke-static {v3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/GeofenceHardwareRequestParcelable;

    .line 157
    invoke-static {v2, p1, v3}, Lo/TouchCalibration;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/LegacyFaceDetectMapper;Lo/GeofenceHardwareRequestParcelable;)Lcom/facebook/common/util/TriState;

    move-result-object v2

    if-nez v0, :cond_3

    .line 163
    sget-object v3, Lcom/facebook/common/util/TriState;->c:Lcom/facebook/common/util/TriState;

    if-ne v2, v3, :cond_3

    return-void

    .line 167
    :cond_3
    sget-object v3, Lcom/facebook/common/util/TriState;->d:Lcom/facebook/common/util/TriState;

    if-eq v2, v3, :cond_4

    .line 168
    invoke-direct {p0, p1, p2, v1}, Lo/TouchCalibration$TaskDescription;->b(Lo/LegacyFaceDetectMapper;ILo/GestureLibraries;)V

    return-void

    .line 172
    :cond_4
    iget-object v1, p0, Lo/TouchCalibration$TaskDescription;->i:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a(Lo/LegacyFaceDetectMapper;I)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_6

    .line 175
    iget-object p1, p0, Lo/TouchCalibration$TaskDescription;->d:Lo/HdmiTimerRecordSources;

    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 176
    :cond_6
    iget-object p1, p0, Lo/TouchCalibration$TaskDescription;->i:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z

    :cond_7
    return-void
.end method
