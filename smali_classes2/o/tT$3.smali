.class Lo/tT$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tJ$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/tT;


# direct methods
.method constructor <init>(Lo/tT;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lo/tT$3;->a:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 728
    iget-object p1, p0, Lo/tT$3;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;)V"
        }
    .end annotation

    .line 723
    iget-object p1, p0, Lo/tT$3;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1003

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
