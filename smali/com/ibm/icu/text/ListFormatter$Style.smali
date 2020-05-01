.class public final enum Lcom/ibm/icu/text/ListFormatter$Style;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/ListFormatter$Style;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/ListFormatter$Style;

.field public static final enum DURATION:Lcom/ibm/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DURATION_NARROW:Lcom/ibm/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DURATION_SHORT:Lcom/ibm/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum STANDARD:Lcom/ibm/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    const-string v3, "standard"

    invoke-direct {v0, v2, v1, v3}, Lcom/ibm/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Style;->STANDARD:Lcom/ibm/icu/text/ListFormatter$Style;

    .line 59
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v2, 0x1

    const-string v3, "DURATION"

    const-string v4, "unit"

    invoke-direct {v0, v3, v2, v4}, Lcom/ibm/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION:Lcom/ibm/icu/text/ListFormatter$Style;

    .line 66
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v3, 0x2

    const-string v4, "DURATION_SHORT"

    const-string v5, "unit-short"

    invoke-direct {v0, v4, v3, v5}, Lcom/ibm/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_SHORT:Lcom/ibm/icu/text/ListFormatter$Style;

    .line 73
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v4, 0x3

    const-string v5, "DURATION_NARROW"

    const-string v6, "unit-narrow"

    invoke-direct {v0, v5, v4, v6}, Lcom/ibm/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_NARROW:Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/text/ListFormatter$Style;

    .line 45
    sget-object v5, Lcom/ibm/icu/text/ListFormatter$Style;->STANDARD:Lcom/ibm/icu/text/ListFormatter$Style;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION:Lcom/ibm/icu/text/ListFormatter$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_SHORT:Lcom/ibm/icu/text/ListFormatter$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_NARROW:Lcom/ibm/icu/text/ListFormatter$Style;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Style;->$VALUES:[Lcom/ibm/icu/text/ListFormatter$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/ibm/icu/text/ListFormatter$Style;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/ListFormatter$Style;
    .locals 1

    .line 45
    const-class v0, Lcom/ibm/icu/text/ListFormatter$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/ListFormatter$Style;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/ListFormatter$Style;
    .locals 1

    .line 45
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$Style;->$VALUES:[Lcom/ibm/icu/text/ListFormatter$Style;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/ListFormatter$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/ListFormatter$Style;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$Style;->name:Ljava/lang/String;

    return-object v0
.end method
