.class public final Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;
.super Lo/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/WebView<",
        "Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Lo/WebViewClient;

    .line 14
    sget-object v1, Lo/WebViewClient;->b:Lo/WebViewClient$StateListAnimator;

    sget-object v2, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->a:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    check-cast v2, Lo/WebViewClient$Application;

    sget-object v3, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    check-cast v3, Lo/WebViewClient$Application;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lo/WebViewClient$StateListAnimator;->e(Lo/WebViewClient$StateListAnimator;Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;ILjava/lang/Object;)Lo/WebViewClient;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 15
    sget-object v3, Lo/WebViewClient;->b:Lo/WebViewClient$StateListAnimator;

    sget-object v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    move-object v4, v1

    check-cast v4, Lo/WebViewClient$Application;

    sget-object v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->a:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    move-object v5, v1

    check-cast v5, Lo/WebViewClient$Application;

    const/4 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lo/WebViewClient$StateListAnimator;->e(Lo/WebViewClient$StateListAnimator;Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;ILjava/lang/Object;)Lo/WebViewClient;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    check-cast v1, Lo/WebViewClient$Application;

    const-string v2, "lottiefiles/my-list-plus-to-check.json"

    .line 11
    invoke-direct {p0, v2, v0, v1}, Lo/WebView;-><init>(Ljava/lang/String;Ljava/util/List;Lo/WebViewClient$Application;)V

    return-void
.end method
