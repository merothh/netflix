.class Lo/hO$2;
.super Lo/zn;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hO;->a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zn<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/hO;


# direct methods
.method constructor <init>(Lo/hO;Landroid/content/Context;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/hO$2;->d:Lo/hO;

    invoke-direct {p0, p2}, Lo/zn;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->g()Z

    move-result v0

    return v0
.end method

.method protected M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected P()Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    iget-object v2, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v2}, Lo/hO;->f()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    .line 172
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 175
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v4, 0x26

    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 180
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected S()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->d()Z

    move-result v0

    return v0
.end method

.method protected U()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0}, Lo/hO;->e()Z

    move-result v0

    return v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0, p1, p2}, Lo/hO;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0, p1}, Lo/hO;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/hO$2;->d:Lo/hO;

    invoke-virtual {v0, p1}, Lo/hO;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
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

    .line 209
    invoke-super {p0}, Lo/zn;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    :cond_0
    sget-object v1, Lo/zn;->f:Ljava/lang/String;

    const-string v2, "X-Netflix.Request.Routing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lo/hO$2;->d:Lo/hO;

    invoke-static {v1}, Lo/hO;->b(Lo/hO;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.NqTracking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lo/zs;->b:Lo/zs;

    .line 219
    invoke-virtual {v1}, Lo/zs;->d()Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.Client.Context"

    .line 217
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 196
    invoke-super {p0}, Lo/zn;->u()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "falcor_server"

    const-string v2, "0.1.0"

    .line 202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
