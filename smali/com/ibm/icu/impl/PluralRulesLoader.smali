.class public Lcom/ibm/icu/impl/PluralRulesLoader;
.super Lcom/ibm/icu/text/PluralRules$Factory;
.source ""


# static fields
.field private static final UNKNOWN_RANGE:Lcom/ibm/icu/text/PluralRanges;

.field public static final loader:Lcom/ibm/icu/impl/PluralRulesLoader;

.field private static localeIdToPluralRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRanges;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localeIdToCardinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeIdToOrdinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final rulesIdToRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 252
    new-instance v0, Lcom/ibm/icu/impl/PluralRulesLoader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/PluralRulesLoader;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    .line 262
    new-instance v0, Lcom/ibm/icu/text/PluralRanges;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRanges;-><init>()V

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRanges;->freeze()Lcom/ibm/icu/text/PluralRanges;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Lcom/ibm/icu/text/PluralRanges;

    const/16 v0, 0xab

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "locales"

    const-string v2, "id ja km ko lo ms my th vi zh"

    .line 285
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "other"

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const-string v4, "am bn fr gu hi hy kn mr pa zu"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v0, v6

    const-string v4, "one"

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v0, v8

    const-string v7, "fa"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v0, v8

    const-string v7, "ka"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v0, v8

    const-string v7, "az de el gl hu it kk ky ml mn ne nl pt sq sw ta te tr ug uz"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v0, v8

    const-string v7, "af bg ca en es et eu fi nb sv ur"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x15

    aput-object v7, v0, v8

    const-string v7, "da fil is"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x16

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x17

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x19

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a

    aput-object v7, v0, v8

    const-string v7, "si"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1c

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1d

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f

    aput-object v7, v0, v8

    const-string v7, "mk"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x21

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x22

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x23

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    aput-object v7, v0, v8

    const-string v7, "lv"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x25

    aput-object v7, v0, v8

    const-string v7, "zero"

    filled-new-array {v7, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x26

    aput-object v8, v0, v9

    filled-new-array {v7, v4, v4}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x27

    aput-object v8, v0, v9

    filled-new-array {v7, v2, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x28

    aput-object v8, v0, v9

    filled-new-array {v4, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x29

    aput-object v8, v0, v9

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2a

    aput-object v8, v0, v9

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2b

    aput-object v8, v0, v9

    filled-new-array {v2, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2c

    aput-object v8, v0, v9

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2d

    aput-object v8, v0, v9

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    aput-object v8, v0, v9

    const-string v8, "ro"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    aput-object v8, v0, v9

    const-string v8, "few"

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    aput-object v9, v0, v10

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x31

    aput-object v9, v0, v10

    filled-new-array {v8, v4, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x32

    aput-object v9, v0, v10

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x33

    aput-object v9, v0, v10

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x34

    aput-object v9, v0, v10

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x35

    aput-object v9, v0, v10

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x36

    aput-object v9, v0, v10

    const-string v9, "hr sr bs"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x37

    aput-object v9, v0, v10

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x38

    aput-object v9, v0, v10

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x39

    aput-object v9, v0, v10

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3a

    aput-object v9, v0, v10

    filled-new-array {v8, v4, v4}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3b

    aput-object v9, v0, v10

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3c

    aput-object v9, v0, v10

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3d

    aput-object v9, v0, v10

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e

    aput-object v9, v0, v10

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3f

    aput-object v9, v0, v10

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x40

    aput-object v9, v0, v10

    const-string v9, "sl"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x41

    aput-object v9, v0, v10

    filled-new-array {v4, v4, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    aput-object v9, v0, v10

    const-string v9, "two"

    filled-new-array {v4, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x43

    aput-object v10, v0, v11

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x44

    aput-object v10, v0, v11

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x45

    aput-object v10, v0, v11

    filled-new-array {v9, v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x46

    aput-object v10, v0, v11

    filled-new-array {v9, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x47

    aput-object v10, v0, v11

    filled-new-array {v9, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x48

    aput-object v10, v0, v11

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x49

    aput-object v10, v0, v11

    filled-new-array {v8, v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4a

    aput-object v10, v0, v11

    filled-new-array {v8, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4b

    aput-object v10, v0, v11

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4c

    aput-object v10, v0, v11

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4d

    aput-object v10, v0, v11

    filled-new-array {v2, v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4e

    aput-object v10, v0, v11

    filled-new-array {v2, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4f

    aput-object v10, v0, v11

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x50

    aput-object v10, v0, v11

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x51

    aput-object v10, v0, v11

    const-string v10, "he"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x52

    aput-object v10, v0, v11

    filled-new-array {v4, v9, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x53

    aput-object v10, v0, v11

    const-string v10, "many"

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x54

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x55

    aput-object v11, v0, v12

    filled-new-array {v9, v10, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x56

    aput-object v11, v0, v12

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x57

    aput-object v11, v0, v12

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x58

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x59

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5a

    aput-object v11, v0, v12

    filled-new-array {v2, v9, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5b

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5c

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5d

    aput-object v11, v0, v12

    const-string v11, "cs pl sk"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5e

    aput-object v11, v0, v12

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5f

    aput-object v11, v0, v12

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x60

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x61

    aput-object v11, v0, v12

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x62

    aput-object v11, v0, v12

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x63

    aput-object v11, v0, v12

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x64

    aput-object v11, v0, v12

    filled-new-array {v10, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    aput-object v11, v0, v12

    filled-new-array {v10, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x66

    aput-object v11, v0, v12

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x67

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x68

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x69

    aput-object v11, v0, v12

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6a

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6b

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6c

    aput-object v11, v0, v12

    const-string v11, "lt ru uk"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6d

    aput-object v11, v0, v12

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6e

    aput-object v11, v0, v12

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6f

    aput-object v11, v0, v12

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x70

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x71

    aput-object v11, v0, v12

    filled-new-array {v8, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x72

    aput-object v11, v0, v12

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x73

    aput-object v11, v0, v12

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x74

    aput-object v11, v0, v12

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x75

    aput-object v11, v0, v12

    filled-new-array {v10, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x76

    aput-object v11, v0, v12

    filled-new-array {v10, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x77

    aput-object v11, v0, v12

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x78

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x79

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7a

    aput-object v11, v0, v12

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7b

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7c

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7d

    aput-object v11, v0, v12

    const-string v11, "cy"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7e

    aput-object v11, v0, v12

    filled-new-array {v7, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7f

    aput-object v11, v0, v12

    filled-new-array {v7, v9, v9}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    aput-object v11, v0, v12

    filled-new-array {v7, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x81

    aput-object v11, v0, v12

    filled-new-array {v7, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x82

    aput-object v11, v0, v12

    filled-new-array {v7, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x83

    aput-object v11, v0, v12

    filled-new-array {v4, v9, v9}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x84

    aput-object v11, v0, v12

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x85

    aput-object v11, v0, v12

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x86

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x87

    aput-object v11, v0, v12

    filled-new-array {v9, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x88

    aput-object v11, v0, v12

    filled-new-array {v9, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x89

    aput-object v11, v0, v12

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8a

    aput-object v11, v0, v12

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8b

    aput-object v11, v0, v12

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8c

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8d

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8e

    aput-object v11, v0, v12

    filled-new-array {v2, v9, v9}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8f

    aput-object v11, v0, v12

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x90

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x91

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x92

    aput-object v11, v0, v12

    const-string v11, "ar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x93

    aput-object v11, v0, v12

    filled-new-array {v7, v4, v7}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x94

    aput-object v11, v0, v12

    filled-new-array {v7, v9, v7}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x95

    aput-object v11, v0, v12

    filled-new-array {v7, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x96

    aput-object v11, v0, v12

    filled-new-array {v7, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x97

    aput-object v11, v0, v12

    filled-new-array {v7, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x98

    aput-object v7, v0, v11

    filled-new-array {v4, v9, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x99

    aput-object v7, v0, v11

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9a

    aput-object v7, v0, v11

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9b

    aput-object v7, v0, v11

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9c

    aput-object v7, v0, v11

    filled-new-array {v9, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9d

    aput-object v7, v0, v11

    filled-new-array {v9, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9e

    aput-object v7, v0, v11

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9f

    aput-object v7, v0, v11

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa0

    aput-object v7, v0, v11

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa1

    aput-object v7, v0, v11

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa2

    aput-object v7, v0, v11

    filled-new-array {v10, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa3

    aput-object v7, v0, v11

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa4

    aput-object v7, v0, v11

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa5

    aput-object v7, v0, v11

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa6

    aput-object v4, v0, v7

    filled-new-array {v2, v9, v2}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa7

    aput-object v4, v0, v7

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa8

    aput-object v4, v0, v7

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa9

    aput-object v4, v0, v7

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xaa

    aput-object v2, v0, v4

    .line 477
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 478
    array-length v4, v0

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v10, v0, v7

    .line 479
    aget-object v11, v10, v3

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v9, :cond_0

    .line 481
    invoke-virtual {v9}, Lcom/ibm/icu/text/PluralRanges;->freeze()Lcom/ibm/icu/text/PluralRanges;

    .line 482
    array-length v11, v8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    aget-object v13, v8, v12

    .line 483
    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 486
    :cond_0
    aget-object v8, v10, v5

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 487
    new-instance v9, Lcom/ibm/icu/text/PluralRanges;

    invoke-direct {v9}, Lcom/ibm/icu/text/PluralRanges;-><init>()V

    goto :goto_2

    .line 489
    :cond_1
    aget-object v11, v10, v3

    .line 490
    invoke-static {v11}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v11

    aget-object v12, v10, v5

    .line 491
    invoke-static {v12}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v12

    aget-object v10, v10, v6

    .line 492
    invoke-static {v10}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v10

    .line 489
    invoke-virtual {v9, v11, v12, v10}, Lcom/ibm/icu/text/PluralRanges;->add(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 496
    :cond_2
    array-length v0, v8

    :goto_3
    if-ge v3, v0, :cond_3

    aget-object v1, v8, v3

    .line 497
    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 500
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules$Factory;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    return-void
.end method

.method private checkBuildRulesIdMaps()V
    .locals 9

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_5

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v2, "locales"

    .line 115
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 122
    :goto_1
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 123
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 129
    new-instance v8, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v8, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "locales_ordinals"

    .line 134
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 135
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 136
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 137
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 149
    :cond_3
    monitor-enter p0

    .line 150
    :try_start_2
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 151
    iput-object v3, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    .line 152
    iput-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    .line 153
    iput-object v4, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    .line 155
    :cond_4
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 107
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 87
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesForRulesId(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p1

    if-nez p1, :cond_1

    .line 244
    sget-object p1, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    :cond_1
    return-object p1

    .line 240
    :cond_2
    :goto_0
    sget-object p1, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    return-object p1
.end method

.method public getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;
    .locals 4

    .line 228
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt59b"

    const-string v2, "plurals"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getRulesForRulesId(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/PluralRules;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 191
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 194
    :try_start_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "rules"

    .line 195
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 199
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 200
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    if-lez v3, :cond_1

    const-string v5, "; "

    .line 202
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    :catch_0
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v0

    .line 213
    :try_start_2
    iget-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/PluralRules;

    move-object v2, p1

    goto :goto_2

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-object v2

    :catchall_1
    move-exception p1

    .line 191
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .locals 3

    .line 165
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object p2

    .line 166
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "_"

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
