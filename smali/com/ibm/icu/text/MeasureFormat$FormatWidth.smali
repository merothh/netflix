.class public final enum Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/MeasureFormat$FormatWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;


# instance fields
.field private final currencyStyle:I

.field private final listFormatterStyle:Lcom/ibm/icu/text/ListFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 169
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION:Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v2, 0x0

    const-string v3, "WIDE"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Style;I)V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 176
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_SHORT:Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v3, 0x1

    const-string v4, "SHORT"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Style;I)V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 183
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_NARROW:Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v4, 0x2

    const-string v5, "NARROW"

    invoke-direct {v0, v5, v4, v1, v3}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Style;I)V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 192
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Style;->DURATION_NARROW:Lcom/ibm/icu/text/ListFormatter$Style;

    const/4 v5, 0x3

    const-string v6, "NUMERIC"

    invoke-direct {v0, v6, v5, v1, v3}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Style;I)V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 162
    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Style;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/ListFormatter$Style;",
            "I)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Lcom/ibm/icu/text/ListFormatter$Style;

    .line 203
    iput p4, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 162
    const-class v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 162
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method


# virtual methods
.method getCurrencyStyle()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    return v0
.end method

.method getListFormatterStyle()Lcom/ibm/icu/text/ListFormatter$Style;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Lcom/ibm/icu/text/ListFormatter$Style;

    return-object v0
.end method
