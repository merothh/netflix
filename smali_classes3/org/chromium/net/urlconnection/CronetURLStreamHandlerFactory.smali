.class public Lorg/chromium/net/urlconnection/CronetURLStreamHandlerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ExperimentalCronetEngine;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetURLStreamHandlerFactory;->mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CronetEngine is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    const-string v0, "http"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_1
    :goto_0
    new-instance p1, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;

    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetURLStreamHandlerFactory;->mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-direct {p1, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;-><init>(Lorg/chromium/net/ExperimentalCronetEngine;)V

    return-object p1
.end method
