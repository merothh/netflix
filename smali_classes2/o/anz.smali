.class public final Lo/anz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final synthetic a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo/anr;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo/anz;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo/anr;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Ljava/util/regex/MatchResult;I)Lo/amD;
    .locals 1

    .line 313
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result p0

    invoke-static {v0, p0}, Lo/amG;->b(II)Lo/amD;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Ljava/util/regex/MatchResult;I)Lo/amD;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/anz;->c(Ljava/util/regex/MatchResult;I)Lo/amD;

    move-result-object p0

    return-object p0
.end method

.method private static final e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo/anr;
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lo/anx;

    invoke-direct {p1, p0, p2}, Lo/anx;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, p1

    check-cast p0, Lo/anr;

    :goto_0
    return-object p0
.end method
