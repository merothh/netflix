.class public abstract Lo/acw;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acw$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/acw$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/Disposable;

.field public b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

.field public c:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    .line 36
    new-instance v0, Lo/acw$TaskDescription;

    invoke-direct {v0, p0}, Lo/acw$TaskDescription;-><init>(Lo/acw;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/acw;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private final d(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 64
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 66
    iget-object v1, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    const-string v2, "productChoiceModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->priceDuration()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->WEEKS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    if-ne v1, v3, :cond_1

    .line 67
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ox:I

    goto :goto_0

    .line 69
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oy:I

    .line 71
    :goto_0
    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    .line 72
    iget-object v3, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-nez v3, :cond_2

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPriceFormatted()Ljava/lang/String;

    move-result-object v3

    const-string v4, "formatted_localized_price"

    invoke-virtual {v1, v4, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v3, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-nez v3, :cond_3

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->showPreTaxInPrice()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oD:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_4
    iget-object p1, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-nez p1, :cond_5

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planDescShort()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\n"

    .line 79
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 93
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 80
    sget-object v3, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v1, v3}, Lo/afw;->a(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public a(Lo/acw$Activity;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lo/acw;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 60
    :cond_0
    check-cast p1, Lo/TimeUnit;

    invoke-super {p0, p1}, Lo/IntBinaryOperator;->e(Lo/TimeUnit;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 41
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dF:I

    return v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1}, Lo/acw;->a(Lo/acw$Activity;)V

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1}, Lo/acw;->c(Lo/acw$Activity;)V

    return-void
.end method

.method public c(Lo/acw$Activity;)V
    .locals 8

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lo/acw$Activity;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-nez v1, :cond_0

    const-string v2, "productChoiceModel"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1}, Lo/acw$Activity;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lo/acw$Activity;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "viewHolder.itemView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/acw;->d(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lo/acw$Activity;->g()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/acw;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lo/acw;->c:Lio/reactivex/subjects/BehaviorSubject;

    if-nez v0, :cond_1

    const-string v1, "planSelectionClicks"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    move-object v2, v0

    check-cast v2, Lio/reactivex/Observable;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$1;-><init>(Lo/acw;Lo/acw$Activity;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 54
    sget-object p1, Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$2;->a:Lcom/netflix/mediaclient/ui/ums/planselect/ProductChoiceModel$bind$2;

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 49
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/acw;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1}, Lo/acw;->c(Lo/acw$Activity;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1}, Lo/acw;->a(Lo/acw$Activity;)V

    return-void
.end method

.method public final h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;
    .locals 2

    .line 29
    iget-object v0, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-nez v0, :cond_0

    const-string v1, "productChoiceModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final m()Lio/reactivex/subjects/BehaviorSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/acw;->c:Lio/reactivex/subjects/BehaviorSubject;

    if-nez v0, :cond_0

    const-string v1, "planSelectionClicks"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
