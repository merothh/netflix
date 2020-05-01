.class Lo/nQ$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 232
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->i(Lo/nQ;)V

    return-void
.end method

.method public a(Lo/ov;)V
    .locals 4

    .line 217
    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "nf_offlineAgent"

    const-string v3, "onDownloadCompletedSuccess playableId=%s"

    .line 218
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    iget-object v1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object v1

    invoke-interface {p1}, Lo/ov;->e()Lo/oC;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Lo/oC;)V

    .line 220
    iget-object v1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-virtual {v1, p1}, Lo/nQ;->b(Lo/Bi;)V

    .line 221
    iget-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/nI;->c(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->d(Lo/nQ;)V

    return-void
.end method

.method public a(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 251
    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "nf_offlineAgent"

    const-string v2, "onUnRecoverableError playableId=%s status=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v0, p1}, Lo/nQ;->c(Lo/nQ;Lo/ov;)V

    .line 253
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object v0

    invoke-interface {p1}, Lo/ov;->e()Lo/oC;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Lo/oC;)V

    .line 254
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object v0

    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/nI;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 255
    iget-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->d(Lo/nQ;)V

    return-void
.end method

.method public b(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "nf_offlineAgent"

    const-string v2, "onStorageError status=%s"

    .line 237
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bo:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 239
    iget-object p2, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p2}, Lo/nQ;->f(Lo/nQ;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->i(Lo/nQ;)V

    .line 241
    iget-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->h(Lo/nQ;)Lo/pa$Activity;

    move-result-object p1

    invoke-interface {p1}, Lo/pa$Activity;->e()V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p2, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p2}, Lo/nQ;->i(Lo/nQ;)V

    .line 244
    iget-object p2, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p2, p1}, Lo/nQ;->c(Lo/nQ;Lo/ov;)V

    .line 245
    iget-object p1, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object p1

    invoke-virtual {p1}, Lo/nI;->k()V

    :goto_0
    return-void
.end method

.method public c(Lo/oC;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->b(Lo/oC;)V

    return-void
.end method

.method public c(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 209
    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string p2, "nf_offlineAgent"

    const-string v0, "onNetworkError playableId=%s status=%s"

    .line 210
    invoke-static {p2, v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-object p2, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p2, p1}, Lo/nQ;->c(Lo/nQ;Lo/ov;)V

    .line 212
    iget-object p2, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p2}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object p2

    invoke-interface {p1}, Lo/ov;->e()Lo/oC;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Lo/oC;)V

    .line 213
    iget-object p2, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {p2}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object p2

    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/nI;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lo/ov;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-interface {p1}, Lo/ov;->p()I

    move-result v1

    invoke-static {v0, p1, v1}, Lo/nQ;->c(Lo/nQ;Lo/Bi;I)V

    return-void
.end method

.method public e(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 199
    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "nf_offlineAgent"

    const-string v2, "onInitialized playableId=%s status=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->c(Lo/nQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lo/nQ$11;->b:Lo/nQ;

    invoke-interface {p1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lo/nQ;->a(Lo/nQ;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "onInitialized no longer available"

    .line 203
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
