.class public Lo/LineBackgroundSpan;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/LeadingMarginSpan;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V
    .locals 1

    const-string v0, "touView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-void
.end method


# virtual methods
.method public b(Lo/LeadingMarginSpan;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "touViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LeadingMarginSpan;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LeadingMarginSpan;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setCheckboxVisible(Z)V

    .line 16
    iget-object v0, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LeadingMarginSpan;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setCheckboxChecked(Z)V

    .line 17
    iget-object v0, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LeadingMarginSpan;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setText(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lo/LeadingMarginSpan;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v1, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setRightofWithdrawalText(Ljava/lang/String;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithdrawalCheckedChanges()Lio/reactivex/Observable;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 25
    new-instance v1, Lo/LineBackgroundSpan$Application;

    invoke-direct {v1, p1}, Lo/LineBackgroundSpan$Application;-><init>(Lo/LeadingMarginSpan;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 29
    iget-object v0, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->checkedChanges()Lio/reactivex/Observable;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lo/LineBackgroundSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 31
    new-instance v1, Lo/LineBackgroundSpan$Activity;

    invoke-direct {v1, p1}, Lo/LineBackgroundSpan$Activity;-><init>(Lo/LeadingMarginSpan;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
