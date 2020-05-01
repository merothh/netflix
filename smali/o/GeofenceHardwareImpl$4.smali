.class Lo/GeofenceHardwareImpl$4;
.super Lo/ActivityRecognitionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GeofenceHardwareImpl;->c(Lo/LegacyFaceDetectMapper;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ActivityRecognitionEvent<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/LegacyFaceDetectMapper;

.field final synthetic e:Lo/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Lo/GeofenceHardwareImpl;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/GeofenceHardwareImpl$4;->e:Lo/GeofenceHardwareImpl;

    iput-object p6, p0, Lo/GeofenceHardwareImpl$4;->a:Lo/LegacyFaceDetectMapper;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/ActivityRecognitionEvent;-><init>(Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 142
    iget-object v0, p0, Lo/GeofenceHardwareImpl$4;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 143
    invoke-super {p0}, Lo/ActivityRecognitionEvent;->b()V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1}, Lo/GeofenceHardwareImpl$4;->d(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lo/GeofenceHardwareImpl$4;->e()Lo/LegacyFaceDetectMapper;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/Exception;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/GeofenceHardwareImpl$4;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 137
    invoke-super {p0, p1}, Lo/ActivityRecognitionEvent;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1}, Lo/GeofenceHardwareImpl$4;->e(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected d(Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 125
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method protected e()Lo/LegacyFaceDetectMapper;
    .locals 4

    .line 106
    iget-object v0, p0, Lo/GeofenceHardwareImpl$4;->e:Lo/GeofenceHardwareImpl;

    invoke-static {v0}, Lo/GeofenceHardwareImpl;->c(Lo/GeofenceHardwareImpl;)Lo/AssetFileDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lo/AssetFileDescriptor;->d()Lo/SplitDependencyLoader;

    move-result-object v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lo/GeofenceHardwareImpl$4;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v1, v0}, Lo/GeofenceHardwareImpl;->a(Lo/LegacyFaceDetectMapper;Lo/SplitDependencyLoader;)V

    .line 110
    invoke-virtual {v0}, Lo/SplitDependencyLoader;->d()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    new-instance v2, Lo/LegacyFaceDetectMapper;

    invoke-direct {v2, v1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V

    .line 113
    iget-object v3, p0, Lo/GeofenceHardwareImpl$4;->a:Lo/LegacyFaceDetectMapper;

    invoke-virtual {v2, v3}, Lo/LegacyFaceDetectMapper;->e(Lo/LegacyFaceDetectMapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    invoke-virtual {v0}, Lo/SplitDependencyLoader;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 116
    :try_start_3
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 119
    invoke-virtual {v0}, Lo/SplitDependencyLoader;->close()V

    throw v1
.end method

.method protected e(Lo/LegacyFaceDetectMapper;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/GeofenceHardwareImpl$4;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 131
    invoke-super {p0, p1}, Lo/ActivityRecognitionEvent;->d(Ljava/lang/Object;)V

    return-void
.end method
