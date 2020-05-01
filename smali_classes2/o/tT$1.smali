.class Lo/tT$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ug$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/tT;


# direct methods
.method constructor <init>(Lo/tT;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lo/tT$1;->c:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/ug;)V
    .locals 2

    .line 735
    iget-object v0, p0, Lo/tT$1;->c:Lo/tT;

    invoke-static {v0}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
