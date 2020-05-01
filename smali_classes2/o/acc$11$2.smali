.class Lo/acc$11$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/acc$11;


# direct methods
.method constructor <init>(Lo/acc$11;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iput-object p2, p0, Lo/acc$11$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 874
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 875
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->c:Lo/acc;

    invoke-static {p1}, Lo/acc;->c(Lo/acc;)V

    .line 876
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 877
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 879
    :cond_0
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->c:Lo/acc;

    invoke-virtual {p1}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "RefreshUserMessageRequest.ACTION_DISMISS_UMA_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 881
    :cond_1
    iget-object v0, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object v0, v0, Lo/acc$11;->c:Lo/acc;

    new-instance v2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/acc;->a(Lo/acc;Lcom/netflix/cl/model/Error;)V

    .line 882
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 883
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 884
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Request (ecom-api) for Restart Membership failed"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 886
    :cond_2
    iget-object p1, p0, Lo/acc$11$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/Am;->d(Z)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 892
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->c:Lo/acc;

    new-instance v0, Lcom/netflix/cl/model/Error;

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/acc;->a(Lo/acc;Lcom/netflix/cl/model/Error;)V

    .line 893
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Restart Membership request rx exceptioned out"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 894
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 895
    iget-object p1, p0, Lo/acc$11$2;->d:Lo/acc$11;

    iget-object p1, p1, Lo/acc$11;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 897
    :cond_0
    iget-object p1, p0, Lo/acc$11$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Am;->d(Z)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 871
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/acc$11$2;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
