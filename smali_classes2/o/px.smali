.class Lo/px;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Lo/nS;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 32
    :cond_0
    invoke-interface {p0}, Lo/nS;->f()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 35
    :cond_1
    const-class p0, Lo/Ck;

    invoke-static {p0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Ck;

    invoke-interface {p0, p1}, Lo/Ck;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static e(Landroid/content/Context;Lo/Af;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lo/px$4;

    invoke-direct {v0, p0, p1}, Lo/px$4;-><init>(Landroid/content/Context;Lo/Af;)V

    invoke-static {v0}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
