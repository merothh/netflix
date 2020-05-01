.class final Lo/agl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/agp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 378
    check-cast p1, Lo/agp;

    check-cast p2, Lo/agp;

    invoke-virtual {p0, p1, p2}, Lo/agl$4;->e(Lo/agp;Lo/agp;)I

    move-result p1

    return p1
.end method

.method public e(Lo/agp;Lo/agp;)I
    .locals 2

    .line 382
    invoke-virtual {p1}, Lo/agp;->aI()I

    move-result v0

    invoke-virtual {p2}, Lo/agp;->aI()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 384
    :cond_0
    invoke-virtual {p1}, Lo/agp;->aI()I

    move-result p1

    invoke-virtual {p2}, Lo/agp;->aI()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
