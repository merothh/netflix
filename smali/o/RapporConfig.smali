.class public final Lo/RapporConfig;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Ljava/util/List;)Lo/RapporEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Lo/RapporEncoder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lo/RapporConfig;->d(Ljava/util/Iterator;)Lo/RapporEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/util/Iterator;)Lo/RapporEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lo/RapporEncoder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object p0, Lo/PrintDocument;->c:Lo/PrintDocument;

    check-cast p0, Lo/RapporEncoder;

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lo/DifferentialPrivacyEncoder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Lo/RapporConfig;->d(Ljava/util/Iterator;)Lo/RapporEncoder;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lo/DifferentialPrivacyEncoder;-><init>(Ljava/lang/Object;Lo/RapporEncoder;)V

    move-object p0, v0

    check-cast p0, Lo/RapporEncoder;

    :goto_0
    return-object p0
.end method
