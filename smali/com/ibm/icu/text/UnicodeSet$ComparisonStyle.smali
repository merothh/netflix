.class public final enum Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComparisonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum LEXICOGRAPHIC:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum LONGER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4499
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v1, 0x0

    const-string v2, "SHORTER_FIRST"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    .line 4503
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v2, 0x1

    const-string v3, "LEXICOGRAPHIC"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    .line 4507
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v3, 0x2

    const-string v4, "LONGER_FIRST"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LONGER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    .line 4495
    sget-object v4, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LONGER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->$VALUES:[Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;
    .locals 1

    .line 4495
    const-class v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;
    .locals 1

    .line 4495
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->$VALUES:[Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    return-object v0
.end method
