.class Lo/HdmiPlaybackClient$Application;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiPlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
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
.field private final a:Lo/MacAuthenticatedInputStream;

.field private final b:Lo/LegacyFaceDetectMapper;

.field private final c:Lo/LegacySensorManager;

.field private final d:Lo/RuntimePermissionPresentationInfo;

.field private final e:Lo/AssetFileDescriptor;


# direct methods
.method private constructor <init>(Lo/BrightnessChangeEvent;Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/LegacyFaceDetectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/LegacySensorManager;",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/AssetFileDescriptor;",
            "Lo/RuntimePermissionPresentationInfo;",
            "Lo/LegacyFaceDetectMapper;",
            ")V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 252
    iput-object p2, p0, Lo/HdmiPlaybackClient$Application;->c:Lo/LegacySensorManager;

    .line 253
    iput-object p3, p0, Lo/HdmiPlaybackClient$Application;->a:Lo/MacAuthenticatedInputStream;

    .line 254
    iput-object p4, p0, Lo/HdmiPlaybackClient$Application;->e:Lo/AssetFileDescriptor;

    .line 255
    iput-object p5, p0, Lo/HdmiPlaybackClient$Application;->d:Lo/RuntimePermissionPresentationInfo;

    .line 256
    iput-object p6, p0, Lo/HdmiPlaybackClient$Application;->b:Lo/LegacyFaceDetectMapper;

    return-void
.end method

.method synthetic constructor <init>(Lo/BrightnessChangeEvent;Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/LegacyFaceDetectMapper;Lo/HdmiPlaybackClient$5;)V
    .locals 0

    .line 233
    invoke-direct/range {p0 .. p6}, Lo/HdmiPlaybackClient$Application;-><init>(Lo/BrightnessChangeEvent;Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5

    .line 307
    iget-object v0, p0, Lo/HdmiPlaybackClient$Application;->d:Lo/RuntimePermissionPresentationInfo;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lo/RuntimePermissionPresentationInfo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v2, p3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 311
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    if-lez v4, :cond_0

    .line 313
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 318
    iget-object p2, p0, Lo/HdmiPlaybackClient$Application;->d:Lo/RuntimePermissionPresentationInfo;

    invoke-interface {p2, v0}, Lo/RuntimePermissionPresentationInfo;->b(Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lo/HdmiPlaybackClient$Application;->d:Lo/RuntimePermissionPresentationInfo;

    invoke-interface {p1, v0}, Lo/RuntimePermissionPresentationInfo;->b(Ljava/lang/Object;)V

    if-gtz v2, :cond_2

    return-void

    .line 322
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    check-cast p2, Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    const/4 p3, 0x1

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "Failed to read %d bytes - finished %d short"

    .line 322
    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lo/LegacyFaceDetectMapper;Lo/LegacyFaceDetectMapper;)Lo/SplitDependencyLoader;
    .locals 2

    .line 293
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v0

    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->l()Lo/BiometricFingerprintConstants;

    move-result-object v1

    iget v1, v1, Lo/BiometricFingerprintConstants;->e:I

    add-int/2addr v0, v1

    .line 294
    iget-object v1, p0, Lo/HdmiPlaybackClient$Application;->e:Lo/AssetFileDescriptor;

    .line 295
    invoke-interface {v1, v0}, Lo/AssetFileDescriptor;->e(I)Lo/SplitDependencyLoader;

    move-result-object v0

    .line 298
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->l()Lo/BiometricFingerprintConstants;

    move-result-object v1

    iget v1, v1, Lo/BiometricFingerprintConstants;->e:I

    .line 299
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lo/HdmiPlaybackClient$Application;->b(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 300
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->o()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lo/HdmiPlaybackClient$Application;->b(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method private d(Lo/SplitDependencyLoader;)V
    .locals 4

    .line 332
    invoke-virtual {p1}, Lo/SplitDependencyLoader;->d()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 335
    :try_start_0
    new-instance v1, Lo/LegacyFaceDetectMapper;

    invoke-direct {v1, p1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    :try_start_1
    invoke-virtual {v1}, Lo/LegacyFaceDetectMapper;->m()V

    .line 337
    invoke-virtual {p0}, Lo/HdmiPlaybackClient$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-static {v1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 340
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 339
    :goto_0
    invoke-static {v1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 340
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v0
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 233
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/HdmiPlaybackClient$Application;->e(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method public e(Lo/LegacyFaceDetectMapper;I)V
    .locals 2

    .line 261
    invoke-static {p2}, Lo/HdmiPlaybackClient$Application;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lo/HdmiPlaybackClient$Application;->b:Lo/LegacyFaceDetectMapper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->l()Lo/BiometricFingerprintConstants;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    :try_start_0
    iget-object p2, p0, Lo/HdmiPlaybackClient$Application;->b:Lo/LegacyFaceDetectMapper;

    .line 269
    invoke-direct {p0, p2, p1}, Lo/HdmiPlaybackClient$Application;->d(Lo/LegacyFaceDetectMapper;Lo/LegacyFaceDetectMapper;)Lo/SplitDependencyLoader;

    move-result-object p2

    .line 270
    invoke-direct {p0, p2}, Lo/HdmiPlaybackClient$Application;->d(Lo/SplitDependencyLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    .line 277
    iget-object p1, p0, Lo/HdmiPlaybackClient$Application;->b:Lo/LegacyFaceDetectMapper;

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "PartialDiskCacheProducer"

    const-string v1, "Error while merging image data"

    .line 273
    invoke-static {v0, v1, p2}, Lo/DexMetadataHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p0}, Lo/HdmiPlaybackClient$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :goto_1
    iget-object p1, p0, Lo/HdmiPlaybackClient$Application;->c:Lo/LegacySensorManager;

    iget-object p2, p0, Lo/HdmiPlaybackClient$Application;->a:Lo/MacAuthenticatedInputStream;

    invoke-virtual {p1, p2}, Lo/LegacySensorManager;->a(Lo/MacAuthenticatedInputStream;)Lo/HashSet;

    goto :goto_3

    .line 276
    :goto_2
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    .line 277
    iget-object p1, p0, Lo/HdmiPlaybackClient$Application;->b:Lo/LegacyFaceDetectMapper;

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    throw p2

    :cond_1
    const/16 v0, 0x8

    .line 281
    invoke-static {p2, v0}, Lo/HdmiPlaybackClient$Application;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-static {p2}, Lo/HdmiPlaybackClient$Application;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    sget-object v1, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-eq v0, v1, :cond_2

    .line 284
    iget-object v0, p0, Lo/HdmiPlaybackClient$Application;->c:Lo/LegacySensorManager;

    iget-object v1, p0, Lo/HdmiPlaybackClient$Application;->a:Lo/MacAuthenticatedInputStream;

    invoke-virtual {v0, v1, p1}, Lo/LegacySensorManager;->d(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    .line 285
    invoke-virtual {p0}, Lo/HdmiPlaybackClient$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    goto :goto_3

    .line 287
    :cond_2
    invoke-virtual {p0}, Lo/HdmiPlaybackClient$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :goto_3
    return-void
.end method
