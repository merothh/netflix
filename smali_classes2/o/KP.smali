.class public Lo/KP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/KN;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/KP;
    .locals 1

    .line 31
    new-instance v0, Lo/KP;

    invoke-direct {v0}, Lo/KP;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lo/zG;Ljava/lang/String;IILo/zU;)Z
    .locals 0

    .line 44
    invoke-interface {p1, p2, p3, p4, p5}, Lo/zG;->d(Ljava/lang/String;IILo/zU;)Z

    move-result p1

    return p1
.end method

.method public b(Lo/zG;Landroid/content/Context;IILjava/lang/String;Lo/zU;)V
    .locals 0

    .line 39
    invoke-interface {p1, p3, p4, p5, p6}, Lo/zG;->a(IILjava/lang/String;Lo/zU;)Z

    return-void
.end method

.method public c(Z)I
    .locals 0

    if-nez p1, :cond_0

    .line 66
    invoke-static {}, Lo/ep;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    return p1

    .line 69
    :cond_0
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/ep;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x16

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x5

    :goto_1
    return p1
.end method

.method public d(Lo/zG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-interface {p1, p3, p2, p4}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lo/zG;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z
    .locals 0

    .line 61
    invoke-interface/range {p1 .. p7}, Lo/zG;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z

    move-result p1

    return p1
.end method
