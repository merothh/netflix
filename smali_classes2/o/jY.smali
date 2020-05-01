.class public Lo/jY;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Lo/jX;

.field private c:I

.field private d:Lo/iS;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lo/sx;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/iS;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "startDownload"

    .line 41
    iput-object v0, p0, Lo/jY;->k:Ljava/lang/String;

    const-string v0, "pauseDownload"

    .line 42
    iput-object v0, p0, Lo/jY;->l:Ljava/lang/String;

    const-string v0, "resumeDownload"

    .line 43
    iput-object v0, p0, Lo/jY;->m:Ljava/lang/String;

    const-string v0, "completeDownload"

    .line 44
    iput-object v0, p0, Lo/jY;->o:Ljava/lang/String;

    const-string v0, "cancelDownload"

    .line 45
    iput-object v0, p0, Lo/jY;->n:Ljava/lang/String;

    const-string v0, "reportProgress"

    .line 46
    iput-object v0, p0, Lo/jY;->q:Ljava/lang/String;

    const-string v0, "stopDownloadDueToError"

    .line 47
    iput-object v0, p0, Lo/jY;->r:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lo/jY;->e:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lo/jY;->g:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lo/jY;->i:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lo/jY;->h:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lo/jY;->f:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lo/jY;->d:Lo/iS;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lo/jY;->j:Lo/sx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_pds_download"

    const-string v2, "sending pds download event: %s"

    .line 167
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    iget-object v0, p0, Lo/jY;->j:Lo/sx;

    invoke-direct {p0, v0, p1}, Lo/jY;->c(Lo/sx;Ljava/lang/String;)Lo/jW;

    move-result-object p1

    invoke-virtual {p1}, Lo/jW;->d()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lo/jY;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lo/sx;Ljava/lang/String;)Lo/jW;
    .locals 3

    .line 177
    new-instance v0, Lo/jW;

    iget-object v1, p0, Lo/jY;->h:Ljava/lang/String;

    iget-object v2, p0, Lo/jY;->f:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lo/jW;-><init>(Lo/sx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lo/jY;->a:I

    .line 178
    invoke-virtual {v0, p1}, Lo/jW;->e(I)Lo/jW;

    move-result-object p1

    iget-object p2, p0, Lo/jY;->b:Lo/jX;

    .line 179
    invoke-virtual {p1, p2}, Lo/jW;->d(Lo/jX;)Lo/jW;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 183
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lo/jY;->d:Lo/iS;

    invoke-interface {v0, p1}, Lo/iS;->e(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lo/jY;->d:Lo/iS;

    invoke-interface {p1}, Lo/iS;->d()V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lo/jY;->j:Lo/sx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, v0}, Lo/jY;->d(Z)V

    .line 205
    iget-object v0, p0, Lo/jY;->j:Lo/sx;

    invoke-direct {p0, v0, p1}, Lo/jY;->c(Lo/sx;Ljava/lang/String;)Lo/jW;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p2, p3}, Lo/jW;->e(Ljava/lang/String;Ljava/lang/String;)Lo/jW;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lo/jW;->d()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-direct {p0, p1}, Lo/jY;->d(Ljava/lang/String;)V

    return-void
.end method

.method private h()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lo/jY;->j:Lo/sx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()Z
    .locals 4

    .line 190
    iget v0, p0, Lo/jY;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lo/jY;->c:I

    const/16 v3, 0x1e

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    iget v0, p0, Lo/jY;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "nf_pds_download"

    const-string v3, "rate limited progress message percentage: %d, lastNotifiedProgressPercentage: %d, interval: %d"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 192
    :cond_1
    :goto_0
    iget v0, p0, Lo/jY;->a:I

    iput v0, p0, Lo/jY;->c:I

    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/jY;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/jY;->r:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lo/jY;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/jY;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/jY;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/jY;->r:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lo/jY;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/jY;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/jY;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lo/jY;->j:Lo/sx;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iput p1, p0, Lo/jY;->a:I

    .line 107
    invoke-direct {p0}, Lo/jY;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lo/jY;->j:Lo/sx;

    iget-object v0, p0, Lo/jY;->q:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/jY;->c(Lo/sx;Ljava/lang/String;)Lo/jW;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lo/jW;->d()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Lo/jY;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/jY;->r:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lo/jY;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lo/jY;->t:Z

    return-void
.end method

.method public d(Lo/sA;)Lo/jY;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lo/sA;->a()Lo/sx;

    move-result-object p1

    iput-object p1, p0, Lo/jY;->j:Lo/sx;

    return-object p0
.end method

.method public d()V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/jY;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/jY;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lo/jY;->s:Z

    return-void
.end method

.method public e(Lo/jX;)Lo/jY;
    .locals 0

    .line 81
    iput-object p1, p0, Lo/jY;->b:Lo/jX;

    return-object p0
.end method

.method public e()V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/jY;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/jY;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/jY;->n:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lo/jY;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 156
    invoke-direct {p0}, Lo/jY;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/jY;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lo/jY;->t:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lo/jY;->s:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdsDownloadSession{mPdsLogging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/jY;->d:Lo/iS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastNotifiedProgressPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/jY;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/jY;->b:Lo/jX;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/jY;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOxId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/jY;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDxId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/jY;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAppSessionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/jY;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUserSessionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/jY;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLinkEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/jY;->j:Lo/sx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isManifestFetchInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/jY;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/jY;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
