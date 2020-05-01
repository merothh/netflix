.class public final enum Lcom/ibm/icu/text/DateFormat$BooleanAttribute;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DateFormat$BooleanAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 505
    new-instance v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    const/4 v1, 0x0

    const-string v2, "PARSE_ALLOW_WHITESPACE"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 511
    new-instance v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    const/4 v2, 0x1

    const-string v3, "PARSE_ALLOW_NUMERIC"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 517
    new-instance v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    const/4 v3, 0x2

    const-string v4, "PARSE_MULTIPLE_PATTERNS_FOR_MATCH"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 523
    new-instance v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    const/4 v4, 0x3

    const-string v5, "PARSE_PARTIAL_LITERAL_MATCH"

    invoke-direct {v0, v5, v4}, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 529
    new-instance v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    const/4 v5, 0x4

    const-string v6, "PARSE_PARTIAL_MATCH"

    invoke-direct {v0, v6, v5}, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 500
    sget-object v6, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    aput-object v6, v0, v1

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 500
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat$BooleanAttribute;
    .locals 1

    .line 500
    const-class v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DateFormat$BooleanAttribute;
    .locals 1

    .line 500
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    return-object v0
.end method
