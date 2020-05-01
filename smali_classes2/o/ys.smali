.class public final Lo/ys;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final a:Lo/ys;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/afz;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lo/afz;

.field private static d:Lo/afz;

.field private static final e:Lo/afz;

.field private static final i:Ljava/lang/String;

.field private static j:Lo/afz;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    new-instance v0, Lo/ys;

    invoke-direct {v0}, Lo/ys;-><init>()V

    sput-object v0, Lo/ys;->a:Lo/ys;

    .line 33
    new-instance v1, Lo/afz;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Locale.ENGLISH"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/afz;-><init>(Ljava/lang/String;)V

    sput-object v1, Lo/ys;->c:Lo/afz;

    .line 39
    new-instance v1, Lo/afz;

    const-string v2, "ar"

    const-string v4, "MA"

    const-string v5, "Arabic-Hindu"

    invoke-direct {v1, v2, v4, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lo/ys;->e:Lo/afz;

    const/16 v1, 0x2d

    new-array v1, v1, [Lo/afz;

    .line 46
    sget-object v4, Lo/ys;->c:Lo/afz;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 48
    new-instance v4, Lo/afz;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Locale.US"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "English-US"

    invoke-direct {v4, v5, v6, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 49
    new-instance v4, Lo/afz;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "Locale.UK"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v7, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "English-GB"

    invoke-direct {v4, v5, v6, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 50
    new-instance v4, Lo/afz;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IE"

    const-string v7, "English-IE"

    invoke-direct {v4, v5, v6, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 51
    new-instance v4, Lo/afz;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AU"

    const-string v7, "English-AU"

    invoke-direct {v4, v5, v6, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v1, v5

    .line 52
    new-instance v4, Lo/afz;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NZ"

    const-string v7, "English-NZ"

    invoke-direct {v4, v5, v6, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v4, v1, v5

    .line 53
    new-instance v4, Lo/afz;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "IN"

    const-string v6, "English-IN"

    invoke-direct {v4, v3, v5, v6}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v4, v1, v3

    .line 55
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v5, "Locale.FRENCH"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "Fran\u00e7ais"

    invoke-direct {v3, v4, v6, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 56
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string v7, "Locale.CANADA"

    invoke-static {v5, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Fran\u00e7ais-CA"

    invoke-direct {v3, v4, v5, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 58
    new-instance v3, Lo/afz;

    const-string v4, "es"

    const-string v5, "Espa\u00f1ol"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 59
    new-instance v3, Lo/afz;

    const-string v5, "ES"

    const-string v7, "espa\u00f1ol-ES"

    invoke-direct {v3, v4, v5, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 60
    new-instance v3, Lo/afz;

    const-string v5, "AD"

    const-string v7, "espa\u00f1ol-AD"

    invoke-direct {v3, v4, v5, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 62
    new-instance v3, Lo/afz;

    const-string v4, "pt"

    const-string v5, "Portugu\u00eas"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc

    aput-object v3, v1, v5

    .line 63
    new-instance v3, Lo/afz;

    const-string v5, "PT"

    const-string v7, "Portugu\u00eas-PT"

    invoke-direct {v3, v4, v5, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xd

    aput-object v3, v1, v5

    .line 64
    new-instance v3, Lo/afz;

    const-string v5, "BR"

    const-string v7, "Portugu\u00eas-BR"

    invoke-direct {v3, v4, v5, v7}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 67
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v5, "Locale.CHINESE"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7b80\u5316\u5b57"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 68
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v7, "Locale.SIMPLIFIED_CHINESE"

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v8, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v8, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 69
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const-string v8, "Locale.TRADITIONAL_CHINESE"

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57"

    invoke-direct {v3, v4, v9, v10}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 70
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v9, "SG"

    invoke-direct {v3, v4, v9, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 71
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v9, "MO"

    invoke-direct {v3, v4, v9, v10}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 72
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v9, "HK"

    invoke-direct {v3, v4, v9, v10}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 73
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Hans"

    invoke-direct {v3, v4, v7, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 74
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hant"

    invoke-direct {v3, v4, v5, v10}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 76
    new-instance v3, Lo/afz;

    const-string v4, "sv"

    const-string v5, "Svenskt"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 77
    new-instance v3, Lo/afz;

    const-string v4, "nb"

    const-string v5, "Norske"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x18

    aput-object v3, v1, v4

    .line 78
    new-instance v3, Lo/afz;

    const-string v4, "da"

    const-string v5, "Dansk"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x19

    aput-object v3, v1, v4

    .line 79
    new-instance v3, Lo/afz;

    const-string v4, "fi"

    const-string v5, "Suomi"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    .line 80
    new-instance v3, Lo/afz;

    const-string v4, "nl"

    const-string v5, "Nederlands"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    .line 81
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v5, "Locale.GERMAN"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Deutsch"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    .line 82
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string v5, "Locale.JAPAN"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u65e5\u672c\u8a9e"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    .line 83
    new-instance v3, Lo/afz;

    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    const-string v5, "Locale.ITALY"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "italiano"

    invoke-direct {v3, v4, v6, v5}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    .line 84
    new-instance v3, Lo/afz;

    const-string v4, "Arabic"

    invoke-direct {v3, v2, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v3, v1, v2

    .line 85
    sget-object v2, Lo/ys;->e:Lo/afz;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 86
    new-instance v2, Lo/afz;

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v4, "Locale.KOREAN"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\ud55c\uad6d\uc5b4/\uc870\uc120\ub9d0"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 87
    new-instance v2, Lo/afz;

    const-string v3, "tr"

    const-string v4, "T\u00fcrk\u00e7e"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 88
    new-instance v2, Lo/afz;

    const-string v3, "pl"

    const-string v4, "polszczyzna"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 89
    new-instance v2, Lo/afz;

    const-string v3, "th"

    const-string v4, "Thai"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Lo/afz;

    const-string v3, "ro"

    const-string v4, "limba rom\u00e2n\u0103"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 91
    new-instance v2, Lo/afz;

    const-string v3, "he"

    const-string v4, "\u05e2\u05d1\u05e8\u05d9\u05ea\u200e"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Lo/afz;

    const-string v3, "el"

    const-string v4, "\u03b5\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lo/afz;

    const-string v3, "id"

    const-string v4, "bahasa"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 94
    new-instance v2, Lo/afz;

    const-string v3, "sw"

    const-string v4, "Swahili"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 95
    new-instance v2, Lo/afz;

    const-string v3, "cs"

    const-string v4, "Czech"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 96
    new-instance v2, Lo/afz;

    const-string v3, "hu"

    const-string v4, "Hungarian"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 97
    new-instance v2, Lo/afz;

    const-string v3, "vi"

    const-string v4, "Vietnamese"

    invoke-direct {v2, v3, v6, v4}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 46
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/ys;->b:Ljava/util/List;

    .line 109
    sget-object v1, Lo/ys;->b:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserLocaleRepository$supportedLocales$1;->e:Lcom/netflix/mediaclient/service/user/UserLocaleRepository$supportedLocales$1;

    move-object v8, v1

    check-cast v8, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/ys;->i:Ljava/lang/String;

    .line 112
    check-cast v0, Lo/MessagePdu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "nf_loc"

    .line 26
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final e(Landroid/content/Context;Lo/afz;)V
    .locals 3

    .line 116
    sput-object p2, Lo/ys;->d:Lo/afz;

    const-string v0, "app_locale_last_used"

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p2}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/UiLocale;

    invoke-virtual {p2}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/context/UiLocale;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 122
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p2}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CarrierIdentifier;->e(Ljava/util/Locale;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    :goto_0
    sget-object p1, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {p1}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 327
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/jE;

    if-eqz p2, :cond_1

    .line 128
    invoke-virtual {p2}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_locale"

    invoke-interface {v0, v2, v1}, Lo/jE;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lo/ys;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "alertedLanguages"

    const/4 v1, 0x0

    .line 237
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 245
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ","

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->c(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 394
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 396
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    .line 398
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {p1, v1}, Lo/akz;->e(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 402
    :cond_2
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    new-array v1, v2, [Ljava/lang/String;

    .line 404
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 244
    check-cast p1, [Ljava/lang/String;

    .line 246
    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 404
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Lo/afz;
    .locals 3

    .line 147
    sget-object v0, Lo/ys;->d:Lo/afz;

    if-eqz v0, :cond_0

    .line 149
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-object v0

    .line 151
    :cond_0
    sget-object v0, Lo/ys;->j:Lo/afz;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.util.l10n.UserLocale"

    if-eqz v0, :cond_2

    .line 152
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    if-eqz v0, :cond_1

    return-object v0

    .line 153
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    const-string v2, "app_locale_last_used"

    .line 156
    invoke-static {p1, v2, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 162
    new-instance v0, Lo/afz;

    invoke-direct {v0, p1}, Lo/afz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ys;->j:Lo/afz;

    .line 163
    sget-object p1, Lo/ys;->j:Lo/afz;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_4
    invoke-virtual {p0}, Lo/ys;->e()Lo/afz;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Lo/afz;)V
    .locals 1

    .line 218
    sget-object v0, Lo/ys;->d:Lo/afz;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 221
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 222
    invoke-direct {p0, p1, p2}, Lo/ys;->e(Landroid/content/Context;Lo/afz;)V

    :goto_0
    return-void
.end method

.method public final c([Ljava/lang/String;)Lo/afz;
    .locals 8

    const/4 v0, 0x0

    .line 178
    move-object v1, v0

    check-cast v1, Lo/afz;

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 181
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    .line 182
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 183
    new-instance v7, Lo/afz;

    invoke-direct {v7, v6}, Lo/afz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 188
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-object v0

    .line 191
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afz;

    .line 192
    invoke-virtual {v0}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo/ys;->e:Lo/afz;

    invoke-virtual {v3}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    sget-object p1, Lo/ys;->e:Lo/afz;

    return-object p1

    .line 196
    :cond_5
    sget-object v2, Lo/ys;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/afz;

    .line 197
    move-object v4, p0

    check-cast v4, Lo/MessagePdu;

    .line 198
    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_7
    if-nez v1, :cond_6

    .line 201
    invoke-virtual {v0, v3}, Lo/afz;->c(Lo/afz;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v1, v3

    goto :goto_2

    .line 208
    :cond_8
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-object v1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    .line 254
    invoke-virtual {p0, p1}, Lo/ys;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0, p1}, Lo/ys;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lo/ys;->e()Lo/afz;

    move-result-object v1

    invoke-virtual {v1}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeviceLocale().language"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_1
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alertedLanguages"

    .line 269
    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized d(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 231
    :try_start_0
    check-cast v0, Lo/afz;

    sput-object v0, Lo/ys;->j:Lo/afz;

    const-string v0, "app_locale_last_used"

    .line 232
    invoke-static {p1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Z
    .locals 3

    .line 277
    invoke-virtual {p0}, Lo/ys;->e()Lo/afz;

    move-result-object v0

    .line 279
    sget-object v1, Lo/ys;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/afz;

    .line 280
    invoke-virtual {v0, v2}, Lo/afz;->c(Lo/afz;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final e()Lo/afz;
    .locals 4

    .line 302
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance v2, Lo/afz;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lo/afz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 309
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 310
    sget-object v0, Lo/ys;->c:Lo/afz;

    return-object v0
.end method

.method public final e(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-virtual {p0, p2}, Lo/ys;->c([Ljava/lang/String;)Lo/afz;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/ys;->b(Landroid/content/Context;Lo/afz;)V

    return-void
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 3

    .line 289
    invoke-virtual {p0, p1}, Lo/ys;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 290
    invoke-virtual {p0}, Lo/ys;->e()Lo/afz;

    move-result-object v0

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
