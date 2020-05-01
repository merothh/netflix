.class Lo/NetworkOnMainThreadException$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Message$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NetworkOnMainThreadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lo/NetworkOnMainThreadException$3;->e:Lo/NetworkOnMainThreadException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 544
    sget-object v0, Lo/NetworkOnMainThreadException;->c:Landroid/os/Handler;

    sget-object v1, Lo/NetworkOnMainThreadException;->c:Landroid/os/Handler;

    iget-object v2, p0, Lo/NetworkOnMainThreadException$3;->e:Lo/NetworkOnMainThreadException;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 539
    sget-object v0, Lo/NetworkOnMainThreadException;->c:Landroid/os/Handler;

    sget-object v1, Lo/NetworkOnMainThreadException;->c:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget-object v2, p0, Lo/NetworkOnMainThreadException$3;->e:Lo/NetworkOnMainThreadException;

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
