.class Lo/Jw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Long;

.field final synthetic d:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;Ljava/lang/Long;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lo/Jw$1;->d:Lo/Jw;

    iput-object p2, p0, Lo/Jw$1;->c:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 882
    iget-object v0, p0, Lo/Jw$1;->c:Ljava/lang/Long;

    const-string v1, "SmartLock.save"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    .line 883
    iget-object v0, p0, Lo/Jw$1;->d:Lo/Jw;

    invoke-virtual {v0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LoginBaseFragment"

    if-eqz v0, :cond_0

    const-string p1, "Auth.CredentialsApi.save onResult ActivityFinishedOrDestroyed"

    .line 884
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 887
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SAVE: OK"

    .line 888
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object p1, p0, Lo/Jw$1;->d:Lo/Jw;

    invoke-virtual {p1}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    const-string v0, "Credential Saved"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lo/Jw$1;->d:Lo/Jw;

    iget-object p1, p1, Lo/Jw;->b:Lo/JF;

    if-eqz p1, :cond_2

    .line 891
    iget-object p1, p0, Lo/Jw$1;->d:Lo/Jw;

    iget-object p1, p1, Lo/Jw;->b:Lo/JF;

    invoke-interface {p1}, Lo/JF;->a()V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lo/Jw$1;->d:Lo/Jw;

    invoke-static {v0, p1}, Lo/Jw;->b(Lo/Jw;Lcom/google/android/gms/common/api/Status;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 878
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lo/Jw$1;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
