.class public Lo/bW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lo/cc;

.field private c:Lo/cz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cc;Lo/cz;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/bW;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lo/bW;->b:Lo/cc;

    .line 28
    iput-object p3, p0, Lo/bW;->c:Lo/cz;

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Lo/cb;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cb;",
            ")",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .line 36
    new-instance v6, Lo/ce;

    iget-object v1, p0, Lo/bW;->a:Landroid/content/Context;

    iget-object v2, p0, Lo/bW;->b:Lo/cc;

    iget-object v3, p0, Lo/bW;->c:Lo/cz;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/ce;-><init>(Landroid/content/Context;Lo/cc;Lo/cz;Ljava/util/List;Lo/cb;)V

    return-object v6
.end method

.method public d(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7

    .line 32
    new-instance v6, Lo/cj;

    iget-object v1, p0, Lo/bW;->a:Landroid/content/Context;

    iget-object v2, p0, Lo/bW;->b:Lo/cc;

    iget-object v3, p0, Lo/bW;->c:Lo/cz;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/cj;-><init>(Landroid/content/Context;Lo/cc;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V

    return-object v6
.end method
