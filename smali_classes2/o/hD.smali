.class Lo/hD;
.super Lo/hz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hz<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lo/cJ;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/cJ;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/hz;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lo/hD;->e:Lo/cJ;

    const-string p1, "[\"dummy\"]"

    .line 31
    iput-object p1, p0, Lo/hD;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected M()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lo/hD;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/hD;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/hD;->g(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/hD;->e:Lo/cJ;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lo/cJ;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lo/hD;->e:Lo/cJ;

    if-eqz p1, :cond_0

    .line 62
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/cJ;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
