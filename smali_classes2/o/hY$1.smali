.class Lo/hY$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->a(Ljava/lang/String;IIZLo/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lo/ci;

.field final synthetic e:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;IIZLo/ci;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lo/hY$1;->e:Lo/hY;

    iput p2, p0, Lo/hY$1;->c:I

    iput p3, p0, Lo/hY$1;->a:I

    iput-boolean p4, p0, Lo/hY$1;->b:Z

    iput-object p5, p0, Lo/hY$1;->d:Lo/ci;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1359
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 1362
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    iget v3, p0, Lo/hY$1;->c:I

    if-ne v0, v3, :cond_1

    .line 1369
    iget-object p1, p0, Lo/hY$1;->e:Lo/hY;

    invoke-static {p1}, Lo/hY;->j(Lo/hY;)Lo/MetadataReader;

    move-result-object v4

    const/4 v6, 0x0

    iget p1, p0, Lo/hY$1;->a:I

    add-int/lit8 v7, p1, -0x1

    iget-boolean v8, p0, Lo/hY$1;->b:Z

    const/4 v9, 0x1

    iget-object v10, p0, Lo/hY$1;->d:Lo/ci;

    invoke-virtual/range {v4 .. v10}, Lo/MetadataReader;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1377
    iget-object p1, p0, Lo/hY$1;->d:Lo/ci;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-void
.end method
