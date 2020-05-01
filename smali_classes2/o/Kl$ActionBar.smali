.class public Lo/Kl$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 240
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/content/Context;

    .line 241
    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adq;->b(Landroid/content/Context;)F

    move-result v0

    const v1, 0x3f3da12f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;Z)I
    .locals 1

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->d:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-static {p0, p1, v0}, Lo/Kl$ActionBar;->b(Landroid/content/Context;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 255
    invoke-static {p0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->c(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0, p2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->d(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public static c()I
    .locals 4

    .line 246
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adq;->h(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method
