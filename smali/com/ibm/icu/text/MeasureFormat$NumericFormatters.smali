.class Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericFormatters"
.end annotation


# instance fields
.field private hourMinute:Lcom/ibm/icu/text/DateFormat;

.field private hourMinuteSecond:Lcom/ibm/icu/text/DateFormat;

.field private minuteSecond:Lcom/ibm/icu/text/DateFormat;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;)V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Lcom/ibm/icu/text/DateFormat;

    .line 745
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Lcom/ibm/icu/text/DateFormat;

    .line 746
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Lcom/ibm/icu/text/DateFormat;

    return-void
.end method


# virtual methods
.method public getHourMinute()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method public getHourMinuteSecond()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method public getMinuteSecond()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method
