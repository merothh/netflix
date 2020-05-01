.class public Lcom/ibm/icu/impl/locale/KeyTypeData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$Type;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;,
        Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static BCP47_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static DEPRECATED_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static DEPRECATED_KEY_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final KEYMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DATA:[[Ljava/lang/Object;

.field static VALUE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 399
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [[Ljava/lang/Object;

    .line 537
    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    .line 661
    invoke-static {}, Lcom/ibm/icu/impl/locale/KeyTypeData;->initFromResourceBundle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyInfo(Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 8

    .line 422
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 423
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 424
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v3

    .line 428
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 430
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 432
    sget-object v6, Lcom/ibm/icu/impl/locale/KeyTypeData$1;->$SwitchMap$com$ibm$icu$impl$locale$KeyTypeData$KeyInfoType:[I

    invoke-virtual {v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 434
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 443
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/ibm/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    return-void
.end method

.method private static getTypeInfo(Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 9

    .line 459
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 460
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 461
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;

    move-result-object v2

    .line 464
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 467
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 468
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 470
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 471
    sget-object v7, Lcom/ibm/icu/impl/locale/KeyTypeData$1;->$SwitchMap$com$ibm$icu$impl$locale$KeyTypeData$TypeInfoType:[I

    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$TypeInfoType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/ibm/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    return-void
.end method

.method private static initFromResourceBundle()V
    .locals 20

    .line 213
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt59b"

    const-string v2, "keyTypeData"

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "keyInfo"

    .line 218
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/KeyTypeData;->getKeyInfo(Lcom/ibm/icu/util/UResourceBundle;)V

    const-string v1, "typeInfo"

    .line 219
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/KeyTypeData;->getTypeInfo(Lcom/ibm/icu/util/UResourceBundle;)V

    const-string v1, "keyMap"

    .line 221
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "typeMap"

    .line 222
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    :try_start_0
    const-string v4, "typeAlias"

    .line 229
    invoke-virtual {v0, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    :goto_0
    :try_start_1
    const-string v5, "bcpTypeAlias"

    .line 235
    invoke-virtual {v0, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    .line 241
    :goto_1
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v1

    .line 242
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    :goto_2
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 245
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 246
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    move-object v6, v7

    const/4 v8, 0x1

    goto :goto_3

    :cond_0
    const/4 v8, 0x0

    .line 255
    :goto_3
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 256
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "timezone"

    .line 258
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x2f

    const/16 v14, 0x3a

    if-eqz v4, :cond_3

    .line 265
    :try_start_2
    invoke-virtual {v4, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v15
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_3

    .line 270
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v15

    .line 272
    :goto_5
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 273
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v16

    .line 274
    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 275
    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_1

    .line 277
    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 279
    :cond_1
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    if-nez v16, :cond_2

    .line 281
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 282
    invoke-interface {v3, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_2
    move-object/from16 v13, v16

    .line 284
    :goto_6
    invoke-interface {v13, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x2f

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_6

    .line 294
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v9
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_6

    .line 299
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 300
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v9

    .line 301
    :goto_8
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 302
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v13

    .line 303
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 304
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v13

    .line 305
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    if-nez v16, :cond_5

    .line 307
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 308
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_5
    move-object/from16 v14, v16

    .line 310
    :goto_9
    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x3a

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    .line 315
    :cond_7
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 321
    :try_start_4
    invoke-virtual {v2, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v13
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_11

    .line 327
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v13

    const/4 v14, 0x0

    .line 328
    :goto_b
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 329
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v15

    move-object/from16 v16, v0

    .line 330
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {v15}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x39

    if-ge v1, v2, :cond_8

    const/16 v1, 0x61

    if-ge v2, v1, :cond_8

    .line 335
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_c

    :cond_8
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_b

    if-nez v14, :cond_9

    .line 338
    const-class v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v14

    .line 340
    :cond_9
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v19

    goto :goto_b

    :cond_b
    const/16 v1, 0x2f

    const/16 v2, 0x3a

    if-eqz v12, :cond_c

    .line 348
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x1

    move-object v15, v0

    goto :goto_d

    :cond_d
    const/16 v18, 0x0

    .line 357
    :goto_d
    invoke-virtual {v11, v15}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;

    invoke-direct {v1, v0, v15}, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v18, :cond_e

    .line 366
    invoke-static {v15}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v3, :cond_f

    .line 371
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_f

    .line 373
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_f
    if-eqz v10, :cond_a

    .line 379
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_a

    .line 381
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    goto :goto_10

    :cond_11
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    const/4 v14, 0x0

    .line 389
    :goto_10
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    invoke-direct {v0, v7, v6, v9, v14}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    .line 391
    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v7}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_12

    .line 393
    sget-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v19

    goto/16 :goto_2

    .line 396
    :cond_13
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    return-void
.end method

.method public static toBcpKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toBcpType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 143
    iput-object v0, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 146
    iput-object v0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_2

    .line 155
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;

    if-eqz p2, :cond_3

    .line 159
    iget-object p0, p2, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    return-object p0

    .line 161
    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz p2, :cond_6

    .line 162
    iget-object p0, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 163
    iget-object v0, p2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_5

    const/4 p0, 0x1

    .line 165
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 167
    :cond_5
    iget-object p0, p2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 132
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 180
    iput-object v0, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 183
    iput-object v0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 186
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_2

    .line 192
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 194
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;

    if-eqz p2, :cond_3

    .line 196
    iget-object p0, p2, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    return-object p0

    .line 198
    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz p2, :cond_6

    .line 199
    iget-object p0, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 200
    iget-object v0, p2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_5

    const/4 p0, 0x1

    .line 202
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 204
    :cond_5
    iget-object p0, p2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
