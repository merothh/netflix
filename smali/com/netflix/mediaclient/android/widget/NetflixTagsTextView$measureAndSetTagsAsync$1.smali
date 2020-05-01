.class public final Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ImageView;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lo/alN<",
        "Lo/aor;",
        "Lo/ale<",
        "-",
        "Lo/akj;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ImageView;

.field b:I

.field final synthetic c:I

.field d:Ljava/lang/Object;

.field e:I

.field private h:Lo/aor;


# direct methods
.method public constructor <init>(Lo/ImageView;ILo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->a:Lo/ImageView;

    iput p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->b:I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->d:Ljava/lang/Object;

    check-cast v0, Lo/aor;

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->h:Lo/aor;

    .line 139
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->c:I

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->a:Lo/ImageView;

    invoke-virtual {v3}, Lo/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->a:Lo/ImageView;

    invoke-virtual {v3}, Lo/ImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 140
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->a:Lo/ImageView;

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->d:Ljava/lang/Object;

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->b:I

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->e:I

    invoke-virtual {v3, v1, p0}, Lo/ImageView;->c(ILo/ale;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 138
    :cond_2
    :goto_0
    check-cast p1, Landroid/text/SpannableStringBuilder;

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->a:Lo/ImageView;

    check-cast p1, Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Lo/ImageView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 142
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Lo/ale;)Lo/ale;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/ale<",
            "*>;)",
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->a:Lo/ImageView;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->c:I

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;-><init>(Lo/ImageView;ILo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->h:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
