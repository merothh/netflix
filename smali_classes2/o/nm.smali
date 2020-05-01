.class public abstract Lo/nm;
.super Lo/ng;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/ng<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lo/hm;->e:Lo/hm$StateListAnimator;

    invoke-virtual {v0}, Lo/hm$StateListAnimator;->b()Z

    move-result v0

    sput-boolean v0, Lo/nm;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    sget-boolean v0, Lo/nm;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->c:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    :goto_0
    invoke-direct {p0, v0}, Lo/ng;-><init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    return-void
.end method


# virtual methods
.method protected T()Z
    .locals 1

    .line 66
    sget-boolean v0, Lo/nm;->e:Z

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0}, Lo/ng;->T()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract U()Ljava/lang/String;
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->j:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    sget-boolean v0, Lo/nm;->e:Z

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0}, Lo/ng;->q()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    invoke-super {p0}, Lo/ng;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    :cond_1
    sget-object v1, Lo/zn;->f:Ljava/lang/String;

    const-string v2, "X-Netflix.Request.Routing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lo/nm;->U()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.NqTracking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Encoding"

    const-string v2, "msl_v1"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    sget-boolean v0, Lo/nm;->e:Z

    if-nez v0, :cond_0

    .line 36
    invoke-super {p0}, Lo/ng;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-super {p0}, Lo/ng;->u()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v1, "falcor_server"

    const-string v2, "0.1.0"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
