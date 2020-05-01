.class Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BaseLoLoMoAdapter.java"


# instance fields
.field private final numItems:I

.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;JI)V
    .locals 2

    .prologue
    .line 466
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    .line 467
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 468
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->requestId:J

    .line 469
    iput p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->numItems:I

    .line 470
    return-void
.end method

.method private handleResult(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z

    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$102(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z

    .line 490
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$200(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "Ignoring stale onLoMosFetched callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$302(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 498
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z

    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 505
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 506
    :cond_2
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "No loMos in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 512
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->numItems:I

    if-ge v0, v1, :cond_4

    .line 513
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z

    .line 515
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " items, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->numItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasMoreData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->access$000(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->this$0:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->updateLoMoData(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->handleResult(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 484
    return-void
.end method

.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 475
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;->handleResult(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 477
    return-void
.end method
