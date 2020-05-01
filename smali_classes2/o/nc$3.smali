.class Lo/nc$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zQ$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nc;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/nc;


# direct methods
.method constructor <init>(Lo/nc;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lo/nc$3;->e:Lo/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/android/app/Status;Lo/zC;)V
    .locals 1

    .line 224
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-eq p1, v0, :cond_0

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSafetyNetAttestation::verified: Failed to verify attestation! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/nc;->d(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lo/nc$3;->e:Lo/nc;

    invoke-static {p2}, Lo/nc;->e(Lo/nc;)Lo/nh;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/nh;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 227
    iget-object p1, p0, Lo/nc$3;->e:Lo/nc;

    invoke-static {p1}, Lo/nc;->a(Lo/nc;)V

    .line 228
    iget-object p1, p0, Lo/nc$3;->e:Lo/nc;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/nc;->e(Lo/nc;Z)V

    return-void

    .line 236
    :cond_0
    iget-object p1, p0, Lo/nc$3;->e:Lo/nc;

    invoke-static {p1}, Lo/nc;->e(Lo/nc;)Lo/nh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/nh;->c(Lo/zC;)V

    .line 237
    iget-object p1, p0, Lo/nc$3;->e:Lo/nc;

    invoke-static {p1}, Lo/nc;->a(Lo/nc;)V

    .line 238
    iget-object p1, p0, Lo/nc$3;->e:Lo/nc;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/nc;->e(Lo/nc;Z)V

    return-void
.end method
