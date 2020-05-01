.class public Lcom/ibm/icu/impl/JavaTimeZone;
.super Lcom/ibm/icu/util/TimeZone;
.source ""


# static fields
.field private static final AVAILABLESET:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObservesDaylightTime:Ljava/lang/reflect/Method; = null

.field private static final serialVersionUID:J = 0x60d4e0281a0a2e14L


# instance fields
.field private volatile transient isFrozen:Z

.field private transient javacal:Ljava/util/Calendar;

.field private javatz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    .line 42
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 44
    sget-object v2, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    :try_start_0
    const-class v0, Ljava/util/TimeZone;

    const-string v1, "observesDaylightTime"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/ibm/icu/util/TimeZone;-><init>()V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->isFrozen:Z

    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    .line 74
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/JavaTimeZone;->setID(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/util/GregorianCalendar;

    iget-object p2, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    return-void
.end method

.method public static createTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/JavaTimeZone;
    .locals 5

    .line 87
    sget-object v0, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 94
    invoke-static {p0, v2}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 95
    aget-boolean v2, v2, v4

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    .line 104
    :cond_2
    new-instance v1, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 245
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 246
    new-instance p1, Ljava/util/GregorianCalendar;

    iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/ibm/icu/impl/JavaTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/JavaTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 3

    .line 274
    invoke-super {p0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/JavaTimeZone;

    .line 275
    iget-object v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    .line 276
    new-instance v1, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/4 v1, 0x0

    .line 277
    iput-boolean v1, v0, Lcom/ibm/icu/impl/JavaTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    return p1
.end method

.method public getOffset(JZ[I)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 120
    iget-object v4, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    monitor-enter v4

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    const/4 v6, 0x6

    :try_start_0
    new-array v7, v6, [I

    .line 123
    invoke-static {v2, v3, v7}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v2, 0x5

    .line 125
    aget v2, v7, v2

    .line 126
    rem-int/lit16 v3, v2, 0x3e8

    .line 127
    div-int/lit16 v2, v2, 0x3e8

    .line 128
    rem-int/lit8 v15, v2, 0x3c

    .line 129
    div-int/lit8 v2, v2, 0x3c

    .line 130
    rem-int/lit8 v14, v2, 0x3c

    .line 131
    div-int/lit8 v2, v2, 0x3c

    .line 132
    iget-object v8, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 133
    iget-object v8, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    aget v9, v7, v0

    aget v10, v7, v5

    const/4 v11, 0x2

    aget v11, v7, v11

    move v12, v2

    move v13, v14

    move v0, v14

    move v14, v15

    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    .line 134
    iget-object v8, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v9, 0xe

    invoke-virtual {v8, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 137
    iget-object v8, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 138
    iget-object v8, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 139
    iget-object v10, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 140
    iget-object v11, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 141
    iget-object v12, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v12, 0x4

    .line 143
    aget v13, v7, v12

    if-ne v13, v6, :cond_0

    if-ne v2, v8, :cond_0

    if-ne v0, v10, :cond_0

    if-ne v15, v11, :cond_0

    if-eq v3, v9, :cond_3

    .line 147
    :cond_0
    aget v13, v7, v12

    sub-int v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    aget v7, v7, v12

    sub-int/2addr v6, v7

    :goto_0
    mul-int/lit8 v6, v6, 0x18

    add-int/2addr v6, v8

    sub-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v6, v10

    sub-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v6, v11

    sub-int/2addr v6, v15

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v6, v9

    sub-int/2addr v6, v3

    .line 151
    iget-object v0, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    iget-object v2, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v6, v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    aput v0, p4, v2

    .line 157
    iget-object v0, v1, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aput v0, p4, v5

    .line 158
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRawOffset()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/ibm/icu/util/TimeZone;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->isFrozen:Z

    return v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method
