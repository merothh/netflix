.class Lo/nc$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nc;->a([BLo/zQ$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/zQ$StateListAnimator;

.field final synthetic b:[B

.field final synthetic d:Lo/nc;


# direct methods
.method constructor <init>(Lo/nc;[BLo/zQ$StateListAnimator;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lo/nc$1;->d:Lo/nc;

    iput-object p2, p0, Lo/nc$1;->b:[B

    iput-object p3, p0, Lo/nc$1;->a:Lo/zQ$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 7

    .line 298
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    const/4 v1, 0x0

    const-string v2, "nf_safetynet"

    if-eqz v0, :cond_0

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google API exception, status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v5, "API error: %s"

    .line 305
    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 307
    iget-object v4, p0, Lo/nc$1;->d:Lo/nc;

    iget-object v5, p0, Lo/nc$1;->b:[B

    iget-object v6, p0, Lo/nc$1;->a:Lo/zQ$StateListAnimator;

    invoke-static {v4, v0, v5, v6}, Lo/nc;->c(Lo/nc;Lcom/google/android/gms/common/api/ApiException;[BLo/zQ$StateListAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Retrying API call for attestation with exponential backoff"

    .line 308
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "Google Unknown type of error occurred."

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 316
    invoke-static {v2, p1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 317
    iget-object p1, p0, Lo/nc$1;->a:Lo/zQ$StateListAnimator;

    invoke-interface {p1, v3}, Lo/zQ$StateListAnimator;->a(Ljava/lang/String;)V

    return-void
.end method
