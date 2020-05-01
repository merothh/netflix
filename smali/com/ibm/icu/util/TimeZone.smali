.class public abstract Lcom/ibm/icu/util/TimeZone;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/TimeZone$ConstantZone;,
        Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GMT_ZONE:Lcom/ibm/icu/util/TimeZone;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static TZ_IMPL:I = 0x0

.field public static final UNKNOWN_ZONE:Lcom/ibm/icu/util/TimeZone;

.field private static volatile defaultZone:Lcom/ibm/icu/util/TimeZone; = null

.field private static final serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.ibm.icu.util.TimeZone"

    .line 121
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    .line 252
    new-instance v0, Lcom/ibm/icu/util/TimeZone$ConstantZone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Etc/Unknown"

    invoke-direct {v0, v2, v3, v1}, Lcom/ibm/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Lcom/ibm/icu/util/TimeZone$1;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/TimeZone;->UNKNOWN_ZONE:Lcom/ibm/icu/util/TimeZone;

    .line 259
    new-instance v0, Lcom/ibm/icu/util/TimeZone$ConstantZone;

    const-string v3, "Etc/GMT"

    invoke-direct {v0, v2, v3, v1}, Lcom/ibm/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Lcom/ibm/icu/util/TimeZone$1;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/TimeZone;->GMT_ZONE:Lcom/ibm/icu/util/TimeZone;

    .line 1307
    sput-object v1, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    .line 1312
    sput v2, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const-string v0, "com.ibm.icu.util.TimeZone.DefaultTimeZoneType"

    const-string v1, "ICU"

    .line 1322
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDK"

    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1324
    sput v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 828
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 2

    .line 877
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->ANY:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 878
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1077
    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 3

    const-string v0, "Etc/Unknown"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1095
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    .line 1105
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1110
    aput-boolean p0, p1, v1

    :cond_3
    return-object v0
.end method

.method public static getDefault()Lcom/ibm/icu/util/TimeZone;
    .locals 4

    .line 932
    sget-object v0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    if-nez v0, :cond_2

    .line 935
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 936
    :try_start_0
    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 937
    :try_start_1
    sget-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    if-nez v2, :cond_1

    .line 939
    sget v2, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 940
    new-instance v2, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-direct {v2}, Lcom/ibm/icu/impl/JavaTimeZone;-><init>()V

    goto :goto_0

    .line 942
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 943
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 945
    :goto_0
    sput-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    .line 947
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 947
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v0

    .line 948
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 951
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;
    .locals 0

    if-eqz p1, :cond_0

    .line 781
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/OlsonTimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 784
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/SimpleTimeZone;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 726
    sget v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 707
    sget v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 756
    invoke-static {p0}, Lcom/ibm/icu/impl/JavaTimeZone;->createTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/JavaTimeZone;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 758
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 760
    invoke-static {p0, p1}, Lcom/ibm/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;

    move-result-object p1

    goto :goto_0

    .line 762
    :cond_2
    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 765
    sget-object p1, Lcom/ibm/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is a bogus id so timezone is falling back to Etc/Unknown(GMT)."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 766
    sget-object p1, Lcom/ibm/icu/util/TimeZone;->UNKNOWN_ZONE:Lcom/ibm/icu/util/TimeZone;

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_1

    .line 768
    :cond_4
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1026
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1285
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1288
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    iget-object p1, p1, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x36ee80

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 324
    aget p1, v0, v1

    const/4 p2, 0x1

    aget p2, v0, p2

    add-int/2addr p1, p2

    return p1
.end method

.method public getOffset(JZ[I)V
    .locals 11

    .line 349
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    if-nez p3, :cond_0

    .line 351
    aget v0, p4, v1

    int-to-long v2, v0

    add-long/2addr p1, v2

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 368
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v4, 0x1

    .line 369
    aget v5, v0, v1

    const/4 v10, 0x1

    aget v6, v0, v10

    const/4 v3, 0x2

    aget v7, v0, v3

    const/4 v3, 0x3

    aget v8, v0, v3

    const/4 v3, 0x5

    aget v9, v0, v3

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/ibm/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v3

    aget v4, p4, v1

    sub-int/2addr v3, v4

    aput v3, p4, v10

    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 373
    aget v3, p4, v10

    if-nez v3, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    aget v3, p4, v10

    int-to-long v3, v3

    sub-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract getRawOffset()I
.end method

.method public hashCode()I
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iput-object p1, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public abstract useDaylightTime()Z
.end method
