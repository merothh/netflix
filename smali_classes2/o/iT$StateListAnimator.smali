.class Lo/iT$StateListAnimator;
.super Lo/adz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/iT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/adz<",
        "Lcom/netflix/mediaclient/servicemgr/Logblob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/iT;


# direct methods
.method public constructor <init>(Lo/iT;)V
    .locals 7

    .line 520
    iput-object p1, p0, Lo/iT$StateListAnimator;->a:Lo/iT;

    const-string v1, "nf_logblob_queue"

    const/16 v2, 0x1e

    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 521
    invoke-direct/range {v0 .. v6}, Lo/adz;-><init>(Ljava/lang/String;IJZZ)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;Z)V"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lo/iT$StateListAnimator;->a:Lo/iT;

    invoke-static {v0, p1, p2}, Lo/iT;->c(Lo/iT;Ljava/util/List;Z)V

    return-void
.end method
