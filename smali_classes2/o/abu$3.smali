.class Lo/abu$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)V
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
.field final synthetic a:Lo/abu;

.field final synthetic b:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lo/abu;Ljava/lang/Long;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lo/abu$3;->a:Lo/abu;

    iput-object p2, p0, Lo/abu$3;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1189
    iget-object v0, p0, Lo/abu$3;->b:Ljava/lang/Long;

    const-string v1, "SmartLock.save"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    .line 1190
    iget-object v0, p0, Lo/abu$3;->a:Lo/abu;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SignupActivity"

    if-eqz v0, :cond_0

    const-string p1, "Auth.CredentialsApi.request ActivityFinishedOrDestroyed"

    .line 1191
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1194
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SAVE: OK"

    .line 1195
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object p1, p0, Lo/abu$3;->a:Lo/abu;

    const-string v0, "Credential Saved"

    invoke-virtual {p1, v0}, Lo/abu;->showDebugToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v0, p0, Lo/abu$3;->a:Lo/abu;

    invoke-static {v0, p1}, Lo/abu;->a(Lo/abu;Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 1185
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lo/abu$3;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
