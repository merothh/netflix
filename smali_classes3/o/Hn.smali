.class public abstract Lo/Hn;
.super Lo/IntBinaryOperator;
.source ""

# interfaces
.implements Lo/Hl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Hn$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Hn$TaskDescription;",
        ">;",
        "Lo/Hl;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 39
    sget v0, Lo/GS$FragmentManager;->j:I

    return v0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lo/Hn$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hn;->d(ILo/Hn$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p2, Lo/Hn$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hn;->d(ILo/Hn$TaskDescription;)V

    return-void
.end method

.method public d(ILo/Hn$TaskDescription;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lo/Hn$TaskDescription;->b()Lo/ECPrivateKeySpec;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->stop()V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 27
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected h()Lo/Hn$TaskDescription;
    .locals 1

    .line 41
    new-instance v0, Lo/Hn$TaskDescription;

    invoke-direct {v0}, Lo/Hn$TaskDescription;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/Hn;->h()Lo/Hn$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
