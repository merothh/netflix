.class Lo/hY$10;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lo/hY$10;->e:Lo/hY;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Bv;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 379
    invoke-super {p0, p1, p2}, Lo/cq;->l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 381
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "FalkorAgent"

    const-string v0, "HOME_TTR_DONE: PreQuery Search v3 Results Fetched: %s"

    .line 380
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
