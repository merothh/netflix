.class public Lo/anE;
.super Lo/any;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/any;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "$this$replaceIndent"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/anv;->h(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 71
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 158
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    .line 72
    invoke-static {v6}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 161
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 162
    check-cast v5, Ljava/lang/String;

    .line 73
    invoke-static {v5}, Lo/anE;->c(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 74
    invoke-static {v3}, Lo/akz;->m(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 76
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    mul-int v5, v5, v6

    add-int/2addr v0, v5

    invoke-static/range {p1 .. p1}, Lo/anE;->b(Ljava/lang/String;)Lo/alA;

    move-result-object v2

    .line 164
    invoke-static {v1}, Lo/akz;->b(Ljava/util/List;)I

    move-result v5

    .line 165
    check-cast v1, Ljava/lang/Iterable;

    .line 174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 186
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    if-gez v4, :cond_4

    invoke-static {}, Lo/akz;->c()V

    .line 184
    :cond_4
    check-cast v7, Ljava/lang/String;

    if-eqz v4, :cond_5

    if-ne v4, v5, :cond_6

    .line 187
    :cond_5
    move-object v4, v7

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    .line 76
    :cond_6
    invoke-static {v7, v3}, Lo/anv;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v2, v4}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v7, v4

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 184
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    move v4, v8

    goto :goto_3

    .line 192
    :cond_9
    check-cast v6, Ljava/util/List;

    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v1

    check-cast v8, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7c

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lo/akz;->d(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final b(Ljava/lang/String;)Lo/alA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/alA<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->e:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast p0, Lo/alA;

    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Lo/alA;

    :goto_1
    return-object p0
.end method

.method private static final c(Ljava/lang/String;)I
    .locals 5

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .line 193
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    .line 194
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 99
    invoke-static {v4}, Lo/ano;->e(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_2
    return v2
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$trimIndent"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 63
    invoke-static {p0, v0}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
