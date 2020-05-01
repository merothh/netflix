.class Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;
.super Ljava/net/URLStreamHandler;
.source ""


# instance fields
.field private final mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ExperimentalCronetEngine;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;->mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;

    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;->mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0, p1}, Lorg/chromium/net/ExperimentalCronetEngine;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;->mCronetEngine:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/ExperimentalCronetEngine;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
