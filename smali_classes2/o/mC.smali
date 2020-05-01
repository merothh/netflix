.class Lo/mC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aih;


# instance fields
.field private c:Lo/ds;


# direct methods
.method constructor <init>(Lo/ds;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iput-object p1, p0, Lo/mC;->c:Lo/ds;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ESN missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lo/agT;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "nf_msl_auth_client"

    const-string v4, "isSchemePermitted: identity %s, entityAuthenticationScheme: %s"

    .line 45
    invoke-static {v3, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 47
    iget-object v0, p0, Lo/mC;->c:Lo/ds;

    invoke-interface {v0}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/agT;->f:Lo/agT;

    if-ne p2, p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
