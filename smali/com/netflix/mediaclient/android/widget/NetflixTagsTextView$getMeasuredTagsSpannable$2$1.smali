.class final Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->c(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lo/alN<",
        "Lo/aor;",
        "Lo/ale<",
        "-",
        "Landroid/text/SpannableStringBuilder;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/aor;

.field b:I

.field final synthetic d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;Lo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    .line 155
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->b:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->a:Lo/aor;

    const-string v0, "NetflixTagsTextView.getMeasuredTagsSpannable"

    .line 156
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->d:Lo/ImageView;

    invoke-static {v0}, Lo/ImageView;->d(Lo/ImageView;)Ljava/util/List;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 163
    :goto_0
    invoke-static {p1}, Lo/aoq;->d(Lo/aor;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 164
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x2

    if-le v3, v5, :cond_2

    .line 171
    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    iget-object v5, v5, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->d:Lo/ImageView;

    invoke-virtual {v5}, Lo/ImageView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v2, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    iget-object v6, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    iget v6, v6, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->a:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 174
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    .line 177
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 175
    invoke-virtual {v1, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_3

    .line 183
    :cond_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const/4 v0, 0x5

    if-ge v0, p1, :cond_4

    .line 185
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v0

    .line 186
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 184
    invoke-virtual {v1, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 191
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_3

    const-string v5, "  \u2022\u00a0\u00a0"

    .line 193
    check-cast v5, Ljava/lang/CharSequence;

    .line 194
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    iget-object v7, v7, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->d:Lo/ImageView;

    invoke-virtual {v7}, Lo/ImageView;->e()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    .line 192
    invoke-virtual {v1, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 197
    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    iget-object v5, v5, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;->d:Lo/ImageView;

    invoke-static {v5}, Lo/ImageView;->c(Lo/ImageView;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Lo/alm;->b(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 202
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    .line 203
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/Object;Lo/ale;)Lo/ale;
    .locals 2
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

    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d:Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;Lo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->a:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2$1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
