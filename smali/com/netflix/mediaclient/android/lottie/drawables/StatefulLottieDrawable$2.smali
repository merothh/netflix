.class public final Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebView;-><init>(Ljava/lang/String;Ljava/util/List;Lo/WebViewClient$Application;)V
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/WebView;


# direct methods
.method public constructor <init>(Lo/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;->d:Lo/WebView;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;->d:Lo/WebView;

    invoke-virtual {v0}, Lo/WebView;->v()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
