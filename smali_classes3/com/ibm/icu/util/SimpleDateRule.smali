.class public Lcom/ibm/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# instance fields
.field private calendar:Lcom/ibm/icu/util/Calendar;

.field private dayOfMonth:I

.field private dayOfWeek:I

.field private month:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 34
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    .line 35
    iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 62
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    .line 63
    iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    neg-int p3, p3

    .line 64
    :goto_0
    iput p3, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method constructor <init>(IILcom/ibm/icu/util/Calendar;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 42
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    .line 43
    iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    .line 45
    iput-object p3, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    return-void
.end method
