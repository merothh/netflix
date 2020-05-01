.class public final Lo/is$Application;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/is;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/is;


# direct methods
.method constructor <init>(Lo/is;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lo/is$Application;->c:Lo/is;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-super {p0, p1, p2}, Lo/cq;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p2, :cond_1

    .line 190
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/Lq;->b(Landroid/content/Context;)I

    move-result v3

    .line 196
    iget-object p2, p0, Lo/is$Application;->c:Lo/is;

    invoke-static {p2}, Lo/is;->a(Lo/is;)Lo/hW;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p2, Lo/is$Application$Activity;

    invoke-direct {p2, p0}, Lo/is$Application$Activity;-><init>(Lo/is$Application;)V

    move-object v6, p2

    check-cast v6, Lo/ci;

    invoke-interface/range {v0 .. v6}, Lo/hW;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    goto :goto_0

    .line 266
    :cond_1
    sget-object p1, Lo/is;->c:Lo/is$Activity;

    check-cast p1, Lo/MessagePdu;

    :cond_2
    return-void
.end method
