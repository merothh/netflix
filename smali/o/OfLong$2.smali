.class final Lo/OfLong$2;
.super Lo/State$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/State$StateListAnimator<",
        "Lo/BiConsumer<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lo/State$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    check-cast p1, Lo/BiConsumer;

    check-cast p2, Lo/BiConsumer;

    invoke-virtual {p0, p1, p2}, Lo/OfLong$2;->a(Lo/BiConsumer;Lo/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/BiConsumer;Lo/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;",
            "Lo/BiConsumer<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 205
    new-instance p2, Lo/Map;

    invoke-direct {p2, p1}, Lo/Map;-><init>(Lo/BiConsumer;)V

    return-object p2
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 192
    check-cast p1, Lo/BiConsumer;

    check-cast p2, Lo/BiConsumer;

    invoke-virtual {p0, p1, p2}, Lo/OfLong$2;->d(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result p1

    return p1
.end method

.method public c(Lo/BiConsumer;Lo/BiConsumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lo/BiConsumer;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lo/BiConsumer;->d()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lo/BiConsumer;Lo/BiConsumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    .line 200
    invoke-virtual {p1, p2}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 192
    check-cast p1, Lo/BiConsumer;

    check-cast p2, Lo/BiConsumer;

    invoke-virtual {p0, p1, p2}, Lo/OfLong$2;->c(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result p1

    return p1
.end method
