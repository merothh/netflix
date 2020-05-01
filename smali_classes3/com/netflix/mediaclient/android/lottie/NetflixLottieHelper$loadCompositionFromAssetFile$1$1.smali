.class public final Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;
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
        "Lorg/json/JSONObject;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/WebResourceRequest$TaskDescription;

.field final synthetic b:J

.field final synthetic d:Lio/reactivex/SingleEmitter;

.field final synthetic e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lo/WebResourceRequest$TaskDescription;Lorg/json/JSONObject;Lio/reactivex/SingleEmitter;J)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->a:Lo/WebResourceRequest$TaskDescription;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->d:Lio/reactivex/SingleEmitter;

    iput-wide p4, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->b:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "could not parse json file"

    const/4 v3, 0x0

    const-string v4, "isCompleted"

    if-nez v1, :cond_0

    .line 58
    iget-object v1, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    iget-object v4, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 60
    iget-object v1, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->d:Lio/reactivex/SingleEmitter;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 64
    invoke-static {v7, v1}, Lo/DESedeKeySpec$ActionBar;->d(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lo/DESedeKeySpec;

    move-result-object v7

    if-nez v7, :cond_1

    .line 66
    iget-object v1, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 68
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    iget-object v4, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 69
    iget-object v1, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->d:Lio/reactivex/SingleEmitter;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    .line 70
    iget-object v1, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->d:Lio/reactivex/SingleEmitter;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Composition creation failed"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 72
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 74
    sget-object v8, Lo/WebResourceRequest;->a:Lo/WebResourceRequest;

    invoke-static {v8, v7}, Lo/WebResourceRequest;->a(Lo/WebResourceRequest;Lo/DESedeKeySpec;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lo/WebResourceRequest;->a:Lo/WebResourceRequest;

    invoke-static {v8, v1}, Lo/WebResourceRequest;->e(Lo/WebResourceRequest;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    .line 75
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 76
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 77
    iget-object v12, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object v15, v7

    move-object/from16 v16, v8

    iget-wide v7, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->b:J

    sub-long/2addr v13, v7

    const-string v7, "totalTime"

    .line 77
    invoke-virtual {v12, v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    iget-wide v7, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->b:J

    sub-long v7, v5, v7

    const-string v12, "jsonFileRead"

    invoke-virtual {v11, v12, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sub-long v5, v2, v5

    const-string v7, "lottieCompositionCreation"

    .line 82
    invoke-virtual {v11, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sub-long/2addr v9, v2

    const-string v2, "tapListCreation"

    .line 83
    invoke-virtual {v11, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    iget-object v2, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    const-string v3, "elapsedTime"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v2, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->e:Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    sget-object v2, Lo/WebResourceRequest;->a:Lo/WebResourceRequest;

    check-cast v2, Lo/MessagePdu;

    .line 90
    iget-object v2, v0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->d:Lio/reactivex/SingleEmitter;

    .line 91
    new-instance v3, Lo/WebStorage;

    const-string v4, "w"

    .line 94
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "h"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move-object v5, v15

    move-object/from16 v8, v16

    .line 91
    invoke-direct {v3, v5, v8, v4, v1}, Lo/WebStorage;-><init>(Lo/DESedeKeySpec;Ljava/util/List;II)V

    .line 90
    invoke-interface {v2, v3}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelper$loadCompositionFromAssetFile$1$1;->d(Lorg/json/JSONObject;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
