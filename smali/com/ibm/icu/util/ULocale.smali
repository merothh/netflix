.class public final Lcom/ibm/icu/util/ULocale;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;,
        Lcom/ibm/icu/util/ULocale$Type;,
        Lcom/ibm/icu/util/ULocale$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type; = null

.field private static final CACHE:Lcom/ibm/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SoftCache<",
            "Ljava/util/Locale;",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final CANADA:Lcom/ibm/icu/util/ULocale;

.field public static final CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;

.field private static CANONICALIZE_MAP:[[Ljava/lang/String; = null

.field public static final CHINA:Lcom/ibm/icu/util/ULocale;

.field public static final CHINESE:Lcom/ibm/icu/util/ULocale;

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field public static final ENGLISH:Lcom/ibm/icu/util/ULocale;

.field public static final FRANCE:Lcom/ibm/icu/util/ULocale;

.field public static final FRENCH:Lcom/ibm/icu/util/ULocale;

.field public static final GERMAN:Lcom/ibm/icu/util/ULocale;

.field public static final GERMANY:Lcom/ibm/icu/util/ULocale;

.field public static final ITALIAN:Lcom/ibm/icu/util/ULocale;

.field public static final ITALY:Lcom/ibm/icu/util/ULocale;

.field public static final JAPAN:Lcom/ibm/icu/util/ULocale;

.field public static final JAPANESE:Lcom/ibm/icu/util/ULocale;

.field public static final KOREA:Lcom/ibm/icu/util/ULocale;

.field public static final KOREAN:Lcom/ibm/icu/util/ULocale;

.field public static final PRC:Lcom/ibm/icu/util/ULocale;

.field public static final ROOT:Lcom/ibm/icu/util/ULocale;

.field public static final SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;

.field public static final TAIWAN:Lcom/ibm/icu/util/ULocale;

.field public static final TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;

.field public static final UK:Lcom/ibm/icu/util/ULocale;

.field public static final US:Lcom/ibm/icu/util/ULocale;

.field public static VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type; = null

.field private static defaultCategoryLocales:[Ljava/util/Locale; = null

.field private static defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static defaultULocale:Lcom/ibm/icu/util/ULocale; = null

.field private static nameCache:Lcom/ibm/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x338ef66846d00be1L

.field private static variantsToKeywords:[[Ljava/lang/String;


# instance fields
.field private volatile transient baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

.field private volatile transient extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

.field private volatile transient locale:Ljava/util/Locale;

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 120
    new-instance v0, Lcom/ibm/icu/util/ULocale$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/CacheBase;

    .line 131
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ENGLISH:Lcom/ibm/icu/util/ULocale;

    .line 137
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v2, "fr"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->FRENCH:Lcom/ibm/icu/util/ULocale;

    .line 143
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v2, "de"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->GERMAN:Lcom/ibm/icu/util/ULocale;

    .line 149
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v3, "it"

    invoke-direct {v0, v3, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ITALIAN:Lcom/ibm/icu/util/ULocale;

    .line 155
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v3, "ja"

    invoke-direct {v0, v3, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->JAPANESE:Lcom/ibm/icu/util/ULocale;

    .line 161
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v3, "ko"

    invoke-direct {v0, v3, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->KOREAN:Lcom/ibm/icu/util/ULocale;

    .line 167
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v3, "zh"

    invoke-direct {v0, v3, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 196
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v1, "zh_Hans"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 203
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v4, "zh_Hant"

    invoke-direct {v0, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 209
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    const-string v6, "fr_FR"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->FRANCE:Lcom/ibm/icu/util/ULocale;

    .line 215
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const-string v7, "de_DE"

    invoke-direct {v0, v7, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->GERMANY:Lcom/ibm/icu/util/ULocale;

    .line 221
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    const-string v8, "it_IT"

    invoke-direct {v0, v8, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ITALY:Lcom/ibm/icu/util/ULocale;

    .line 227
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string v9, "ja_JP"

    invoke-direct {v0, v9, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->JAPAN:Lcom/ibm/icu/util/ULocale;

    .line 233
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string v9, "ko_KR"

    invoke-direct {v0, v9, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->KOREA:Lcom/ibm/icu/util/ULocale;

    .line 239
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v5, "zh_Hans_CN"

    invoke-direct {v0, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;

    .line 245
    sget-object v0, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;

    sput-object v0, Lcom/ibm/icu/util/ULocale;->PRC:Lcom/ibm/icu/util/ULocale;

    .line 251
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v5, "zh_Hant_TW"

    invoke-direct {v0, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->TAIWAN:Lcom/ibm/icu/util/ULocale;

    .line 257
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v9, "en_GB"

    invoke-direct {v0, v9, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->UK:Lcom/ibm/icu/util/ULocale;

    .line 263
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "en_US"

    invoke-direct {v0, v9, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;

    .line 269
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string v9, "en_CA"

    invoke-direct {v0, v9, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CANADA:Lcom/ibm/icu/util/ULocale;

    .line 275
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    const-string v9, "fr_CA"

    invoke-direct {v0, v9, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;

    .line 286
    new-instance v0, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v0, v5, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    .line 295
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v9, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v5, v9}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 315
    new-instance v0, Lcom/ibm/icu/util/ULocale$2;

    invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SoftCache;

    const/16 v0, 0x32

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "C"

    const-string v10, "en_US_POSIX"

    .line 344
    filled-new-array {v9, v10, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v0, v10

    const-string v9, "art_LOJBAN"

    const-string v11, "jbo"

    filled-new-array {v9, v11, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v0, v11

    const-string v9, "az_AZ_CYRL"

    const-string v12, "az_Cyrl_AZ"

    filled-new-array {v9, v12, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v0, v12

    const-string v9, "az_AZ_LATN"

    const-string v12, "az_Latn_AZ"

    filled-new-array {v9, v12, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v0, v12

    const-string v9, "ESP"

    const-string v12, "currency"

    const-string v13, "ca_ES_PREEURO"

    const-string v14, "ca_ES"

    filled-new-array {v13, v14, v12, v9}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v0, v14

    const-string v13, "cel_GAULISH"

    const-string v14, "cel__GAULISH"

    filled-new-array {v13, v14, v5, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v0, v14

    const-string v13, "de_1901"

    const-string v14, "de__1901"

    filled-new-array {v13, v14, v5, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v0, v14

    const-string v13, "de_1906"

    const-string v14, "de__1906"

    filled-new-array {v13, v14, v5, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v0, v14

    const-string v13, "collation"

    const-string v14, "de__PHONEBOOK"

    const-string v15, "phonebook"

    filled-new-array {v14, v2, v13, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x8

    aput-object v2, v0, v14

    const-string v2, "de_AT_PREEURO"

    const-string v14, "de_AT"

    const-string v15, "ATS"

    filled-new-array {v2, v14, v12, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x9

    aput-object v2, v0, v14

    const-string v2, "de_DE_PREEURO"

    const-string v14, "DEM"

    filled-new-array {v2, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xa

    aput-object v2, v0, v7

    const-string v2, "de_LU_PREEURO"

    const-string v7, "de_LU"

    const-string v14, "EUR"

    filled-new-array {v2, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xb

    aput-object v2, v0, v7

    const-string v2, "el_GR_PREEURO"

    const-string v7, "el_GR"

    const-string v14, "GRD"

    filled-new-array {v2, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc

    aput-object v2, v0, v7

    const-string v2, "en_BOONT"

    const-string v7, "en__BOONT"

    filled-new-array {v2, v7, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xd

    aput-object v2, v0, v7

    const-string v2, "en_SCOUSE"

    const-string v7, "en__SCOUSE"

    filled-new-array {v2, v7, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe

    aput-object v2, v0, v7

    const-string v2, "BEF"

    const-string v7, "en_BE_PREEURO"

    const-string v14, "en_BE"

    filled-new-array {v7, v14, v12, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0xf

    aput-object v7, v0, v14

    const-string v7, "en_IE_PREEURO"

    const-string v14, "en_IE"

    const-string v15, "IEP"

    filled-new-array {v7, v14, v12, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x10

    aput-object v7, v0, v14

    const-string v7, "es__TRADITIONAL"

    const-string v14, "es"

    const-string v15, "traditional"

    filled-new-array {v7, v14, v13, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x11

    aput-object v7, v0, v14

    const-string v7, "es_ES_PREEURO"

    const-string v14, "es_ES"

    filled-new-array {v7, v14, v12, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x12

    aput-object v7, v0, v14

    const-string v7, "eu_ES_PREEURO"

    const-string v14, "eu_ES"

    filled-new-array {v7, v14, v12, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x13

    aput-object v7, v0, v14

    const-string v7, "fi_FI_PREEURO"

    const-string v14, "fi_FI"

    const-string v15, "FIM"

    filled-new-array {v7, v14, v12, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x14

    aput-object v7, v0, v14

    const-string v7, "fr_BE_PREEURO"

    const-string v14, "fr_BE"

    filled-new-array {v7, v14, v12, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x15

    aput-object v7, v0, v14

    const-string v7, "fr_FR_PREEURO"

    const-string v14, "FRF"

    filled-new-array {v7, v6, v12, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    aput-object v6, v0, v7

    const-string v6, "fr_LU_PREEURO"

    const-string v7, "fr_LU"

    const-string v14, "LUF"

    filled-new-array {v6, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    aput-object v6, v0, v7

    const-string v6, "ga_IE_PREEURO"

    const-string v7, "ga_IE"

    const-string v14, "IEP"

    filled-new-array {v6, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    aput-object v6, v0, v7

    const-string v6, "gl_ES_PREEURO"

    const-string v7, "gl_ES"

    filled-new-array {v6, v7, v12, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    aput-object v6, v0, v7

    const-string v6, "hi__DIRECT"

    const-string v7, "hi"

    const-string v9, "direct"

    filled-new-array {v6, v7, v13, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a

    aput-object v6, v0, v7

    const-string v6, "it_IT_PREEURO"

    const-string v7, "ITL"

    filled-new-array {v6, v8, v12, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b

    aput-object v6, v0, v7

    const-string v6, "ja_JP_TRADITIONAL"

    const-string v7, "ja_JP"

    const-string v8, "calendar"

    const-string v9, "japanese"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1c

    aput-object v6, v0, v7

    const-string v6, "nl_BE_PREEURO"

    const-string v7, "nl_BE"

    filled-new-array {v6, v7, v12, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1d

    aput-object v2, v0, v6

    const-string v2, "nl_NL_PREEURO"

    const-string v6, "nl_NL"

    const-string v7, "NLG"

    filled-new-array {v2, v6, v12, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1e

    aput-object v2, v0, v6

    const-string v2, "pt_PT_PREEURO"

    const-string v6, "pt_PT"

    const-string v7, "PTE"

    filled-new-array {v2, v6, v12, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1f

    aput-object v2, v0, v6

    const-string v2, "sl_ROZAJ"

    const-string v6, "sl__ROZAJ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x20

    aput-object v2, v0, v6

    const-string v2, "sr_SP_CYRL"

    const-string v6, "sr_Cyrl_RS"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x21

    aput-object v2, v0, v6

    const-string v2, "sr_SP_LATN"

    const-string v6, "sr_Latn_RS"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x22

    aput-object v2, v0, v6

    const-string v2, "sr_YU_CYRILLIC"

    const-string v6, "sr_Cyrl_RS"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x23

    aput-object v2, v0, v6

    const-string v2, "th_TH_TRADITIONAL"

    const-string v6, "th_TH"

    const-string v7, "calendar"

    const-string v8, "buddhist"

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x24

    aput-object v2, v0, v6

    const-string v2, "uz_UZ_CYRILLIC"

    const-string v6, "uz_Cyrl_UZ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x25

    aput-object v2, v0, v6

    const-string v2, "uz_UZ_CYRL"

    const-string v6, "uz_Cyrl_UZ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x26

    aput-object v2, v0, v6

    const-string v2, "uz_UZ_LATN"

    const-string v6, "uz_Latn_UZ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x27

    aput-object v2, v0, v6

    const-string v2, "zh_CHS"

    filled-new-array {v2, v1, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "zh_CHT"

    filled-new-array {v1, v4, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "zh_GAN"

    const-string v2, "zh__GAN"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "zh_GUOYU"

    filled-new-array {v1, v3, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "zh_HAKKA"

    const-string v2, "zh__HAKKA"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "zh_MIN"

    const-string v2, "zh__MIN"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "zh_MIN_NAN"

    const-string v2, "zh__MINNAN"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "zh_WUU"

    const-string v2, "zh__WUU"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "zh_XIANG"

    const-string v2, "zh__XIANG"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "zh_YUE"

    const-string v2, "zh__YUE"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "EURO"

    const-string v2, "EUR"

    .line 402
    filled-new-array {v1, v12, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "PINYIN"

    const-string v2, "pinyin"

    filled-new-array {v1, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "STROKE"

    const-string v2, "stroke"

    filled-new-array {v1, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    .line 547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 550
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Locale;

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    .line 551
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/ibm/icu/util/ULocale;

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    .line 554
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 564
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v10, v1, :cond_2

    aget-object v2, v0, v10

    .line 566
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v3

    .line 567
    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v4, v3

    .line 568
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 575
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->isOriginalDefaultLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "user.script"

    .line 577
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 578
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v2, v0, v3, v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 584
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 590
    :cond_1
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v10, v1, :cond_2

    aget-object v2, v0, v10

    .line 591
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 592
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    aput-object v4, v3, v2

    .line 593
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    aput-object v4, v3, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1979
    :cond_2
    new-instance v0, Lcom/ibm/icu/util/ULocale$Type;

    invoke-direct {v0, v5}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    .line 1995
    new-instance v0, Lcom/ibm/icu/util/ULocale$Type;

    invoke-direct {v0, v5}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 414
    iput-object p2, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/util/ULocale$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2441
    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2445
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2446
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 2449
    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    .line 2450
    invoke-static {v2, v3, v0, v1}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2456
    :cond_1
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 2710
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    .line 2711
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2714
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private base()Lcom/ibm/icu/impl/locale/BaseLocale;
    .locals 5

    .line 3982
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 3985
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3986
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3988
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3989
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 3990
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 3992
    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    .line 3994
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1221
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 1222
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 1229
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v3

    :cond_0
    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 1237
    :goto_0
    sget-object v4, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v3, v5, :cond_3

    .line 1238
    aget-object v4, v4, v3

    .line 1239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, p0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-le v5, v8, :cond_2

    .line 1243
    invoke-virtual {v2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1244
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/2addr v5, v8

    .line 1245
    invoke-virtual {v2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1247
    :cond_1
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1248
    aget-object v3, v4, v1

    aget-object v4, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 1254
    :goto_2
    sget-object v5, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    array-length v7, v5

    if-ge v4, v7, :cond_5

    .line 1255
    aget-object v5, v5, v4

    aget-object v5, v5, p0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1258
    sget-object p0, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object p0, p0, v4

    .line 1259
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1260
    aget-object v2, p0, v6

    if-eqz v2, :cond_6

    .line 1261
    aget-object v2, p0, v6

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0}, Lcom/ibm/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v1, v3

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 1269
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "nb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1270
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "nn"

    invoke-static {v3, p0, v1, v2}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1274
    :cond_7
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 504
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    check-cast v1, Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2959
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2962
    invoke-static {p0, p1, p2, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2968
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2988
    invoke-static {v1, v1, v1, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3000
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3003
    invoke-static {p0, p1, v1, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3009
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3014
    invoke-static {v1, v1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3026
    :cond_1
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3029
    invoke-static {p0, v1, p2, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3035
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3041
    invoke-static {v1, p1, v1, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3055
    :cond_2
    invoke-static {p0, v1, v1, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3061
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3067
    invoke-static {v1, p1, p2, p3, p0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2873
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2741
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2742
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2746
    :cond_0
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p0

    const-string v1, "und"

    if-eqz p0, :cond_1

    .line 2751
    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 2756
    :cond_1
    new-instance p0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 2765
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    .line 2764
    :cond_2
    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2769
    :goto_1
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2770
    invoke-static {p1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 2774
    :cond_3
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p0, :cond_4

    .line 2779
    new-instance p0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2782
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p1

    .line 2784
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2785
    invoke-static {p1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2791
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 2792
    invoke-static {p2, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_3
    const/4 p0, 0x1

    goto :goto_4

    .line 2798
    :cond_6
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez p0, :cond_7

    .line 2803
    new-instance p0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2806
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 2808
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2809
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_4
    if-eqz p3, :cond_e

    .line 2817
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_e

    .line 2825
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 p2, 0x2

    const/16 p4, 0x5f

    if-ne p1, p4, :cond_9

    .line 2826
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_a

    const/4 v1, 0x2

    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_5
    if-eqz p0, :cond_c

    if-ne v1, p2, :cond_b

    .line 2840
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2843
    :cond_b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    if-ne v1, v2, :cond_d

    .line 2852
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2854
    :cond_d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2858
    :cond_e
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .locals 6

    .line 3998
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_5

    .line 3999
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4001
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    goto/16 :goto_2

    .line 4003
    :cond_0
    new-instance v1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 4004
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4005
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "attribute"

    .line 4006
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 4008
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[-_]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4009
    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 4011
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4016
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    .line 4017
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4018
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 4021
    :try_start_1
    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_1
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 4026
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-eq v3, v5, :cond_1

    .line 4028
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_2
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4035
    :cond_4
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    .line 4038
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    return-object v0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 3415
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/locale/ParseStatus;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object p0

    .line 3416
    new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3417
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Lcom/ibm/icu/impl/locale/LanguageTag;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3418
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 436
    :cond_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SoftCache;

    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    .line 1094
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 1097
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lcom/ibm/icu/util/ULocale;
    .locals 8

    .line 623
    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    .line 624
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    if-nez v1, :cond_0

    .line 633
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    monitor-exit v0

    return-object v1

    .line 635
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 636
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 638
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 640
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-nez v2, :cond_1

    .line 644
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 645
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 646
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v6, v5

    .line 647
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 651
    :cond_1
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;
    .locals 8

    .line 690
    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    .line 692
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 696
    sget-object p0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    monitor-exit v0

    return-object p0

    .line 698
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object p0

    .line 700
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 701
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object p0, v2, v1

    .line 702
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_1

    .line 717
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 718
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 719
    sput-object p0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 720
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 722
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 723
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 724
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object p0, v6, v5

    .line 725
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 732
    :cond_2
    :goto_1
    sget-object p0, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object p0, p0, v1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 733
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1887
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1036
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x40

    .line 1055
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1057
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/16 v2, 0x5f

    .line 1059
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    if-lez v3, :cond_3

    add-int/lit8 v1, v3, -0x1

    .line 1065
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1071
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
    .locals 9

    .line 3915
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 3916
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 3915
    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3918
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 3919
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3924
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 3925
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 3926
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lcom/ibm/icu/impl/locale/Extension;

    move-result-object v4

    .line 3927
    instance-of v5, v4, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    if-eqz v5, :cond_6

    .line 3928
    check-cast v4, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    .line 3929
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v3

    .line 3930
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3931
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3933
    invoke-static {v5}, Lcom/ibm/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3934
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    const-string v6, "yes"

    :cond_1
    invoke-static {v5, v6}, Lcom/ibm/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "va"

    .line 3936
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "posix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 3937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_POSIX"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3939
    :cond_2
    invoke-virtual {v2, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3943
    :cond_3
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v3

    .line 3944
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3946
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3947
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/16 v6, 0x2d

    .line 3948
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3950
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3952
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attribute"

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3955
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3959
    :cond_7
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 3960
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "@"

    .line 3961
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3962
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 3964
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_8

    const-string v2, ";"

    .line 3966
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 3970
    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 3971
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3972
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3975
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3978
    :cond_a
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1210
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1188
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "@"

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1151
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 1158
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rg"

    .line 995
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 997
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZZZZ"

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x2

    .line 999
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 1005
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getShortestSubtagLength(Ljava/lang/String;)I
    .locals 9

    .line 1117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1123
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2699
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com/ibm/icu/impl/data/icudt59b"

    const-string v1, "likelySubtags"

    .line 2943
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 2946
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x5f

    if-eqz p1, :cond_1

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 514
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 517
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 518
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_5

    .line 521
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    if-eqz p2, :cond_3

    .line 522
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 523
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 2886
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2888
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2889
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 2890
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 2892
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v1, "und"

    .line 2893
    aput-object v1, p1, v5

    goto :goto_0

    .line 2896
    :cond_0
    aput-object v1, p1, v5

    :goto_0
    const-string v1, "Zzzz"

    .line 2899
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 2900
    aput-object v4, p1, v5

    goto :goto_1

    .line 2903
    :cond_1
    aput-object v2, p1, v5

    :goto_1
    const-string v1, "ZZ"

    .line 2906
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 2907
    aput-object v4, p1, v2

    goto :goto_2

    .line 2910
    :cond_2
    aput-object v3, p1, v2

    .line 2925
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 2927
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2928
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    :cond_3
    return p0

    :cond_4
    const/16 p1, 0x40

    .line 2935
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 2937
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_5
    return p1
.end method

.method public static setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1311
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3499
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "[0-9a-zA-Z]+"

    .line 3509
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3510
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3543
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    .line 3554
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3555
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3442
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3443
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3445
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3478
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3479
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3481
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public compareTo(Lcom/ibm/icu/util/ULocale;)I
    .locals 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_a

    .line 819
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 822
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 825
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 828
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v4

    .line 829
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v5

    if-nez v4, :cond_1

    if-nez v5, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    if-nez v1, :cond_8

    .line 837
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 838
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 843
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 845
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 848
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-virtual {p1, v6}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_5

    if-nez v6, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    .line 855
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_7
    move v1, v7

    goto :goto_0

    :cond_8
    :goto_1
    if-nez v1, :cond_a

    .line 859
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 v1, -0x1

    :cond_a
    :goto_2
    if-gez v1, :cond_b

    const/4 v0, -0x1

    goto :goto_3

    :cond_b
    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 115
    check-cast p1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ULocale;->compareTo(Lcom/ibm/icu/util/ULocale;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 790
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/util/ULocale;

    iget-object p1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 957
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1849
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFallback()Lcom/ibm/icu/util/ULocale;
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1048
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 913
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 935
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 1017
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 1292
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    check-cast p2, Ljava/util/Locale;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 5

    .line 3242
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 3243
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    .line 3245
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POSIX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3247
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v2, v3, v0, v4}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    const-string v2, "va"

    .line 3248
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3250
    new-instance v3, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3252
    :try_start_0
    sget-object v4, Lcom/ibm/icu/impl/locale/BaseLocale;->ROOT:Lcom/ibm/icu/impl/locale/BaseLocale;

    invoke-virtual {v3, v4, v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    const-string v1, "posix"

    .line 3253
    invoke-virtual {v3, v2, v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3254
    invoke-virtual {v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3257
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3262
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object v0

    .line 3264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3265
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 3266
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3267
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3271
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "-"

    if-lez v3, :cond_2

    .line 3272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3273
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 3277
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3282
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v2

    .line 3283
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3288
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v2

    .line 3289
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3294
    :cond_5
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v0

    .line 3295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 3296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 3297
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v2, "x"

    .line 3299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 539
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toLocale(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method
