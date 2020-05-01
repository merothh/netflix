.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 612
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 613
    return-void
.end method

.method private processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 638
    packed-switch p2, :pswitch_data_0

    .line 675
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 640
    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericFailure(I)Z

    goto :goto_0

    .line 644
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericSuccess(I)Z

    goto :goto_0

    .line 648
    :pswitch_2
    if-eqz p5, :cond_1

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 649
    :cond_1
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p4, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onRegistered(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 654
    :pswitch_3
    if-eqz p5, :cond_2

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 655
    :cond_2
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onDescriptorChanged(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 660
    :pswitch_4
    if-eqz p5, :cond_3

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 661
    :cond_3
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 667
    :pswitch_5
    if-eqz p5, :cond_4

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 668
    :cond_4
    if-nez p6, :cond_5

    const/4 v0, 0x0

    .line 670
    :goto_1
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, v0, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 668
    :cond_5
    const-string/jumbo v0, "error"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 617
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 621
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 622
    if-eqz v1, :cond_0

    .line 623
    iget v2, p1, Landroid/os/Message;->what:I

    .line 624
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 625
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 626
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 627
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    .line 628
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled message from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    return-void
.end method
