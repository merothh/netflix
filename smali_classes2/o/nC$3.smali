.class Lo/nC$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nu$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nC;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nC;


# direct methods
.method constructor <init>(Lo/nC;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lo/nC$3;->b:Lo/nC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lo/nC$3;->b:Lo/nC;

    invoke-static {v0}, Lo/nC;->d(Lo/nC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
