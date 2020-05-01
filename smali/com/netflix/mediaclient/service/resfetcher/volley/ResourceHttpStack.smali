.class public Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "ResourceHttpStack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_resourcefetcher"


# instance fields
.field private mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->setConfiguration(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->setConfiguration(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->setConfiguration(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    return-void
.end method

.method private setConfiguration(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Config can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/net/HttpURLConnectionUtils;->createHttpURLConnection(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->setHttpURLConnection(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
