.class public Lo/Cc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:J

.field public B:Ljava/lang/String;

.field public C:J

.field public D:Z

.field public E:J

.field public F:Z

.field public G:Z

.field public H:J

.field public I:J

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field private O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private P:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private Q:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private R:Lcom/netflix/mediaclient/android/app/Status;

.field public S:Z

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Z

.field public p:I

.field public q:J

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Ljava/lang/String;

.field public w:J

.field public x:Ljava/lang/String;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lo/Cc;->Q:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 219
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a()I

    move-result p1

    iput p1, p0, Lo/Cc;->l:I

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V
    .locals 2

    .line 212
    iput-object p1, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 213
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b()I

    move-result p1

    iput p1, p0, Lo/Cc;->g:I

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Cc;->w:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 184
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lo/Cc;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 185
    invoke-virtual {p0}, Lo/Cc;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lo/Cc;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 129
    iget-object v0, p0, Lo/Cc;->R:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 115
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    iput v0, p0, Lo/Cc;->u:I

    .line 116
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Cc;->x:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lo/Cc;->R:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method public d()V
    .locals 1

    .line 189
    iget-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iput-object v0, p0, Lo/Cc;->P:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 190
    iget-object v0, p0, Lo/Cc;->P:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b()I

    move-result v0

    iput v0, p0, Lo/Cc;->n:I

    .line 191
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lo/Cc;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .line 199
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lo/Cc;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 200
    invoke-direct {p0, p1}, Lo/Cc;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lo/Cc;->u:I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lo/Cc;->x:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lo/Cc;->R:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lo/Cc;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lo/Cc;->o:Z

    return-void
.end method

.method public f()V
    .locals 1

    .line 195
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lo/Cc;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 204
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lo/Cc;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    return-void
.end method

.method public h()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lo/Cc;->w:J

    return-wide v0
.end method

.method public i()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 247
    iget-object v0, p0, Lo/Cc;->P:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v0, :cond_0

    .line 248
    iget v0, p0, Lo/Cc;->n:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    iput-object v0, p0, Lo/Cc;->P:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 250
    :cond_0
    iget-object v0, p0, Lo/Cc;->P:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 2

    .line 227
    iget-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v0, :cond_0

    .line 228
    iget v0, p0, Lo/Cc;->g:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    iput-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 229
    iget-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lo/Cc;->Q:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-nez v0, :cond_0

    .line 231
    iget v0, p0, Lo/Cc;->l:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    iput-object v0, p0, Lo/Cc;->Q:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 235
    :cond_0
    iget-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/Cc;->B:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iput-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 242
    :cond_1
    iget-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 261
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iput-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 262
    iget-object v0, p0, Lo/Cc;->O:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b()I

    move-result v0

    iput v0, p0, Lo/Cc;->g:I

    return-void
.end method

.method public m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 2

    .line 254
    invoke-virtual {p0}, Lo/Cc;->j()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/Cc;->Q:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eqz v0, :cond_0

    return-object v0

    .line 257
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method
