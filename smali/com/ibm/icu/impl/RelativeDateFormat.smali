.class public Lcom/ibm/icu/impl/RelativeDateFormat;
.super Lcom/ibm/icu/text/DateFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;,
        Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfb59e5457c57c3bL


# instance fields
.field private transient capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

.field private capitalizationInfoIsSet:Z

.field private capitalizationOfRelativeUnitsForListOrMenu:Z

.field private capitalizationOfRelativeUnitsForStandAlone:Z

.field private combinedFormatHasDateAtStart:Z

.field private fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

.field private fDateFormat:Lcom/ibm/icu/text/DateFormat;

.field private fDatePattern:Ljava/lang/String;

.field fDateStyle:I

.field private fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

.field private transient fDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;",
            ">;"
        }
    .end annotation
.end field

.field fLocale:Lcom/ibm/icu/util/ULocale;

.field private fTimePattern:Ljava/lang/String;

.field fTimeStyle:I


# direct methods
.method public constructor <init>(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/ibm/icu/text/DateFormat;-><init>()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 215
    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 222
    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    const/4 v1, 0x0

    .line 224
    iput-boolean v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    .line 225
    iput-boolean v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    .line 226
    iput-boolean v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    .line 227
    iput-boolean v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    .line 228
    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 60
    iput-object p4, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 62
    iput-object p3, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    .line 63
    iput p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    .line 64
    iput p2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    .line 66
    iget p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    and-int/lit16 p1, p1, -0x81

    .line 68
    invoke-static {p1, p3}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    .line 69
    instance-of p4, p1, Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz p4, :cond_0

    .line 70
    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 74
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 75
    iget p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    if-eq p1, p2, :cond_2

    and-int/lit16 p1, p1, -0x81

    .line 77
    invoke-static {p1, p3}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    .line 78
    instance-of p2, p1, Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz p2, :cond_2

    .line 79
    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create SimpleDateFormat for date style"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 p1, p1, -0x81

    .line 85
    invoke-static {p1, p3}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    .line 86
    instance-of p2, p1, Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz p2, :cond_3

    .line 87
    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 91
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 94
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/RelativeDateFormat;->initializeCalendar(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    .line 95
    invoke-direct {p0}, Lcom/ibm/icu/impl/RelativeDateFormat;->loadDates()V

    .line 96
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    iget-object p2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/RelativeDateFormat;->initializeCombinedFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;

    return-void

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create SimpleDateFormat for time style"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/RelativeDateFormat;I)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/RelativeDateFormat;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    return-object p0
.end method

.method private static dayDifference(Lcom/ibm/icu/util/Calendar;)I
    .locals 4

    .line 309
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 310
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 311
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->clear()V

    .line 312
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x14

    .line 313
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method private getStringForDay(I)Ljava/lang/String;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/ibm/icu/impl/RelativeDateFormat;->loadDates()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    .line 240
    iget v2, v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v2, p1, :cond_1

    .line 241
    iget-object p1, v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private initCapitalizationContextInfo(Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt59b"

    .line 292
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    :try_start_0
    const-string v0, "contextTransforms/relative"

    .line 294
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p1

    .line 296
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 297
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    .line 298
    aget p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private initializeCalendar(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 327
    invoke-static {p2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 332
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    return-object p1
.end method

.method private initializeCombinedFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
    .locals 4

    const-string v0, "com/ibm/icu/impl/data/icudt59b"

    .line 337
    invoke-static {v0, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DateTimePatterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "gregorian"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "calendar/gregorian/DateTimePatterns"

    .line 343
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_5

    .line 346
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result p1

    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    goto :goto_2

    .line 351
    :cond_1
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result p1

    const/16 v0, 0xd

    const/16 v2, 0x8

    if-lt p1, v0, :cond_3

    .line 352
    iget p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    add-int/2addr p1, v2

    goto :goto_1

    .line 355
    :cond_2
    iget p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_3

    const/16 v3, 0x83

    if-gt p1, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    .line 360
    :goto_1
    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 362
    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 364
    :cond_4
    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "{1} {0}"

    :goto_3
    const-string v0, "{1}"

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    .line 368
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    .line 369
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    return-object p1
.end method

.method private declared-synchronized loadDates()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "com/ibm/icu/impl/data/icudt59b"

    .line 280
    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    .line 284
    new-instance v1, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;-><init>(Lcom/ibm/icu/impl/RelativeDateFormat;Lcom/ibm/icu/impl/RelativeDateFormat$1;)V

    const-string v2, "fields/day/relative"

    .line 285
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    .line 112
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/RelativeDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v0

    .line 114
    iget v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 116
    invoke-static {p1}, Lcom/ibm/icu/impl/RelativeDateFormat;->dayDifference(Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    .line 119
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 123
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    if-eqz v2, :cond_6

    .line 126
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz v0, :cond_5

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    const/16 v4, 0x300

    invoke-static {v0, v1, v2, v4}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    goto :goto_1

    .line 140
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 144
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 150
    :cond_9
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-nez v2, :cond_b

    if-eqz v1, :cond_a

    .line 153
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 155
    :cond_a
    iget-object v1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'\'"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fCombinedFormat:Lcom/ibm/icu/text/MessageFormat;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v2, v4, v1, v0}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateTimeFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 169
    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fDateFormat:Lcom/ibm/icu/text/DateFormat;

    if-eqz v0, :cond_f

    if-eqz v1, :cond_e

    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 175
    :cond_e
    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :cond_f
    :goto_2
    return-object p2
.end method

.method public parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 0

    .line 187
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Relative Date parse is not implemented yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 198
    iget-boolean v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/RelativeDateFormat;->initCapitalizationContextInfo(Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_4

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz p1, :cond_4

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->fLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    :cond_4
    return-void
.end method
