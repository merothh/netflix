.class Lo/bM$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bV$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lo/bM$8;->d:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .line 1497
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->e(Lo/bM;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object v0

    return-object v0
.end method

.method public b()Lo/cz;
    .locals 1

    .line 1502
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->t(Lo/bM;)Lo/cG;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1492
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-virtual {v0}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/ye;
    .locals 1

    .line 1512
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->q(Lo/bM;)Lo/ye;

    move-result-object v0

    return-object v0
.end method

.method public e()Lo/cc;
    .locals 1

    .line 1507
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->f(Lo/bM;)Lo/cd;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .line 1527
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->h(Lo/bM;)Lo/jb;

    move-result-object v0

    return-object v0
.end method

.method public g()Lo/zF;
    .locals 1

    .line 1522
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->b(Lo/bM;)Lo/hL;

    move-result-object v0

    return-object v0
.end method

.method public h()Lo/xR;
    .locals 1

    .line 1517
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->i(Lo/bM;)Lo/xP;

    move-result-object v0

    return-object v0
.end method

.method public i()Lo/nS;
    .locals 1

    .line 1537
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->m(Lo/bM;)Lo/nQ;

    move-result-object v0

    return-object v0
.end method

.method public j()Lo/zE;
    .locals 1

    .line 1532
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->o(Lo/bM;)Lo/mw;

    move-result-object v0

    return-object v0
.end method

.method public k()Lo/Ac;
    .locals 1

    .line 1557
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    return-object v0
.end method

.method public l()Lo/SmartSelectSprite;
    .locals 1

    .line 1552
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    return-object v0
.end method

.method public m()Lo/Ar;
    .locals 1

    .line 1547
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->o(Lo/bM;)Lo/mw;

    move-result-object v0

    return-object v0
.end method

.method public n()Lo/pq;
    .locals 1

    .line 1542
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-static {v0}, Lo/bM;->m(Lo/bM;)Lo/nQ;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .line 1562
    iget-object v0, p0, Lo/bM$8;->d:Lo/bM;

    invoke-virtual {v0}, Lo/bM;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public synthetic t()Lo/xZ;
    .locals 1

    .line 1488
    invoke-virtual {p0}, Lo/bM$8;->d()Lo/ye;

    move-result-object v0

    return-object v0
.end method
