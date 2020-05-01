.class public abstract Lorg/chromium/net/CronetEngine;
.super Ljava/lang/Object;
.source "CronetEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/net/CronetEngine$Builder;)Lorg/chromium/net/CronetEngine;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lorg/chromium/net/CronetEngine;->createCronetEngine(Lorg/chromium/net/CronetEngine$Builder;)Lorg/chromium/net/CronetEngine;

    move-result-object v0

    return-object v0
.end method

.method private static createCronetEngine(Lorg/chromium/net/CronetEngine$Builder;)Lorg/chromium/net/CronetEngine;
    .locals 5

    .prologue
    .line 1113
    const/4 v1, 0x0

    .line 1115
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "org.chromium.net.impl.CronetUrlRequestContext"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/chromium/net/CronetEngine;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1120
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/chromium/net/CronetEngine$Builder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1122
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/CronetEngine;

    .line 1123
    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    :goto_0
    return-object v0

    .line 1126
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1130
    goto :goto_0

    .line 1128
    :catch_1
    move-exception v0

    .line 1129
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot instantiate: org.chromium.net.impl.CronetUrlRequestContext"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract getVersionString()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
.end method

.method public abstract startNetLogToFile(Ljava/lang/String;Z)V
.end method

.method public abstract stopNetLog()V
.end method
