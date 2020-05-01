.class Lo/nC$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ny$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nC;


# direct methods
.method constructor <init>(Lo/nC;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lo/nC$2;->a:Lo/nC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/ny$Application;)V
    .locals 2

    .line 449
    iget-object v0, p0, Lo/nC$2;->a:Lo/nC;

    invoke-static {v0}, Lo/nC;->d(Lo/nC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
