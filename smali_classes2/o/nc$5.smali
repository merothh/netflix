.class Lo/nc$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nc;->a([BLo/zQ$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic d:Lo/nc;

.field final synthetic e:Lo/zQ$StateListAnimator;


# direct methods
.method constructor <init>(Lo/nc;[BLo/zQ$StateListAnimator;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lo/nc$5;->d:Lo/nc;

    iput-object p2, p0, Lo/nc$5;->a:[B

    iput-object p3, p0, Lo/nc$5;->e:Lo/zQ$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V
    .locals 3

    .line 276
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;->getJwsResult()Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lo/nc$5;->d:Lo/nc;

    iget-object v1, p0, Lo/nc$5;->a:[B

    iget-object v2, p0, Lo/nc$5;->e:Lo/zQ$StateListAnimator;

    invoke-static {v0, p1, v1, v2}, Lo/nc;->b(Lo/nc;Ljava/lang/String;[BLo/zQ$StateListAnimator;)Lo/nc$ActionBar;

    move-result-object v0

    .line 283
    iget-boolean v1, v0, Lo/nc$ActionBar;->e:Z

    const-string v2, "nf_safetynet"

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 284
    iget-boolean v0, v0, Lo/nc$ActionBar;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Retrying, error found in payload, internal error %b"

    invoke-static {v2, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    const-string v0, "Report success..."

    .line 287
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lo/nc$5;->e:Lo/zQ$StateListAnimator;

    invoke-interface {v0, p1}, Lo/zQ$StateListAnimator;->d(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 271
    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;

    invoke-virtual {p0, p1}, Lo/nc$5;->d(Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V

    return-void
.end method
