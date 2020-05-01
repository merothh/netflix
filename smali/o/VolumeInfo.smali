.class public final Lo/VolumeInfo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lo/RapporEncoder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RapporEncoder<",
            "+",
            "Lo/DiskWriteViolation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$asString"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/RapporEncoder;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lo/RapporEncoder;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DiskWriteViolation;

    .line 98
    invoke-virtual {v1}, Lo/DiskWriteViolation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lo/RapporEncoder;->c()Lo/RapporEncoder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lo/RapporEncoder;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Ljava/util/List;)Lo/RapporEncoder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/RapporEncoder<",
            "Lo/DiskWriteViolation;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    check-cast p0, Ljava/lang/Iterable;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 363
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 364
    check-cast v1, Ljava/lang/String;

    .line 123
    new-instance v2, Lo/DiskReadViolation;

    invoke-direct {v2, v1}, Lo/DiskReadViolation;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 123
    invoke-static {v0}, Lo/RapporConfig;->c(Ljava/util/List;)Lo/RapporEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)Lo/RapporEncoder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/RapporEncoder<",
            "Lo/DiskWriteViolation;",
            ">;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p0, 0x1

    new-array v2, p0, [C

    const/4 v0, 0x0

    const/16 v3, 0x2e

    aput-char v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/anv;->e(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 112
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr p0, v1

    if-eqz p0, :cond_0

    .line 113
    invoke-static {v0}, Lo/VolumeInfo;->c(Ljava/util/List;)Lo/RapporEncoder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final varargs d([Ljava/lang/String;)Lo/RapporEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lo/RapporEncoder<",
            "Lo/DiskWriteViolation;",
            ">;"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lo/ako;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/VolumeInfo;->c(Ljava/util/List;)Lo/RapporEncoder;

    move-result-object p0

    return-object p0
.end method
