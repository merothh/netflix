.class public Lo/KM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/KN;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/KM;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lo/zG;Ljava/lang/String;IILo/zU;)Z
    .locals 1

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p2, p0, Lo/KM;->c:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p4, p5}, Lo/zG;->c(Ljava/lang/String;IILo/zU;)Z

    move-result p1

    return p1

    .line 51
    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lo/zG;->d(Ljava/lang/String;IILo/zU;)Z

    move-result p1

    return p1
.end method

.method public b(Lo/zG;Landroid/content/Context;IILjava/lang/String;Lo/zU;)V
    .locals 8

    .line 37
    invoke-static {}, Lo/ady;->f()Z

    move-result p5

    const/4 v0, 0x1

    if-nez p5, :cond_1

    invoke-static {}, Lo/ep;->k()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x1

    .line 39
    :goto_1
    iget-object v2, p0, Lo/KM;->c:Ljava/lang/String;

    if-eqz p5, :cond_2

    const/4 p5, 0x6

    const/4 v3, 0x6

    goto :goto_2

    :cond_2
    const/16 p5, 0x15

    const/16 v3, 0x15

    :goto_2
    sget-object p5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 42
    invoke-static {p2, p5}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p2

    add-int/lit8 v4, p2, -0x1

    move-object v1, p1

    move v5, p3

    move v6, p4

    move-object v7, p6

    .line 39
    invoke-interface/range {v1 .. v7}, Lo/zG;->a(Ljava/lang/String;IIIILo/zU;)Z

    return-void
.end method

.method public c(Z)I
    .locals 0

    if-nez p1, :cond_0

    .line 75
    invoke-static {}, Lo/ep;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-static {}, Lo/ep;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    return p1

    .line 80
    :cond_0
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/ep;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    const/4 p1, 0x5

    goto :goto_2

    :cond_3
    const/16 p1, 0x16

    :goto_2
    return p1
.end method

.method public d(Lo/zG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-interface {p1, p3, p2, p4}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lo/zG;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z
    .locals 0

    .line 69
    invoke-interface/range {p1 .. p7}, Lo/zG;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z

    move-result p1

    return p1
.end method
