.class public final Lo/RelativeSizeSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final j:Lo/QuoteSpan;


# direct methods
.method public constructor <init>(Lo/QuoteSpan;)V
    .locals 1

    const-string v0, "parsedData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    .line 23
    iget-object p1, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {p1}, Lo/QuoteSpan;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/RelativeSizeSpan;->a:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {p1}, Lo/QuoteSpan;->j()Z

    move-result p1

    iput-boolean p1, p0, Lo/RelativeSizeSpan;->c:Z

    .line 27
    iget-object p1, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {p1}, Lo/QuoteSpan;->e()Z

    move-result p1

    iput-boolean p1, p0, Lo/RelativeSizeSpan;->b:Z

    .line 29
    iget-object p1, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {p1}, Lo/QuoteSpan;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/RelativeSizeSpan;->d:Z

    .line 31
    iget-object p1, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {p1}, Lo/QuoteSpan;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/RelativeSizeSpan;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lo/GhostView;
    .locals 3

    .line 15
    iget-object v0, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {v0}, Lo/QuoteSpan;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/GhostView;

    invoke-virtual {v2}, Lo/GhostView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lo/GhostView;

    return-object v1
.end method

.method public final a()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lo/RelativeSizeSpan;->e:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0, p1}, Lo/RelativeSizeSpan;->e(Ljava/lang/String;)Lo/GhostView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/GhostView;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lo/RelativeSizeSpan;->a(Ljava/lang/String;)Lo/GhostView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/GhostView;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/RelativeSizeSpan;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/RelativeSizeSpan;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/RelativeSizeSpan;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/RelativeSizeSpan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lo/GhostView;
    .locals 3

    .line 11
    iget-object v0, p0, Lo/RelativeSizeSpan;->j:Lo/QuoteSpan;

    invoke-virtual {v0}, Lo/QuoteSpan;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/GhostView;

    invoke-virtual {v2}, Lo/GhostView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lo/GhostView;

    return-object v1
.end method
