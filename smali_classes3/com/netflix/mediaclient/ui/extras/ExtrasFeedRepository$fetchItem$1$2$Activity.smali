.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->c(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "res"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1, p2, p3}, Lo/cq;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->a:Lio/reactivex/ObservableEmitter;

    const-string v1, "subscriber"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$callback$1$onExtrasFeedItemFetched$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;)V

    check-cast v0, Lo/alN;

    .line 157
    invoke-static {p1, p2, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;

    .line 170
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "callback"

    const-string v0, "onExtrasFeedItemFetched"

    .line 171
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object p2

    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    const-string v0, "statusCode"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 178
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->d:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item (error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 179
    invoke-interface {p2, v0, p3}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->a:Lio/reactivex/ObservableEmitter;

    new-instance p3, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_0
    return-void
.end method
