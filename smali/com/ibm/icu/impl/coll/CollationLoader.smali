.class public final Lcom/ibm/icu/impl/coll/CollationLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationLoader$ASCII;
    }
.end annotation


# static fields
.field private static volatile rootRules:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static final findWithFallback(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 0

    .line 92
    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static loadTailoring(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/impl/coll/CollationTailoring;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Lcom/ibm/icu/impl/coll/CollationTailoring;"
        }
    .end annotation

    const-string v0, "com/ibm/icu/impl/data/icudt59b/coll"

    .line 101
    invoke-static {}, Lcom/ibm/icu/impl/coll/CollationRoot;->getRoot()Lcom/ibm/icu/impl/coll/CollationTailoring;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 110
    :cond_0
    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    .line 118
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    :cond_1
    sget-object v4, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 125
    :cond_2
    iput-object v4, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :try_start_1
    const-string v5, "collations"

    .line 130
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    const-string v5, "collation"

    .line 139
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    move-object v6, v2

    check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v7, "default"

    invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "standard"

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v6, v8

    :goto_0
    if-eqz p0, :cond_6

    .line 147
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 150
    :cond_5
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    :goto_1
    move-object p0, v6

    .line 159
    :goto_2
    invoke-static {v2, p0}, Lcom/ibm/icu/impl/coll/CollationLoader;->findWithFallback(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    const-string v9, "search"

    if-nez v7, :cond_7

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-le v10, v11, :cond_7

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 165
    invoke-static {v2, v9}, Lcom/ibm/icu/impl/coll/CollationLoader;->findWithFallback(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    move-object p0, v9

    :cond_7
    if-nez v7, :cond_8

    .line 168
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 172
    invoke-static {v2, v6}, Lcom/ibm/icu/impl/coll/CollationLoader;->findWithFallback(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    move-object p0, v6

    :cond_8
    if-nez v7, :cond_9

    .line 175
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 179
    invoke-static {v2, v8}, Lcom/ibm/icu/impl/coll/CollationLoader;->findWithFallback(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    move-object p0, v8

    :cond_9
    if-nez v7, :cond_a

    return-object v1

    .line 187
    :cond_a
    invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v9

    .line 191
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 192
    :cond_b
    sget-object v2, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 193
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v1

    .line 198
    :cond_c
    new-instance v3, Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v8, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-direct {v3, v8}, Lcom/ibm/icu/impl/coll/CollationTailoring;-><init>(Lcom/ibm/icu/impl/coll/SharedObject$Reference;)V

    .line 199
    iput-object v2, v3, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    const-string v8, "%%CollationBin"

    .line 202
    invoke-virtual {v7, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    .line 203
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 205
    :try_start_2
    invoke-static {v1, v8, v3}, Lcom/ibm/icu/impl/coll/CollationDataReader;->read(Lcom/ibm/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v1, "Sequence"

    .line 213
    invoke-virtual {v7, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/coll/CollationTailoring;->setRulesResource(Lcom/ibm/icu/util/UResourceBundle;)V
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 220
    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 221
    invoke-virtual {v4, v5, p0}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 229
    :cond_d
    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 231
    invoke-static {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    .line 233
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v0, "collations/default"

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move-object p1, v6

    .line 239
    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 240
    iget-object p1, v3, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1, v5, p0}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    iput-object p0, v3, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :cond_f
    return-object v3

    :catch_1
    move-exception p1

    .line 207
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load collation tailoring data for locale:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    return-object v1

    .line 114
    :catch_3
    sget-object p0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    iput-object p0, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    return-object v1

    .line 104
    :cond_10
    :goto_5
    sget-object p0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    iput-object p0, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    return-object v1
.end method
