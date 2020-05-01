.class public final Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lo/Emoji;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 11
    check-cast p1, Lo/Emoji;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->bind(Lo/Emoji;)V

    return-void
.end method

.method public bind(Lo/Emoji;)V
    .locals 2

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    check-cast p1, Lo/AndroidCharacter;

    invoke-super {p0, p1}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    invoke-static {p1}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object p1

    const-string v0, "RxTextView.textChanges(this)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 21
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder$bind$disposable$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder$bind$disposable$1;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
