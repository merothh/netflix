.class final Lo/adn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/AL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lo/AL;

    check-cast p2, Lo/AL;

    invoke-virtual {p0, p1, p2}, Lo/adn;->e(Lo/AL;Lo/AL;)I

    move-result p1

    return p1
.end method

.method public e(Lo/AL;Lo/AL;)I
    .locals 4

    const-string v0, "o1"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lo/AL;->read()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-interface {p2}, Lo/AL;->read()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    sub-int/2addr v0, v1

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {p2}, Lo/AL;->timestamp()J

    move-result-wide v0

    invoke-interface {p1}, Lo/AL;->timestamp()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int v0, v0

    :goto_2
    return v0
.end method
