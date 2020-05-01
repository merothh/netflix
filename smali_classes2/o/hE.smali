.class Lo/hE;
.super Lo/hr;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hr<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/cJ;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/cJ;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lo/hr;-><init>()V

    .line 28
    iput-object p1, p0, Lo/hE;->b:Lo/cJ;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[\"dummy\"]"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/hE;->e:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lo/hE;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "nf_config_msldummyrequest"

    const-string v1, "Query = %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/hE;->b:Lo/cJ;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lo/cJ;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/hE;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lo/hE;->b:Lo/cJ;

    if-eqz p1, :cond_0

    .line 57
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/cJ;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/hE;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected u_()Ljava/util/List;
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

    .line 36
    iget-object v1, p0, Lo/hE;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
