.class public abstract Lo/Fingerprint;
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

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/Fingerprint;->e:Ljava/util/concurrent/Executor;

    .line 33
    iput-object p2, p0, Lo/Fingerprint;->a:Lo/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method protected abstract c()Ljava/lang/String;
.end method

.method protected c(Ljava/io/InputStream;I)Lo/LegacyFaceDetectMapper;
    .locals 2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 83
    :try_start_0
    iget-object p2, p0, Lo/Fingerprint;->a:Lo/AssetFileDescriptor;

    invoke-interface {p2, p1}, Lo/AssetFileDescriptor;->e(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p2

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lo/Fingerprint;->a:Lo/AssetFileDescriptor;

    invoke-interface {v1, p1, p2}, Lo/AssetFileDescriptor;->d(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p2

    :goto_0
    move-object v0, p2

    .line 87
    new-instance p2, Lo/LegacyFaceDetectMapper;

    invoke-direct {p2, v0}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {p1}, Lo/ShortcutManager;->e(Ljava/io/InputStream;)V

    .line 90
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 89
    invoke-static {p1}, Lo/ShortcutManager;->e(Ljava/io/InputStream;)V

    .line 90
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p2
.end method

.method protected d(Ljava/io/InputStream;I)Lo/LegacyFaceDetectMapper;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lo/Fingerprint;->c(Ljava/io/InputStream;I)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 10
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

    .line 41
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v7

    .line 42
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 44
    new-instance v9, Lo/Fingerprint$2;

    .line 46
    invoke-virtual {p0}, Lo/Fingerprint;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v8}, Lo/Fingerprint$2;-><init>(Lo/Fingerprint;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lo/InputManagerInternal;Ljava/lang/String;)V

    .line 66
    new-instance p1, Lo/Fingerprint$1;

    invoke-direct {p1, p0, v9}, Lo/Fingerprint$1;-><init>(Lo/Fingerprint;Lo/ActivityRecognitionEvent;)V

    invoke-interface {p2, p1}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    .line 73
    iget-object p1, p0, Lo/Fingerprint;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract e(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/LegacyFaceDetectMapper;
.end method
