.class public final Lo/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c()Z
    .locals 2

    .line 48
    sget-object v0, Lo/bH;->c:Lo/bH$TaskDescription;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lo/bH$TaskDescription;->a(I)Z

    move-result v0

    .line 49
    sget-object v1, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {v1}, Lo/dN$ActionBar;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 52
    :cond_0
    sget-object v1, Lo/ew;->d:Lo/ew$TaskDescription;

    invoke-virtual {v1}, Lo/ew$TaskDescription;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 55
    :cond_1
    sget-object v1, Lo/eE;->e:Lo/eE$ActionBar;

    invoke-virtual {v1}, Lo/eE$ActionBar;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 58
    :cond_2
    sget-object v1, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v1}, Lo/ep$ActionBar;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 63
    :cond_3
    sget-object v0, Lo/gY;->a:Lo/gY$Activity;

    invoke-virtual {v0}, Lo/gY$Activity;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
