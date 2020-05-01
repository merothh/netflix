.class public Lo/WifiDisplaySessionInfo;
.super Lo/Fingerprint;
.source ""


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x1


# instance fields
.field private final e:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/res/AssetManager;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lo/Fingerprint;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;)V

    .line 32
    iput-object p3, p0, Lo/WifiDisplaySessionInfo;->e:Landroid/content/res/AssetManager;

    return-void
.end method

.method private static a(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 3

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lo/WifiDisplaySessionInfo;->e:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lo/WifiDisplaySessionInfo;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v1

    .line 52
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :catch_1
    :cond_0
    throw p1

    :catch_2
    const/4 p1, -0x1

    if-eqz v0, :cond_1

    .line 52
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_1
    return p1
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalAssetFetchProducer"

    return-object v0
.end method

.method protected e(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/LegacyFaceDetectMapper;
    .locals 10

    sget v0, Lo/WifiDisplaySessionInfo;->b:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lo/WifiDisplaySessionInfo;->a:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    const-string v5, "d"

    const/16 v6, 0x11

    const/16 v7, 0x7db6

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lo/WifiDisplaySessionInfo;->e:Landroid/content/res/AssetManager;

    .line 38
    invoke-static {p1}, Lo/WifiDisplaySessionInfo;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v0, v9, v3

    invoke-static {v7, v6, v3}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v1, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_1
    invoke-direct {p0, p1}, Lo/WifiDisplaySessionInfo;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result p1

    .line 37
    invoke-virtual {p0, v0, p1}, Lo/WifiDisplaySessionInfo;->d(Ljava/io/InputStream;I)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p1

    .line 37
    :cond_2
    iget-object v0, p0, Lo/WifiDisplaySessionInfo;->e:Landroid/content/res/AssetManager;

    .line 38
    invoke-static {p1}, Lo/WifiDisplaySessionInfo;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v8

    :try_start_1
    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v0, v9, v3

    invoke-static {v7, v6, v3}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v1, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p1
.end method
