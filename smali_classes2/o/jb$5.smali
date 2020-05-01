.class Lo/jb$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/jb;


# direct methods
.method constructor <init>(Lo/jb;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lo/jb$5;->e:Lo/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "nf_log"

    const-string v1, "Running state check..."

    .line 377
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lo/jb$5;->e:Lo/jb;

    invoke-static {v1}, Lo/jb;->f(Lo/jb;)Lo/iI;

    move-result-object v1

    invoke-interface {v1}, Lo/iI;->m()V

    .line 379
    iget-object v1, p0, Lo/jb$5;->e:Lo/jb;

    invoke-static {v1}, Lo/jb;->h(Lo/jb;)Lo/iA;

    move-result-object v1

    invoke-virtual {v1}, Lo/iA;->e()V

    .line 380
    iget-object v1, p0, Lo/jb$5;->e:Lo/jb;

    invoke-static {v1}, Lo/jb;->g(Lo/jb;)Lo/iF;

    move-result-object v1

    invoke-virtual {v1}, Lo/iF;->b()V

    .line 381
    iget-object v1, p0, Lo/jb$5;->e:Lo/jb;

    invoke-static {v1}, Lo/jb;->j(Lo/jb;)Lo/iG;

    move-result-object v1

    invoke-virtual {v1}, Lo/iG;->b()V

    .line 382
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v1

    invoke-interface {v1}, Lo/Plugin;->a()V

    const-string v1, "Running state check done."

    .line 383
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
