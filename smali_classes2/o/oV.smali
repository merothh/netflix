.class public Lo/oV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oC;


# instance fields
.field private final d:Lo/Cc;


# direct methods
.method constructor <init>(Lo/Cc;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/oV;->d:Lo/Cc;

    return-void
.end method

.method private f(Ljava/lang/String;)Lo/sx;
    .locals 2

    .line 393
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lo/sx;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sx;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->j:Ljava/util/List;

    return-object v0
.end method

.method public B()Lo/sx;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->L:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/oV;->f(Ljava/lang/String;)Lo/sx;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->B:Ljava/lang/String;

    return-object v0
.end method

.method public D()Lo/sx;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->J:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/oV;->f(Ljava/lang/String;)Lo/sx;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->f:Ljava/util/List;

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->i:Ljava/util/List;

    return-object v0
.end method

.method public G()V
    .locals 5

    .line 304
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v1, v0, Lo/Cc;->E:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lo/Cc;->E:J

    return-void
.end method

.method public H()J
    .locals 2

    .line 298
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->E:J

    return-wide v0
.end method

.method public I()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-boolean v0, v0, Lo/Cc;->D:Z

    return v0
.end method

.method public J()J
    .locals 2

    .line 319
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->y:J

    return-wide v0
.end method

.method public K()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-boolean v0, v0, Lo/Cc;->G:Z

    return v0
.end method

.method public L()J
    .locals 2

    .line 329
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->I:J

    return-wide v0
.end method

.method public M()V
    .locals 3

    .line 309
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lo/Cc;->y:J

    return-void
.end method

.method public N()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-boolean v0, v0, Lo/Cc;->F:Z

    return v0
.end method

.method public O()V
    .locals 3

    .line 344
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/Cc;->y:J

    return-void
.end method

.method public P()J
    .locals 2

    .line 334
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->C:J

    return-wide v0
.end method

.method public Q()J
    .locals 2

    .line 339
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->A:J

    return-wide v0
.end method

.method public R()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-boolean v0, v0, Lo/Cc;->K:Z

    return v0
.end method

.method public S()J
    .locals 2

    .line 354
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->H:J

    return-wide v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public U()I
    .locals 1

    .line 369
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->u:I

    return v0
.end method

.method public V()Lo/sx;
    .locals 1

    .line 364
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->N:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/oV;->f(Ljava/lang/String;)Lo/sx;

    move-result-object v0

    return-object v0
.end method

.method public W()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-boolean v0, v0, Lo/Cc;->S:Z

    return v0
.end method

.method public X()Lo/sx;
    .locals 1

    .line 359
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->M:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/oV;->f(Ljava/lang/String;)Lo/sx;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lo/Cc;
    .locals 1

    .line 397
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .line 173
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-wide p1, v0, Lo/Cc;->C:J

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0, p1}, Lo/Cc;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-object p1, v0, Lo/Cc;->N:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-boolean p1, v0, Lo/Cc;->F:Z

    return-void
.end method

.method public aa()I
    .locals 1

    .line 389
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->d:I

    return v0
.end method

.method public ac()Z
    .locals 7

    .line 126
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->q:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    return v4

    .line 130
    :cond_0
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->l:I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->l:I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 131
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->u:I

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aW:Lcom/netflix/mediaclient/StatusCode;

    .line 132
    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v5, v3, Lo/Cc;->q:J

    sub-long/2addr v0, v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3c

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v0, v5

    if-lez v3, :cond_2

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v5, v3, Lo/Cc;->q:J

    sub-long/2addr v0, v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x16d

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v0, v5

    if-gez v3, :cond_2

    .line 139
    invoke-virtual {p0}, Lo/oV;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-wide p1, v0, Lo/Cc;->A:J

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0, p1}, Lo/Cc;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-object p1, v0, Lo/Cc;->L:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-boolean p1, v0, Lo/Cc;->G:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-wide p1, v0, Lo/Cc;->I:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-object p1, v0, Lo/Cc;->M:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0, p1}, Lo/Cc;->e(Z)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 243
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-wide v0, v0, Lo/Cc;->q:J

    return-wide v0
.end method

.method public d(J)V
    .locals 1

    .line 203
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-wide p1, v0, Lo/Cc;->E:J

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0, p1}, Lo/Cc;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-object p1, v0, Lo/Cc;->J:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-boolean p1, v0, Lo/Cc;->D:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public e(J)V
    .locals 1

    .line 208
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-wide p1, v0, Lo/Cc;->H:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-object p1, v0, Lo/Cc;->B:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 218
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-boolean p1, v0, Lo/Cc;->K:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 258
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->r:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 253
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->k:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 384
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->d:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 263
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->p:I

    return v0
.end method

.method public j(Z)V
    .locals 1

    .line 418
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iput-boolean p1, v0, Lo/Cc;->S:Z

    return-void
.end method

.method public k()I
    .locals 1

    .line 408
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget v0, v0, Lo/Cc;->a:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->v:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->b()V

    return-void
.end method

.method public n()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 1

    .line 38
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->e()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->a()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->d()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->f()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->g()V

    return-void
.end method

.method public t()J
    .locals 2

    .line 89
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-boolean v0, v0, Lo/Cc;->o:Z

    return v0
.end method

.method public v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->j()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    invoke-virtual {v0}, Lo/Cc;->i()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lo/oV;->d:Lo/Cc;

    iget-object v0, v0, Lo/Cc;->h:Ljava/util/List;

    return-object v0
.end method
