.class Lo/pd;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lo/BJ;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BJ;",
            ")",
            "Ljava/util/List<",
            "Lo/oV;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lo/BJ;->c()Ljava/util/List;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cc;

    .line 22
    new-instance v2, Lo/oV;

    invoke-direct {v2, v1}, Lo/oV;-><init>(Lo/Cc;)V

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/util/List;Lo/BJ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/oV;",
            ">;",
            "Lo/BJ;",
            ")V"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/oV;

    .line 32
    invoke-virtual {v1}, Lo/oV;->Z()Lo/Cc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lo/BJ;->e(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "OfflineRegistryRoomHelper.save"

    invoke-interface {p1, v0, p0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance p1, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lo/Cc;
    .locals 3

    .line 44
    new-instance v0, Lo/Cc;

    invoke-direct {v0}, Lo/Cc;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->c:Ljava/lang/String;

    iput-object v1, v0, Lo/Cc;->e:Ljava/lang/String;

    .line 46
    iput p4, v0, Lo/Cc;->d:I

    .line 47
    iget-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result p4

    iput p4, v0, Lo/Cc;->a:I

    .line 48
    iget-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p4

    iput p4, v0, Lo/Cc;->k:I

    .line 49
    iget-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c()I

    move-result p4

    iput p4, v0, Lo/Cc;->r:I

    .line 50
    iget-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListPos()I

    move-result p4

    iput p4, v0, Lo/Cc;->p:I

    .line 51
    iget-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {p4}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lo/Cc;->t:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/Cc;->q:J

    .line 53
    iput-object p1, v0, Lo/Cc;->s:Ljava/lang/String;

    .line 54
    iput-object p2, v0, Lo/Cc;->m:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->b:Ljava/lang/String;

    iput-object p1, v0, Lo/Cc;->b:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/Cc;->v:Ljava/lang/String;

    .line 57
    iput-object p3, v0, Lo/Cc;->c:Ljava/lang/String;

    .line 58
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, p0}, Lo/Cc;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 59
    invoke-virtual {v0}, Lo/Cc;->l()V

    .line 60
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lo/Cc;->j:Ljava/util/List;

    .line 61
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lo/Cc;->h:Ljava/util/List;

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lo/Cc;->i:Ljava/util/List;

    .line 63
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lo/Cc;->f:Ljava/util/List;

    return-object v0
.end method
