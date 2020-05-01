.class final Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2$3;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/WebStorage;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2$1$1;->d:Lio/reactivex/SingleEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/WebStorage;)V
    .locals 1

    .line 71
    invoke-static {p1}, Lo/StatsLogEventWrapper;->b(Lo/WebStorage;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2$1$1;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lo/WebStorage;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2$1$1;->e(Lo/WebStorage;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
