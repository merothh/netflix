.class public final Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewDelegate;->e(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, p2, :cond_1

    .line 22
    iget v2, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;->c:I

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-lt p2, v2, :cond_3

    goto :goto_1

    .line 24
    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;->c:I

    if-le p2, v2, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/lottie/drawables/StateTransitionImpl$containsFrame$1;->d(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
