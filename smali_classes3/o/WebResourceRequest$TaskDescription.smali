.class public final Lo/WebResourceRequest$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebResourceRequest;->c(Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebResourceRequest$TaskDescription;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lo/WebStorage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    const-string v2, "LOTTIE_COMPOSITION_LOAD"

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lo/WebResourceRequest$TaskDescription;->a:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 52
    sget-object v1, Lo/WebResourceRequest;->a:Lo/WebResourceRequest;

    iget-object v2, p0, Lo/WebResourceRequest$TaskDescription;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/WebResourceRequest;->a(Lo/WebResourceRequest;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 53
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v7

    const-string v1, "jsonReadFromAssetFile(fi\u2026bserveOn(Schedulers.io())"

    invoke-static {v7, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v8, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;-><init>(Lo/WebResourceRequest$TaskDescription;Lorg/json/JSONObject;Lio/reactivex/SingleEmitter;J)V

    check-cast v8, Lo/alA;

    .line 100
    new-instance v1, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$2;-><init>(Lorg/json/JSONObject;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lo/alA;

    .line 54
    invoke-static {v7, v1, v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
