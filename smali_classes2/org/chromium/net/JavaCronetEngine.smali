.class final Lorg/chromium/net/JavaCronetEngine;
.super Lorg/chromium/net/CronetEngine;
.source "JavaCronetEngine.java"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/chromium/net/CronetEngine;-><init>()V

    .line 32
    new-instance v0, Lorg/chromium/net/JavaCronetEngine$1;

    invoke-direct {v0, p0}, Lorg/chromium/net/JavaCronetEngine$1;-><init>(Lorg/chromium/net/JavaCronetEngine;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/JavaCronetEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    iput-object p1, p0, Lorg/chromium/net/JavaCronetEngine;->mUserAgent:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CronetHttpURLConnection/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/chromium/net/ApiVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public startNetLogToFile(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public stopNetLog()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
