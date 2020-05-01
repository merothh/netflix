.class public Lcom/ibm/icu/util/Calendar$FormatConfiguration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatConfiguration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cal:Lcom/ibm/icu/util/Calendar;

.field private formatData:Lcom/ibm/icu/text/DateFormatSymbols;

.field private loc:Lcom/ibm/icu/util/ULocale;

.field private override:Ljava/lang/String;

.field private pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/Calendar$1;)V
    .locals 0

    .line 3730
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/text/DateFormatSymbols;)Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->loc:Lcom/ibm/icu/util/ULocale;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/util/Calendar;
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->cal:Lcom/ibm/icu/util/Calendar;

    return-object p1
.end method


# virtual methods
.method public getCalendar()Lcom/ibm/icu/util/Calendar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3769
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->cal:Lcom/ibm/icu/util/Calendar;

    return-object v0
.end method

.method public getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3791
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method public getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3780
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->loc:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getOverrideString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3758
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3749
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    return-object v0
.end method
