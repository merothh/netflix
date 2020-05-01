.class public final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lo/MZ$Application;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/MZ$Application;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    instance-of v0, p1, Lo/MZ$Application$TaskDescription;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)Lo/Nb;

    move-result-object p1

    invoke-virtual {p1}, Lo/Nb;->o()V

    goto :goto_0

    .line 208
    :cond_0
    instance-of v0, p1, Lo/MZ$Application$StateListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    check-cast p1, Lo/MZ$Application$StateListAnimator;

    invoke-virtual {p1}, Lo/MZ$Application$StateListAnimator;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)Lo/Nb;

    move-result-object p1

    invoke-virtual {p1}, Lo/Nb;->q()V

    .line 214
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p1, Lo/MZ$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d(Lo/MZ$Application;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$ActionBar;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
