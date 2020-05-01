.class public final Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebSettings$StateListAnimator;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/DESedeKeySpec;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lio/reactivex/SingleEmitter;

.field final synthetic i:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;JLio/reactivex/SingleEmitter;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->b:Lorg/json/JSONObject;

    iput-wide p2, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->a:J

    iput-object p4, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->e:Lio/reactivex/SingleEmitter;

    iput-object p5, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->d:Ljava/util/List;

    iput p6, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->c:I

    iput p7, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->i:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/DESedeKeySpec;)V
    .locals 5

    const-string v0, "composition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->b:Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->a:J

    sub-long/2addr v1, v3

    const-string v3, "totalTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->b:Lorg/json/JSONObject;

    const-string v1, "isCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    sget-object v0, Lo/WebSettings;->d:Lo/WebSettings;

    check-cast v0, Lo/MessagePdu;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->e:Lio/reactivex/SingleEmitter;

    new-instance v1, Lo/WebStorage;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->d:Ljava/util/List;

    iget v3, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->c:I

    iget v4, p0, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->i:I

    invoke-direct {v1, p1, v2, v3, v4}, Lo/WebStorage;-><init>(Lo/DESedeKeySpec;Ljava/util/List;II)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lo/DESedeKeySpec;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;->e(Lo/DESedeKeySpec;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
