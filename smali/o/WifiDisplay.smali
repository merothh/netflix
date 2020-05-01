.class public Lo/WifiDisplay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContextHubManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ContextHubManager<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final c:Lo/AssetFileDescriptor;

.field private final e:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/ContentResolver;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/WifiDisplay;->a:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p2, p0, Lo/WifiDisplay;->c:Lo/AssetFileDescriptor;

    .line 57
    iput-object p3, p0, Lo/WifiDisplay;->e:Landroid/content/ContentResolver;

    return-void
.end method

.method private b(Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/LegacyFaceDetectMapper;
    .locals 3

    .line 142
    new-instance v0, Lo/ApkAssets;

    invoke-direct {v0, p1}, Lo/ApkAssets;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V

    .line 143
    invoke-static {v0}, Lo/ProgramSelector;->b(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    .line 144
    invoke-direct {p0, p2}, Lo/WifiDisplay;->e(Landroid/media/ExifInterface;)I

    move-result p2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 145
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 146
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 148
    :cond_1
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p1

    .line 150
    :try_start_0
    new-instance v0, Lo/LegacyFaceDetectMapper;

    invoke-direct {v0, p1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 154
    sget-object p1, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    invoke-virtual {v0, p1}, Lo/LegacyFaceDetectMapper;->c(Lo/GestureLibraries;)V

    .line 155
    invoke-virtual {v0, p2}, Lo/LegacyFaceDetectMapper;->b(I)V

    .line 156
    invoke-virtual {v0, v2}, Lo/LegacyFaceDetectMapper;->c(I)V

    .line 157
    invoke-virtual {v0, v1}, Lo/LegacyFaceDetectMapper;->e(I)V

    return-object v0

    :catchall_0
    move-exception p2

    .line 152
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p2
.end method

.method static synthetic c(Lo/WifiDisplay;)Lo/AssetFileDescriptor;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/WifiDisplay;->c:Lo/AssetFileDescriptor;

    return-object p0
.end method

.method static synthetic d(Lo/WifiDisplay;Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/LegacyFaceDetectMapper;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lo/WifiDisplay;->b(Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/LegacyFaceDetectMapper;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/media/ExifInterface;)I
    .locals 1

    const-string v0, "Orientation"

    .line 164
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 163
    invoke-static {p1}, Lo/Announcement;->e(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 8
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

    .line 84
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v3

    .line 85
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 88
    new-instance v7, Lo/WifiDisplay$2;

    const-string v4, "LocalExifThumbnailProducer"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lo/WifiDisplay$2;-><init>(Lo/WifiDisplay;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 114
    new-instance p1, Lo/WifiDisplay$4;

    invoke-direct {p1, p0, v7}, Lo/WifiDisplay$4;-><init>(Lo/WifiDisplay;Lo/ActivityRecognitionEvent;)V

    invoke-interface {p2, p1}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    .line 121
    iget-object p1, p0, Lo/WifiDisplay;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method e(Landroid/net/Uri;)Landroid/media/ExifInterface;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/WifiDisplay;->e:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lo/ResourcesKey;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 127
    :try_start_0
    invoke-virtual {p0, p1}, Lo/WifiDisplay;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    :catch_0
    const-class p1, Lo/WifiDisplay;

    const-string v0, "StackOverflowError in ExifInterface constructor"

    invoke-static {p1, v0}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lo/CameraConstrainedHighSpeedCaptureSession;)Z
    .locals 1

    const/16 v0, 0x200

    .line 73
    invoke-static {v0, v0, p1}, Lo/ContextHubClientCallback;->a(IILo/CameraConstrainedHighSpeedCaptureSession;)Z

    move-result p1

    return p1
.end method
