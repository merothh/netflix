.class public final enum Lcom/ibm/icu/impl/number/Parse$ParseMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/Parse$ParseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field public static final enum FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field public static final enum LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field public static final enum STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const/4 v1, 0x0

    const-string v2, "LENIENT"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/number/Parse$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 77
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const/4 v2, 0x1

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/number/Parse$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 95
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const/4 v3, 0x2

    const-string v4, "FAST"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/impl/number/Parse$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 46
    sget-object v4, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Parse$ParseMode;
    .locals 1

    .line 46
    const-class v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Parse$ParseMode;
    .locals 1

    .line 46
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Parse$ParseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-object v0
.end method
