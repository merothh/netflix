.class public final Lo/da;
.super Lo/db;
.source ""


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lo/db;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    const-string p1, "nf_net"

    const-string p2, "Google platform Widevine provisioning V2 request"

    .line 17
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()Lorg/chromium/net/UrlRequest;
    .locals 5

    .line 31
    invoke-virtual {p0}, Lo/da;->d()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 33
    new-instance v1, Lo/db$TaskDescription;

    invoke-direct {v1, p0}, Lo/db$TaskDescription;-><init>(Lo/db;)V

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/da;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&signedRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lo/da;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v1, Lo/db$TaskDescription;->a:J

    .line 44
    iget-object v3, p0, Lo/da;->d:Lorg/chromium/net/CronetEngine;

    invoke-virtual {v3, v2, v1, v0}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    const-string v1, "POST"

    .line 46
    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    const-string v1, "Accept"

    const-string v2, "*/*"

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    const-string v1, "User-Agent"

    const-string v2, "Widevine CDM v1.0"

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 51
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)[B
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/da;->c()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/da;->b([Ljava/lang/Void;)[B

    move-result-object p1

    return-object p1
.end method
