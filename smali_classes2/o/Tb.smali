.class public Lo/Tb;
.super Lo/Tf;
.source ""


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Tf;Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Lo/Tf;->i()Lo/BY;

    move-result-object v0

    invoke-virtual {p1}, Lo/Tf;->an()Lo/Bi;

    move-result-object v1

    invoke-virtual {p1}, Lo/Tf;->aq()Lo/BY;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lo/Tf;-><init>(Lo/BY;Lo/Bi;Lo/BY;)V

    .line 21
    iput-object p2, p0, Lo/Tb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 35
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Tb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    .locals 1

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    return-object v0
.end method
