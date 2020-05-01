.class Lo/rb$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rb;->a(Lo/Ae;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/rb;

.field final synthetic e:Lo/Ae;


# direct methods
.method constructor <init>(Lo/rb;Lo/Ae;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lo/rb$9;->c:Lo/rb;

    iput-object p2, p0, Lo/rb$9;->e:Lo/Ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 665
    iget-object v0, p0, Lo/rb$9;->e:Lo/Ae;

    iget-wide v0, v0, Lo/Ae;->e:J

    .line 666
    iget-object v2, p0, Lo/rb$9;->e:Lo/Ae;

    iget-object v2, v2, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 667
    iget-object v3, p0, Lo/rb$9;->c:Lo/rb;

    iget-object v3, v3, Lo/rb;->o:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "NfDrmManager_MediaDrmController"

    if-eqz v3, :cond_0

    new-array v3, v6, [Ljava/lang/Object;

    .line 668
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    const-string v0, "movieId=%d priority=%d already cached"

    invoke-static {v7, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 670
    :cond_0
    iget-object v3, p0, Lo/rb$9;->e:Lo/Ae;

    iget-object v3, v3, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->e()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lo/rb$9;->e:Lo/Ae;

    iget-object v3, v3, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/rb$9;->c:Lo/rb;

    iget-boolean v3, v3, Lo/rb;->j:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-array v3, v6, [Ljava/lang/Object;

    .line 674
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object v2, v3, v4

    const-string v4, "movieId=%d priority=%d request manifest"

    invoke-static {v7, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 675
    iget-object v3, p0, Lo/rb$9;->c:Lo/rb;

    invoke-static {v3}, Lo/rb;->b(Lo/rb;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v2, p0, Lo/rb$9;->c:Lo/rb;

    iget-object v2, v2, Lo/rb;->c:Lo/rk;

    invoke-virtual {v2}, Lo/rk;->g()Lo/sD;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lo/rb$9;->e:Lo/Ae;

    invoke-static {v1}, Lo/xx;->d(Lo/Ae;)Lo/xx;

    move-result-object v1

    iget-object v3, p0, Lo/rb$9;->c:Lo/rb;

    invoke-interface {v2, v0, v1, v3}, Lo/sD;->c(Ljava/lang/Long;Lo/xx;Lo/sD$ActionBar;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    const-string v0, "movieId=%d priority=%d skip"

    invoke-static {v7, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method
