.class public Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    }
.end annotation


# instance fields
.field public final a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public final e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field private final h:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 6

    .line 64
    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->d:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->c:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 85
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 86
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->b:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 88
    invoke-static {}, Lo/adZ;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->j:Ljava/lang/String;

    .line 89
    invoke-static {}, Lo/adZ;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->j:Ljava/lang/String;

    return-object v0
.end method
