.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->c(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2, p3}, Lo/cq;->b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->e:Lio/reactivex/ObservableEmitter;

    const-string v1, "subscriber"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget v0, v0, Lo/GI$StateListAnimator;->e:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 85
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    iget-object p3, p3, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->e:Lio/reactivex/ObservableEmitter;

    .line 121
    new-instance v0, Lo/GY$Application;

    invoke-direct {v0, p1, p2}, Lo/GY$Application;-><init>(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)V

    .line 120
    invoke-interface {p3, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->e:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto/16 :goto_3

    .line 95
    :cond_3
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "callback"

    const-string v2, "onExtrasFeedFetched"

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_4

    .line 98
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p1, :cond_5

    .line 103
    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getTrackId()I

    move-result v1

    const-string v2, "summary.trackId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary.listId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getLength()I

    move-result p1

    const-string v1, "summary.length"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eqz p2, :cond_6

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "result.size"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget p1, p1, Lo/GI$StateListAnimator;->e:I

    const-string p2, "ui.size"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 114
    sget-object p2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->d:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid feed (error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 113
    invoke-interface {p1, p2, p3}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->e:Lio/reactivex/ObservableEmitter;

    new-instance p2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    :goto_3
    return-void
.end method
