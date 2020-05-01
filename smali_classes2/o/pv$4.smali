.class Lo/pv$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/pv;


# direct methods
.method constructor <init>(Lo/pv;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lo/pv$4;->b:Lo/pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/rh;
    .locals 8

    .line 374
    new-instance v7, Lo/ro;

    iget-object v0, p0, Lo/pv$4;->b:Lo/pv;

    invoke-static {v0}, Lo/pv;->c(Lo/pv;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lo/pv$4;->b:Lo/pv;

    invoke-static {v0}, Lo/pv;->d(Lo/pv;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lo/pv$4;->b:Lo/pv;

    invoke-static {v0}, Lo/pv;->e(Lo/pv;)Lo/pM;

    move-result-object v3

    iget-object v0, p0, Lo/pv$4;->b:Lo/pv;

    invoke-static {v0}, Lo/pv;->b(Lo/pv;)Lo/pq;

    move-result-object v4

    iget-object v0, p0, Lo/pv$4;->b:Lo/pv;

    invoke-static {v0}, Lo/pv;->j(Lo/pv;)Lo/pB;

    move-result-object v0

    invoke-virtual {v0}, Lo/pB;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->d()Lo/iU;

    move-result-object v5

    iget-object v0, p0, Lo/pv$4;->b:Lo/pv;

    invoke-static {v0}, Lo/pv;->g(Lo/pv;)Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/ro;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/pP;Lo/pq;Lo/iU;Lo/ds;)V

    return-object v7
.end method

.method public synthetic c()Lo/ri;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lo/pv$4;->b()Lo/rh;

    move-result-object v0

    return-object v0
.end method
