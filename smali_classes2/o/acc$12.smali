.class Lo/acc$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic g:Lo/acc;


# direct methods
.method constructor <init>(Lo/acc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lo/acc$12;->g:Lo/acc;

    iput-boolean p2, p0, Lo/acc$12;->e:Z

    iput-object p3, p0, Lo/acc$12;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/acc$12;->d:Ljava/lang/String;

    iput-object p5, p0, Lo/acc$12;->c:Ljava/lang/String;

    iput-object p6, p0, Lo/acc$12;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lo/acc$12;->g:Lo/acc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/acc;->c(Z)V

    .line 778
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne p1, v0, :cond_1

    .line 779
    iget-object p1, p0, Lo/acc$12;->g:Lo/acc;

    invoke-static {p1}, Lo/acc;->c(Lo/acc;)V

    .line 780
    iget-boolean p1, p0, Lo/acc$12;->e:Z

    if-eqz p1, :cond_0

    .line 781
    iget-object p1, p0, Lo/acc$12;->g:Lo/acc;

    invoke-static {p1}, Lo/acc;->a(Lo/acc;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_0
    iget-object p1, p0, Lo/acc$12;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 783
    invoke-static {p1, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 784
    iget-object p1, p0, Lo/acc$12;->g:Lo/acc;

    invoke-virtual {p1}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "RefreshUserMessageRequest.ACTION_DISMISS_UMA_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 787
    :cond_1
    iget-object v0, p0, Lo/acc$12;->g:Lo/acc;

    new-instance v2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/acc;->a(Lo/acc;Lcom/netflix/cl/model/Error;)V

    .line 788
    iget-boolean p1, p0, Lo/acc$12;->e:Z

    if-eqz p1, :cond_2

    .line 789
    iget-object p1, p0, Lo/acc$12;->g:Lo/acc;

    invoke-static {p1}, Lo/acc;->a(Lo/acc;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 791
    :cond_2
    iget-object p1, p0, Lo/acc$12;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 792
    invoke-static {p1, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 793
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Request (ecom-api) for Retry Payment failed"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 795
    :cond_3
    iget-object p1, p0, Lo/acc$12;->c:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 796
    iget-object p1, p0, Lo/acc$12;->c:Ljava/lang/String;

    invoke-static {p1}, Lo/abT;->d(Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Lo/acc$12;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lo/acc$12;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lo/abT;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 798
    iget-object v0, p0, Lo/acc$12;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 799
    iget-object v0, p0, Lo/acc$12;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 808
    iget-object v0, p0, Lo/acc$12;->g:Lo/acc;

    new-instance v1, Lcom/netflix/cl/model/Error;

    sget-object v2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/acc;->a(Lo/acc;Lcom/netflix/cl/model/Error;)V

    .line 809
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Retry Payment request rx exceptioned out"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 810
    iget-boolean v0, p0, Lo/acc$12;->e:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lo/acc$12;->g:Lo/acc;

    invoke-static {v0}, Lo/acc;->a(Lo/acc;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 813
    :cond_0
    iget-object p1, p0, Lo/acc$12;->d:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 814
    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 816
    :cond_1
    iget-object p1, p0, Lo/acc$12;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Am;->d(Z)V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 774
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/acc$12;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
