.class public final Lo/Lq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Lq$ActionBar;
    }
.end annotation


# direct methods
.method public static a(II)I
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lo/Lq$ActionBar;->c(II)I

    move-result p0

    return p0
.end method

.method public static b()I
    .locals 2

    .line 120
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->T:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    .line 115
    invoke-static {p0}, Lo/Lq$ActionBar;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 0

    .line 107
    invoke-static {p0, p1}, Lo/Lq$ActionBar;->a(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p0

    return p0
.end method
