.class synthetic Lcom/ibm/icu/util/ULocale$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$util$ULocale$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4374
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/util/ULocale$3;->$SwitchMap$com$ibm$icu$util$ULocale$Category:[I

    :try_start_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$3;->$SwitchMap$com$ibm$icu$util$ULocale$Category:[I

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ibm/icu/util/ULocale$3;->$SwitchMap$com$ibm$icu$util$ULocale$Category:[I

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
