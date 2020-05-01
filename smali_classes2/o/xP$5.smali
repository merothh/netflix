.class Lo/xP$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xP;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xP;


# direct methods
.method constructor <init>(Lo/xP;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lo/xP$5;->c:Lo/xP;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
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

    .line 265
    invoke-super {p0, p1, p2}, Lo/cq;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 266
    iget-object p1, p0, Lo/xP$5;->c:Lo/xP;

    invoke-virtual {p1}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/ia;->a(Landroid/content/Context;)V

    return-void
.end method
