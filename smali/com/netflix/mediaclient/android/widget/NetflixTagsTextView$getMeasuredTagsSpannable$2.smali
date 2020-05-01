.class public final Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ImageView;->c(ILo/ale;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lo/alA<",
        "Lo/ale<",
        "-",
        "Landroid/text/SpannableStringBuilder;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field c:I

.field final synthetic d:Lo/ImageView;


# direct methods
.method public constructor <init>(Lo/ImageView;ILo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->d:Lo/ImageView;

    iput p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->a:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ale;)Lo/ale;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "*>;)",
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->d:Lo/ImageView;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->a:I

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;-><init>(Lo/ImageView;ILo/ale;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    .line 154
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_1
    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Lo/aoz;->e()Lo/aon;

    move-result-object p1

    check-cast p1, Lo/alj;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;Lo/ale;)V

    check-cast v1, Lo/alN;

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->c:I

    invoke-static {p1, v1, p0}, Lo/anM;->b(Lo/alj;Lo/alN;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lo/ale;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->b(Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
