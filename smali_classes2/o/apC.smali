.class public Lo/apC;
.super Lo/apD;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 624
    invoke-direct {p0}, Lo/apD;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "head cannot be removed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
