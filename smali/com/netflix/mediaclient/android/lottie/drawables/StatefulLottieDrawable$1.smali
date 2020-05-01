.class public final Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;
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
        "Lo/WebStorage;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/WebView;


# direct methods
.method public constructor <init>(Lo/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->e:Lo/WebView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/WebStorage;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->e:Lo/WebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/WebView;->c(Lo/WebView;Z)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->e:Lo/WebView;

    invoke-virtual {v0}, Lo/WebView;->u()Lo/WebViewClient$Application;

    move-result-object v2

    invoke-static {v0, v2}, Lo/WebView;->a(Lo/WebView;Lo/WebViewClient$Application;)V

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->e:Lo/WebView;

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/WebView;->d(Lo/WebStorage;)V

    .line 106
    iget-object p1, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->e:Lo/WebView;

    invoke-virtual {p1}, Lo/WebView;->u()Lo/WebViewClient$Application;

    move-result-object v0

    invoke-interface {v0}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lo/WebView;->a(I)V

    .line 107
    iget-object p1, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->e:Lo/WebView;

    invoke-virtual {p1}, Lo/WebView;->v()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lo/WebStorage;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;->a(Lo/WebStorage;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
