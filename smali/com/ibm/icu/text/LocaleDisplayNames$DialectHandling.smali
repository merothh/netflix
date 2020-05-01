.class public final enum Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialectHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    const/4 v1, 0x0

    const-string v2, "STANDARD_NAMES"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 48
    new-instance v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    const/4 v2, 0x1

    const-string v3, "DIALECT_NAMES"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 36
    sget-object v3, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v3, v0, v1

    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    .line 36
    const-class v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    .line 36
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method
