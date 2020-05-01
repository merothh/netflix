.class public final Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebResourceRequest$TaskDescription;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/SingleEmitter;

.field final synthetic d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;->d:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;->c:Lio/reactivex/SingleEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;->d:Lorg/json/JSONObject;

    const-string v1, "isCompleted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;->d:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;->c:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
