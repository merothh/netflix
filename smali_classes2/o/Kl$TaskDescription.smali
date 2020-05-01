.class public Lo/Kl$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Landroid/content/Context;I)I
    .locals 1

    .line 270
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p0, v0}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p0

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method static e(ILo/PooledStringWriter;)I
    .locals 1

    .line 265
    invoke-virtual {p1}, Lo/PooledStringWriter;->m()I

    move-result v0

    rem-int/2addr p0, v0

    invoke-virtual {p1}, Lo/PooledStringWriter;->m()I

    move-result p1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
