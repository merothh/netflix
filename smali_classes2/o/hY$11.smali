.class Lo/hY$11;
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
.field final synthetic c:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lo/hY$11;->c:Lo/hY;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2, p3}, Lo/cq;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 389
    invoke-interface {p1}, Lo/Bs;->getResultsVideoEntities()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "FalkorAgent"

    const-string p3, "HOME_TTR_DONE: PreQuery Search Results Fetched: %s"

    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
