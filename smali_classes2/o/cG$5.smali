.class Lo/cG$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dc$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG;->aN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/cG;

.field final synthetic d:J

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/cG;JZ)V
    .locals 0

    .line 431
    iput-object p1, p0, Lo/cG$5;->b:Lo/cG;

    iput-wide p2, p0, Lo/cG$5;->d:J

    iput-boolean p4, p0, Lo/cG$5;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "nf_configurationagent"

    const-string v1, "::init: drmResoureReclaimed:: NOOP"

    .line 492
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 4

    .line 438
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    invoke-static {v0}, Lo/cG;->c(Lo/cG;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    .line 439
    iget-object v1, p0, Lo/cG$5;->b:Lo/cG;

    invoke-static {v1}, Lo/cG;->c(Lo/cG;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/cG$5;->b:Lo/cG;

    invoke-static {v2}, Lo/cG;->e(Lo/cG;)Lo/ds;

    move-result-object v2

    invoke-static {v1, v2}, Lo/adU;->c(Landroid/content/Context;Lo/ds;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v2, p0, Lo/cG$5;->b:Lo/cG;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lo/cG;->e(Lo/cG;Z)Z

    .line 443
    iget-object v2, p0, Lo/cG$5;->b:Lo/cG;

    invoke-virtual {v2}, Lo/cG;->ap()V

    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/cG$5;->b:Lo/cG;

    invoke-static {v1}, Lo/cG;->e(Lo/cG;)Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_drm_esn"

    invoke-static {v0, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    sget-object v1, Lo/LegacyErrorStrings;->r:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lo/cG;->e(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lo/cG;->b(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 460
    :cond_2
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    invoke-virtual {v0}, Lo/cG;->H()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 465
    :cond_3
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->X()Z

    move-result v0

    if-nez v0, :cond_4

    .line 466
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    const/4 v1, 0x0

    new-instance v2, Lo/cG$5$1;

    invoke-direct {v2, p0}, Lo/cG$5$1;-><init>(Lo/cG$5;)V

    invoke-virtual {v0, v1, v2}, Lo/cG;->b(Lo/zX;Lo/cJ;)V

    :cond_4
    return-void

    .line 461
    :cond_5
    :goto_0
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-boolean v2, p0, Lo/cG$5;->e:Z

    invoke-static {v0, v1, v2}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lo/cG$5;->b:Lo/cG;

    iget-boolean v1, p0, Lo/cG$5;->e:Z

    invoke-static {v0, p1, v1}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method
