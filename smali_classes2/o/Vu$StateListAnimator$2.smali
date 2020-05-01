.class public final Lo/Vu$StateListAnimator$2;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vu$StateListAnimator;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Vu$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Vu$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lo/Vu$StateListAnimator$2;->d:Lo/Vu$StateListAnimator;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 83
    iget-object p2, p0, Lo/Vu$StateListAnimator$2;->d:Lo/Vu$StateListAnimator;

    iget-object p2, p2, Lo/Vu$StateListAnimator;->b:Lo/Vu;

    invoke-static {p2, p1}, Lo/Vu;->b(Lo/Vu;Ljava/util/List;)V

    :cond_0
    return-void
.end method
