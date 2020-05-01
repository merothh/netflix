.class public final Lo/anx$TaskDescription;
.super Lo/akl;
.source ""

# interfaces
.implements Lo/ant;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/anx;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/akl<",
        "Lo/anu;",
        ">;",
        "Lo/ant;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/anx;


# direct methods
.method constructor <init>(Lo/anx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lo/anx$TaskDescription;->c:Lo/anx;

    invoke-direct {p0}, Lo/akl;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 275
    iget-object v0, p0, Lo/anx$TaskDescription;->c:Lo/anx;

    invoke-static {v0}, Lo/anx;->c(Lo/anx;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c(Lo/anu;)Z
    .locals 0

    .line 274
    invoke-super {p0, p1}, Lo/akl;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 274
    instance-of v0, p1, Lo/anu;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lo/anu;

    invoke-virtual {p0, p1}, Lo/anx$TaskDescription;->c(Lo/anu;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(I)Lo/anu;
    .locals 3

    .line 280
    iget-object v0, p0, Lo/anx$TaskDescription;->c:Lo/anx;

    invoke-static {v0}, Lo/anx;->c(Lo/anx;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lo/anz;->d(Ljava/util/regex/MatchResult;I)Lo/amD;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lo/amD;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 282
    new-instance v1, Lo/anu;

    iget-object v2, p0, Lo/anx$TaskDescription;->c:Lo/anx;

    invoke-static {v2}, Lo/anx;->c(Lo/anx;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "matchResult.group(index)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lo/anu;-><init>(Ljava/lang/String;Lo/amD;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/anu;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Lo/akz;->c(Ljava/util/Collection;)Lo/amD;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->n(Ljava/lang/Iterable;)Lo/anb;

    move-result-object v0

    new-instance v1, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    invoke-direct {v1, p0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Lo/anx$TaskDescription;)V

    check-cast v1, Lo/alA;

    invoke-static {v0, v1}, Lo/ane;->d(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object v0

    invoke-interface {v0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
