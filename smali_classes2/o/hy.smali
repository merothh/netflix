.class public Lo/hy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Landroid/content/Context;

.field private e:Lo/cz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/hy;->c:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lo/hy;->e:Lo/cz;

    return-void
.end method


# virtual methods
.method public c(Lo/zX;Ljava/util/List;Lo/cJ;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zX;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cJ;",
            ")",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Lo/hx;

    iget-object v1, p0, Lo/hy;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lo/hx;-><init>(Landroid/content/Context;Ljava/util/List;Lo/cJ;)V

    .line 38
    invoke-virtual {v0, p1}, Lo/hx;->c(Lo/zX;)V

    return-object v0

    .line 41
    :cond_0
    new-instance p1, Lo/hB;

    iget-object v3, p0, Lo/hy;->c:Landroid/content/Context;

    iget-object v4, p0, Lo/hy;->e:Lo/cz;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lo/hB;-><init>(Landroid/content/Context;Lo/cz;Ljava/util/List;ZLo/cJ;)V

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 14

    move-object v0, p0

    .line 56
    iget-object v1, v0, Lo/hy;->e:Lo/cz;

    invoke-interface {v1}, Lo/cz;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lo/hH;

    iget-object v3, v0, Lo/hy;->c:Landroid/content/Context;

    iget-object v4, v0, Lo/hy;->e:Lo/cz;

    move-object v2, v1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lo/hH;-><init>(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)V

    return-object v1

    .line 59
    :cond_0
    new-instance v1, Lo/hG;

    iget-object v6, v0, Lo/hy;->c:Landroid/content/Context;

    iget-object v7, v0, Lo/hy;->e:Lo/cz;

    move-object v5, v1

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v5 .. v13}, Lo/hG;-><init>(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)V

    return-object v1
.end method

.method public d(Ljava/lang/String;Lo/zc;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 2

    .line 73
    iget-object v0, p0, Lo/hy;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lo/hJ;

    invoke-direct {v0, p1, p2}, Lo/hJ;-><init>(Ljava/lang/String;Lo/zc;)V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lo/hI;

    iget-object v1, p0, Lo/hy;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lo/hI;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/zc;)V

    return-object v0
.end method

.method public e(Ljava/util/List;Lo/cV;Z)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cV;",
            "Z)",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/hy;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lo/hA;

    invoke-direct {v0, p1, p3, p2}, Lo/hA;-><init>(Ljava/util/List;ZLo/cV;)V

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lo/hC;

    iget-object v2, p0, Lo/hy;->c:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/hC;-><init>(Landroid/content/Context;Ljava/util/List;ZZLo/cV;)V

    return-object v0
.end method

.method public e(ZLo/cJ;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Lo/hE;

    invoke-direct {p1, p2}, Lo/hE;-><init>(Lo/cJ;)V

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lo/hD;

    iget-object v0, p0, Lo/hy;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lo/hD;-><init>(Landroid/content/Context;Lo/cJ;)V

    return-object p1
.end method
