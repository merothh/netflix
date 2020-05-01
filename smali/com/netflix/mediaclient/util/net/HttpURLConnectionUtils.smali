.class public final Lcom/netflix/mediaclient/util/net/HttpURLConnectionUtils;
.super Ljava/lang/Object;
.source "HttpURLConnectionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_net_cronet"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static createHttpURLConnection(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 28
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldUseAndroidHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :cond_0
    const-string/jumbo v0, "nf_net_cronet"

    const-string/jumbo v1, "Create HttpURLConnection using Cronet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    check-cast p0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->getInstance(Landroid/content/Context;)Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
