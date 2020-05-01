.class public abstract Lcom/facebook/battery/metrics/core/Utilities;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static simpleArrayMapEquals(Lo/TextWatcher;Lo/TextWatcher;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/TextWatcher<",
            "TK;TV;>;",
            "Lo/TextWatcher<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lo/TextWatcher;->size()I

    move-result v1

    .line 36
    invoke-virtual {p1}, Lo/TextWatcher;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 42
    invoke-virtual {p0, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v4

    .line 43
    invoke-virtual {p0, v2}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v5

    .line 45
    invoke-virtual {p1, v4}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-nez v6, :cond_2

    .line 48
    invoke-virtual {p1, v4}, Lo/TextWatcher;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    return v3

    .line 51
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method
