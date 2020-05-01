.class abstract Lo/rq;
.super Lo/rr;
.source ""


# direct methods
.method constructor <init>(Lo/cz;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/rr;-><init>(Lo/cz;)V

    return-void
.end method

.method protected static e()Z
    .locals 1

    .line 24
    invoke-static {}, Lo/gI;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ef;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "ErrorRecoverHandler_5.8"

    return-object v0
.end method
