.class public Lo/CJ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lo/CG;
    .locals 3

    .line 23
    invoke-static {}, Lo/dy;->a()Z

    move-result v0

    .line 25
    sget-object v1, Lo/CI;->b:Lo/CI$ActionBar;

    invoke-virtual {v1}, Lo/CI$ActionBar;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 29
    :cond_0
    invoke-static {p0}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    .line 35
    new-instance v0, Lo/CM;

    invoke-direct {v0, p0}, Lo/CM;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 37
    :cond_2
    new-instance p0, Lo/CL;

    invoke-direct {p0}, Lo/CL;-><init>()V

    return-object p0
.end method
