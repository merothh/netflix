.class Lo/kJ$2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kJ$2;->run()V
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
.field final synthetic e:Lo/kJ$2;


# direct methods
.method constructor <init>(Lo/kJ$2;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lo/kJ$2$4;->e:Lo/kJ$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    const-string v1, "CafSessionManager"

    if-eqz v0, :cond_0

    const-string p1, "SendMessage(), success"

    .line 145
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lo/kJ$2$4;->e:Lo/kJ$2;

    iget-object p1, p1, Lo/kJ$2;->e:Lo/kJ;

    invoke-static {p1}, Lo/kJ;->a(Lo/kJ;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    const-string v0, "SendMessage(), has timed out"

    .line 156
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    iget-object v0, p0, Lo/kJ$2$4;->e:Lo/kJ$2;

    iget-object v0, v0, Lo/kJ$2;->e:Lo/kJ;

    invoke-static {v0, p1}, Lo/kJ;->a(Lo/kJ;I)V

    :goto_0
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 141
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lo/kJ$2$4;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
