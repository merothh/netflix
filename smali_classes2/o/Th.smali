.class public abstract Lo/Th;
.super Lo/acP;
.source ""


# instance fields
.field private c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Tg;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Tk;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/Tk;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/Tg;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private s:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userMessage"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/acP;-><init>()V

    iput-object p1, p0, Lo/Th;->p:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lo/Th;->i()V

    .line 35
    sget p1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->k:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lo/Th;->setStyle(II)V

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lo/Th;->d(Z)V

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lo/Th;->b:Landroid/widget/TextView;

    const-string v1, "mPinMessage"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lo/Th;->b:Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iK:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :goto_0
    iget-object p1, p0, Lo/Th;->d:Landroid/widget/EditText;

    const-string v0, "mPinEditText"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lo/Th;->b(Z)V

    .line 97
    invoke-virtual {p0}, Lo/Th;->h()V

    return-void
.end method

.method private final i()V
    .locals 2

    .line 39
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<PinEvent>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Th;->c:Lio/reactivex/subjects/PublishSubject;

    .line 40
    iget-object v0, p0, Lo/Th;->c:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_0

    const-string v1, "pinEventSubject"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lio/reactivex/Observable;

    iput-object v0, p0, Lo/Th;->o:Lio/reactivex/Observable;

    .line 42
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<PinResult>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    .line 43
    iget-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_1

    const-string v1, "pinResultSubject"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Lio/reactivex/Observable;

    iput-object v0, p0, Lo/Th;->m:Lio/reactivex/Observable;

    return-void
.end method

.method private final r()V
    .locals 2

    .line 121
    iget-object v0, p0, Lo/Th;->c:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "pinEventSubject"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->hasComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lo/Th;->c:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 124
    :cond_2
    iget-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "pinResultSubject"

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->hasComplete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 125
    iget-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 128
    :cond_5
    invoke-direct {p0}, Lo/Th;->i()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_0

    const-string v1, "pinResultSubject"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lo/Tk$Application;->b:Lo/Tk$Application;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lo/Th;->dismiss()V

    return-void
.end method

.method public final a(Lo/Tk;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "pinResultSubject"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->hasComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lo/Th;->e:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 52
    :cond_2
    instance-of v0, p1, Lo/Tk$Activity;

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p0}, Lo/Th;->dismiss()V

    .line 54
    invoke-direct {p0}, Lo/Th;->r()V

    goto :goto_0

    .line 56
    :cond_3
    instance-of v0, p1, Lo/Tk$TaskDescription;

    if-eqz v0, :cond_5

    .line 57
    check-cast p1, Lo/Tk$TaskDescription;

    invoke-virtual {p1}, Lo/Tk$TaskDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p1}, Lo/Tk$TaskDescription;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Th;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0}, Lo/Th;->dismiss()V

    .line 61
    invoke-direct {p0}, Lo/Th;->r()V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lo/Th;->s:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lo/acQ$Application;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setPinVerifierCallback not supported, use observables"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final c()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Tg;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/Th;->o:Lio/reactivex/Observable;

    if-nez v0, :cond_0

    const-string v1, "pinEventObservable"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredPin"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lo/Th;->d(Z)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lo/Th;->b(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lo/Th;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Lo/Th;->d:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lo/adq;->b(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 83
    iget-object p1, p0, Lo/Th;->c:Lio/reactivex/subjects/PublishSubject;

    if-nez p1, :cond_0

    const-string v0, "pinEventSubject"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lo/Tg$StateListAnimator;

    invoke-direct {v0, p2}, Lo/Tg$StateListAnimator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected d(Landroid/app/Dialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lo/acP;->d(Landroid/app/Dialog;)V

    .line 70
    iget-object p1, p0, Lo/Th;->b:Landroid/widget/TextView;

    const-string v0, "mPinMessage"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/Th;->p:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 107
    invoke-super {p0}, Lo/acP;->dismiss()V

    .line 109
    invoke-direct {p0}, Lo/Th;->r()V

    return-void
.end method

.method public final e()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Tk;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/Th;->m:Lio/reactivex/Observable;

    if-nez v0, :cond_0

    const-string v1, "pinResultObservable"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Lo/acP;->onCancel(Landroid/content/DialogInterface;)V

    .line 103
    invoke-virtual {p0}, Lo/Th;->a()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/acP;->onDestroyView()V

    invoke-virtual {p0}, Lo/Th;->b()V

    return-void
.end method
