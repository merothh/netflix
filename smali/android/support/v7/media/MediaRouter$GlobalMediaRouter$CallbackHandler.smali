.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# instance fields
.field private final mTempCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 1

    .prologue
    .line 2376
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V
    .locals 0

    .prologue
    .line 2376
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    return-void
.end method

.method private invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 2448
    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 2449
    iget-object v1, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    .line 2450
    const v2, 0xff00

    and-int/2addr v2, p2

    sparse-switch v2, :sswitch_data_0

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2452
    :sswitch_0
    check-cast p3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2453
    invoke-virtual {p1, p3}, Landroid/support/v7/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2456
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2458
    :pswitch_0
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2461
    :pswitch_1
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2464
    :pswitch_2
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2467
    :pswitch_3
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2470
    :pswitch_4
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2473
    :pswitch_5
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2476
    :pswitch_6
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2482
    :sswitch_1
    check-cast p3, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2483
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2485
    :pswitch_7
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2488
    :pswitch_8
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2491
    :pswitch_9
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    .line 2450
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    .line 2456
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2483
    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private syncWithSystemProvider(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2431
    packed-switch p1, :pswitch_data_0

    .line 2445
    :goto_0
    :pswitch_0
    return-void

    .line 2433
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2436
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2439
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2442
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2431
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 2402
    iget v2, p1, Landroid/os/Message;->what:I

    .line 2403
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2406
    invoke-direct {p0, v2, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->syncWithSystemProvider(ILjava/lang/Object;)V

    .line 2412
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 2413
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter;

    .line 2414
    if-nez v0, :cond_0

    .line 2415
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    move v0, v1

    .line 2419
    goto :goto_0

    .line 2417
    :cond_0
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2426
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 2421
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2422
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_2

    .line 2423
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2422
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2426
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2428
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2397
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2398
    return-void
.end method
