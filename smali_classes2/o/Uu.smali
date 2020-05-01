.class public Lo/Uu;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startRecap()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

    move-result v0

    if-ltz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startRecap()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

    move-result p0

    sub-int/2addr p0, p3

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z
    .locals 3

    .line 22
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startCredit()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result v0

    if-ltz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startCredit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result p0

    sub-int/2addr p0, p3

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/util/List;JI)Lcom/netflix/model/leafs/blades/SkipContentData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;JI)",
            "Lcom/netflix/model/leafs/blades/SkipContentData;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/blades/SkipContentData;

    .line 48
    invoke-virtual {v0}, Lcom/netflix/model/leafs/blades/SkipContentData;->start()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/blades/SkipContentData;->end()I

    move-result v1

    if-ltz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/netflix/model/leafs/blades/SkipContentData;->start()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/blades/SkipContentData;->end()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/util/List;JI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;JI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/blades/SkipContentData;

    .line 35
    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/SkipContentData;->start()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/SkipContentData;->end()I

    move-result v2

    if-ltz v2, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/SkipContentData;->start()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/SkipContentData;->end()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
