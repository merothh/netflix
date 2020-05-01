.class Lo/xP$Application$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xP$Application;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/xP$Application;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lo/xP$Application;I)V
    .locals 0

    .line 370
    iput-object p1, p0, Lo/xP$Application$3;->a:Lo/xP$Application;

    iput p2, p0, Lo/xP$Application$3;->c:I

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 373
    invoke-super {p0, p1, p2}, Lo/cq;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 374
    iget-object p1, p0, Lo/xP$Application$3;->a:Lo/xP$Application;

    iget-object p1, p1, Lo/xP$Application;->a:Lo/xP;

    invoke-virtual {p1}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/ia;->a(Landroid/content/Context;)V

    .line 375
    iget-object p1, p0, Lo/xP$Application$3;->a:Lo/xP$Application;

    iget-object p1, p1, Lo/xP$Application;->a:Lo/xP;

    invoke-static {p1}, Lo/xP;->b(Lo/xP;)Lo/iu;

    move-result-object p1

    iget-object p2, p0, Lo/xP$Application$3;->a:Lo/xP$Application;

    iget-object p2, p2, Lo/xP$Application;->a:Lo/xP;

    invoke-static {p2}, Lo/xP;->a(Lo/xP;)Lo/xP$Application;

    move-result-object p2

    iget v0, p0, Lo/xP$Application$3;->c:I

    invoke-interface {p1, p2, v0}, Lo/iu;->c(Lo/iw;I)V

    return-void
.end method
