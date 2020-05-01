.class public Lo/HdmiHotplugEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/AssetFileDescriptor;

.field private final d:Lo/HdmiRecordListener;

.field private final e:Lo/RuntimePermissionPresentationInfo;


# direct methods
.method public constructor <init>(Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/HdmiRecordListener;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/HdmiHotplugEvent;->a:Lo/AssetFileDescriptor;

    .line 56
    iput-object p2, p0, Lo/HdmiHotplugEvent;->e:Lo/RuntimePermissionPresentationInfo;

    .line 57
    iput-object p3, p0, Lo/HdmiHotplugEvent;->d:Lo/HdmiRecordListener;

    return-void
.end method

.method private a(Lo/DisplayManagerGlobal;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DisplayManagerGlobal;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->b()Lo/InputManagerInternal;

    move-result-object v0

    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    iget-object v0, p0, Lo/HdmiHotplugEvent;->d:Lo/HdmiRecordListener;

    invoke-interface {v0, p1, p2}, Lo/HdmiRecordListener;->b(Lo/DisplayManagerGlobal;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lo/HdmiHotplugEvent;Lo/DisplayManagerGlobal;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/HdmiHotplugEvent;->d(Lo/DisplayManagerGlobal;)V

    return-void
.end method

.method private b(Lo/DisplayManagerGlobal;Ljava/lang/Throwable;)V
    .locals 4

    .line 187
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->b()Lo/InputManagerInternal;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 189
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->b()Lo/InputManagerInternal;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lo/HdmiHotplugEvent;Lo/DisplayManagerGlobal;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/HdmiHotplugEvent;->b(Lo/DisplayManagerGlobal;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static c(Lo/SplitDependencyLoader;ILo/BiometricFingerprintConstants;Lo/BrightnessChangeEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SplitDependencyLoader;",
            "I",
            "Lo/BiometricFingerprintConstants;",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lo/SplitDependencyLoader;->d()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 176
    :try_start_0
    new-instance v1, Lo/LegacyFaceDetectMapper;

    invoke-direct {v1, p0}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    invoke-virtual {v1, p2}, Lo/LegacyFaceDetectMapper;->c(Lo/BiometricFingerprintConstants;)V

    .line 178
    invoke-virtual {v1}, Lo/LegacyFaceDetectMapper;->m()V

    .line 179
    invoke-interface {p3, v1, p1}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {v1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 182
    invoke-static {p0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 181
    :goto_0
    invoke-static {v1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 182
    invoke-static {p0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method

.method protected static d(II)F
    .locals 4

    if-lez p1, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    neg-int p0, p0

    int-to-double v0, p0

    const-wide v2, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v0, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private d(Lo/DisplayManagerGlobal;)V
    .locals 4

    .line 195
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->b()Lo/InputManagerInternal;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/InputManagerInternal;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    invoke-interface {p1}, Lo/BrightnessChangeEvent;->c()V

    return-void
.end method

.method private e(Lo/DisplayManagerGlobal;)Z
    .locals 1

    .line 201
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->a()Lo/HdmiTimerRecordSources;

    move-result-object v0

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_0
    iget-object v0, p0, Lo/HdmiHotplugEvent;->d:Lo/HdmiRecordListener;

    invoke-interface {v0, p1}, Lo/HdmiRecordListener;->c(Lo/DisplayManagerGlobal;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected c(Lo/SplitDependencyLoader;Lo/DisplayManagerGlobal;)V
    .locals 4

    .line 156
    invoke-virtual {p1}, Lo/SplitDependencyLoader;->c()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lo/HdmiHotplugEvent;->a(Lo/DisplayManagerGlobal;I)Ljava/util/Map;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->b()Lo/InputManagerInternal;

    move-result-object v1

    .line 158
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v3, v2}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->h()I

    move-result v0

    or-int/2addr v0, v2

    .line 163
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->j()Lo/BiometricFingerprintConstants;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->d()Lo/BrightnessChangeEvent;

    move-result-object p2

    .line 160
    invoke-static {p1, v0, v1, p2}, Lo/HdmiHotplugEvent;->c(Lo/SplitDependencyLoader;ILo/BiometricFingerprintConstants;Lo/BrightnessChangeEvent;)V

    return-void
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    .line 63
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/HdmiHotplugEvent;->d:Lo/HdmiRecordListener;

    invoke-interface {v0, p1, p2}, Lo/HdmiRecordListener;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/DisplayManagerGlobal;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lo/HdmiHotplugEvent;->d:Lo/HdmiRecordListener;

    new-instance v0, Lo/HdmiHotplugEvent$3;

    invoke-direct {v0, p0, p1}, Lo/HdmiHotplugEvent$3;-><init>(Lo/HdmiHotplugEvent;Lo/DisplayManagerGlobal;)V

    invoke-interface {p2, p1, v0}, Lo/HdmiRecordListener;->d(Lo/DisplayManagerGlobal;Lo/HdmiRecordListener$StateListAnimator;)V

    return-void
.end method

.method protected e(Lo/DisplayManagerGlobal;Ljava/io/InputStream;I)V
    .locals 4

    if-lez p3, :cond_0

    .line 96
    iget-object v0, p0, Lo/HdmiHotplugEvent;->a:Lo/AssetFileDescriptor;

    invoke-interface {v0, p3}, Lo/AssetFileDescriptor;->e(I)Lo/SplitDependencyLoader;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lo/HdmiHotplugEvent;->a:Lo/AssetFileDescriptor;

    invoke-interface {v0}, Lo/AssetFileDescriptor;->d()Lo/SplitDependencyLoader;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v1, p0, Lo/HdmiHotplugEvent;->e:Lo/RuntimePermissionPresentationInfo;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lo/RuntimePermissionPresentationInfo;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 103
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0, v1, v3, v2}, Lo/SplitDependencyLoader;->write([BII)V

    .line 106
    invoke-virtual {p0, v0, p1}, Lo/HdmiHotplugEvent;->e(Lo/SplitDependencyLoader;Lo/DisplayManagerGlobal;)V

    .line 107
    invoke-virtual {v0}, Lo/SplitDependencyLoader;->c()I

    move-result v2

    invoke-static {v2, p3}, Lo/HdmiHotplugEvent;->d(II)F

    move-result v2

    .line 108
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->d()Lo/BrightnessChangeEvent;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/BrightnessChangeEvent;->c(F)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object p2, p0, Lo/HdmiHotplugEvent;->d:Lo/HdmiRecordListener;

    invoke-virtual {v0}, Lo/SplitDependencyLoader;->c()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lo/HdmiRecordListener;->a(Lo/DisplayManagerGlobal;I)V

    .line 112
    invoke-virtual {p0, v0, p1}, Lo/HdmiHotplugEvent;->c(Lo/SplitDependencyLoader;Lo/DisplayManagerGlobal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p1, p0, Lo/HdmiHotplugEvent;->e:Lo/RuntimePermissionPresentationInfo;

    invoke-interface {p1, v1}, Lo/RuntimePermissionPresentationInfo;->b(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Lo/SplitDependencyLoader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 114
    iget-object p2, p0, Lo/HdmiHotplugEvent;->e:Lo/RuntimePermissionPresentationInfo;

    invoke-interface {p2, v1}, Lo/RuntimePermissionPresentationInfo;->b(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Lo/SplitDependencyLoader;->close()V

    throw p1
.end method

.method protected e(Lo/SplitDependencyLoader;Lo/DisplayManagerGlobal;)V
    .locals 7

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 141
    invoke-direct {p0, p2}, Lo/HdmiHotplugEvent;->e(Lo/DisplayManagerGlobal;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->g()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 143
    invoke-virtual {p2, v0, v1}, Lo/DisplayManagerGlobal;->d(J)V

    .line 144
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->b()Lo/InputManagerInternal;

    move-result-object v0

    .line 145
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const-string v3, "intermediate_result"

    invoke-interface {v0, v1, v2, v3}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->h()I

    move-result v0

    .line 149
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->j()Lo/BiometricFingerprintConstants;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Lo/DisplayManagerGlobal;->d()Lo/BrightnessChangeEvent;

    move-result-object p2

    .line 146
    invoke-static {p1, v0, v1, p2}, Lo/HdmiHotplugEvent;->c(Lo/SplitDependencyLoader;ILo/BiometricFingerprintConstants;Lo/BrightnessChangeEvent;)V

    :cond_0
    return-void
.end method
