.class final enum Lcom/ibm/icu/impl/number/Parse$StateName;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StateName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/Parse$StateName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_EXPONENT_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_CURRENCY:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_STRING:Lcom/ibm/icu/impl/number/Parse$StateName;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 260
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v1, 0x0

    const-string v2, "BEFORE_PREFIX"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 261
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v2, 0x1

    const-string v3, "AFTER_PREFIX"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 262
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v3, 0x2

    const-string v4, "AFTER_INTEGER_DIGIT"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 263
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v4, 0x3

    const-string v5, "AFTER_FRACTION_DIGIT"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 264
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v5, 0x4

    const-string v6, "AFTER_EXPONENT_SEPARATOR"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 265
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v6, 0x5

    const-string v7, "AFTER_EXPONENT_DIGIT"

    invoke-direct {v0, v7, v6}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 266
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v7, 0x6

    const-string v8, "BEFORE_SUFFIX"

    invoke-direct {v0, v8, v7}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 267
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v8, 0x7

    const-string v9, "BEFORE_SUFFIX_SEEN_EXPONENT"

    invoke-direct {v0, v9, v8}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 268
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/16 v9, 0x8

    const-string v10, "AFTER_SUFFIX"

    invoke-direct {v0, v10, v9}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 269
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/16 v10, 0x9

    const-string v11, "INSIDE_CURRENCY"

    invoke-direct {v0, v11, v10}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_CURRENCY:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 270
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/16 v11, 0xa

    const-string v12, "INSIDE_DIGIT"

    invoke-direct {v0, v12, v11}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 271
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/16 v12, 0xb

    const-string v13, "INSIDE_STRING"

    invoke-direct {v0, v13, v12}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_STRING:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 272
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    const/16 v13, 0xc

    const-string v14, "INSIDE_AFFIX_PATTERN"

    invoke-direct {v0, v14, v13}, Lcom/ibm/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 259
    sget-object v14, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v14, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_CURRENCY:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_STRING:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v13

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$StateName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Parse$StateName;
    .locals 1

    .line 259
    const-class v0, Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/Parse$StateName;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Parse$StateName;
    .locals 1

    .line 259
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Parse$StateName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Parse$StateName;

    return-object v0
.end method
