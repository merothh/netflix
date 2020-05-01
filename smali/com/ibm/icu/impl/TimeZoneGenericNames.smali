.class public Lcom/ibm/icu/impl/TimeZoneGenericNames;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;,
        Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;,
        Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;,
        Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;,
        Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;,
        Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static GENERIC_NAMES_CACHE:Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache; = null

.field private static final GENERIC_NON_LOCATION_TYPES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field private static final serialVersionUID:J = 0x25e296fe0f5baf81L


# instance fields
.field private volatile transient _frozen:Z

.field private transient _genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrieFullyLoaded:Z

.field private final _locale:Lcom/ibm/icu/util/ULocale;

.field private transient _localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ibm/icu/text/LocaleDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _patternFormatters:[Ljava/text/MessageFormat;

.field private transient _region:Ljava/lang/String;

.field private _tznames:Lcom/ibm/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const/4 v1, 0x0

    .line 127
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 139
    iput-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 140
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->init()V

    return-void
.end method

.method private createGenericMatchInfo(Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 8

    .line 796
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 797
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 810
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected MatchInfo name type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_1
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 807
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_0

    .line 803
    :cond_2
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    .line 799
    :cond_3
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 800
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_0
    move-object v6, v0

    move-object v3, v1

    .line 816
    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 818
    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v4, v0

    .line 824
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILcom/ibm/icu/text/TimeZoneFormat$TimeType;Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V

    return-object v0
.end method

.method private declared-synchronized findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 870
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;

    invoke-direct {v0, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    .line 871
    iget-object p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 872
    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMaxMatchLen()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    if-eq p3, v1, :cond_2

    iget-boolean p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    if-eqz p3, :cond_0

    goto :goto_1

    .line 880
    :cond_0
    sget-object p3, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {p3, v1, v1}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p3

    .line 881
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 882
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 884
    iput-boolean p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 887
    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->resetResults()V

    .line 888
    iget-object p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 889
    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 874
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 842
    const-class v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 843
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 848
    sget-object p3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object p3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_1
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 854
    iget-object p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private formatGenericNonLocationName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 326
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 333
    :cond_0
    sget-object v6, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v7, p2

    if-ne v7, v6, :cond_1

    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 334
    :goto_0
    iget-object v7, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v7, v4, v6}, Lcom/ibm/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    .line 341
    :cond_2
    iget-object v8, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v8, v4, v2, v3}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 344
    fill-array-data v10, :array_0

    const/4 v11, 0x0

    .line 345
    invoke-virtual {v1, v2, v3, v11, v10}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 v12, 0x1

    .line 347
    aget v13, v10, v12

    if-nez v13, :cond_8

    .line 350
    instance-of v13, v1, Lcom/ibm/icu/util/BasicTimeZone;

    const-wide v14, 0x3b3922000L

    if-eqz v13, :cond_5

    .line 351
    check-cast v1, Lcom/ibm/icu/util/BasicTimeZone;

    .line 352
    invoke-virtual {v1, v2, v3, v12}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 354
    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    sub-long v16, v2, v16

    cmp-long v18, v16, v14

    if-gez v18, :cond_3

    .line 355
    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_3

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 358
    :cond_3
    invoke-virtual {v1, v2, v3, v11}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 360
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    sub-long v16, v16, v2

    cmp-long v13, v16, v14

    if-gez v13, :cond_4

    .line 361
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_2
    move-object/from16 v16, v10

    goto :goto_5

    :cond_5
    new-array v13, v9, [I

    move-object/from16 v16, v10

    sub-long v9, v2, v14

    .line 369
    invoke-virtual {v1, v9, v10, v11, v13}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 370
    aget v9, v13, v12

    if-eqz v9, :cond_6

    :goto_3
    goto :goto_4

    :cond_6
    add-long v9, v2, v14

    .line 373
    invoke-virtual {v1, v9, v10, v11, v13}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 374
    aget v1, v13, v12

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v16, v10

    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_b

    .line 381
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne v6, v1, :cond_9

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_6

    :cond_9
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 383
    :goto_6
    iget-object v9, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v9, v4, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 392
    iget-object v7, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v7, v8, v6}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object v7, v5

    goto :goto_7

    :cond_a
    move-object v7, v1

    :cond_b
    :goto_7
    if-nez v7, :cond_f

    .line 401
    iget-object v1, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v1, v8, v6}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 406
    iget-object v5, v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 407
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 408
    invoke-static {v5}, Lcom/ibm/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 409
    fill-array-data v7, :array_1

    .line 415
    aget v9, v16, v11

    int-to-long v9, v9

    add-long/2addr v2, v9

    aget v9, v16, v12

    int-to-long v9, v9

    add-long/2addr v2, v9

    invoke-virtual {v5, v2, v3, v12, v7}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 417
    aget v2, v16, v11

    aget v3, v7, v11

    if-ne v2, v3, :cond_c

    aget v2, v16, v12

    aget v3, v7, v12

    if-eq v2, v3, :cond_e

    .line 419
    :cond_c
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne v6, v2, :cond_d

    const/4 v11, 0x1

    :cond_d
    invoke-direct {v0, v4, v8, v11, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    move-object v7, v1

    :cond_f
    return-object v7

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private varargs declared-synchronized formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->values()[Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "com/ibm/icu/impl/data/icudt59b/zone"

    .line 450
    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoneStrings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->defaultValue()Ljava/lang/String;

    move-result-object p1

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    invoke-direct {v2, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 459
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;

    invoke-virtual {v1, v0, p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    return-object p0
.end method

.method private declared-synchronized getLocaleDisplayNames()Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/LocaleDisplayNames;

    :cond_0
    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 477
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p3, :cond_0

    const-string v0, "L"

    goto :goto_0

    :cond_0
    const-string v0, "S"

    .line 543
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 549
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 552
    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v2, p2, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 555
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 558
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 561
    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, p1

    .line 569
    :cond_4
    :goto_1
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p4, v2, p2

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    iget-object p4, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_6

    .line 573
    new-instance p4, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_5

    sget-object p3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_2

    :cond_5
    sget-object p3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    :goto_2
    invoke-direct {p4, p1, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 575
    iget-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1, p2, p4}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_3

    :cond_6
    move-object p2, p4

    .line 579
    :goto_3
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 151
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 158
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 483
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    iget-object v2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 498
    iget-object v7, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v7, v1, v6}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 501
    sget-object v8, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, v6, v7}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 506
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 484
    :cond_5
    :goto_2
    monitor-exit p0

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 912
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 913
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->init()V

    return-void
.end method


# virtual methods
.method public findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 703
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 709
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 712
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    if-eqz v2, :cond_1

    .line 713
    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    if-le v4, v5, :cond_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 718
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    if-ne v0, v2, :cond_3

    .line 737
    iget-object v0, v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v2, :cond_3

    return-object v1

    .line 745
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 747
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    if-eqz v1, :cond_5

    .line 751
    invoke-virtual {p2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result p3

    invoke-virtual {v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v0

    if-lt p3, v0, :cond_4

    :cond_5
    move-object v1, p2

    goto :goto_1

    :cond_6
    return-object v1

    .line 704
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad input text or range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public freeze()Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 1

    const/4 v0, 0x1

    .line 929
    iput-boolean v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_frozen:Z

    return-object p0
.end method

.method public getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 2

    .line 198
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$com$ibm$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    invoke-virtual {p2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatGenericNonLocationName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 209
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :cond_3
    :goto_1
    return-object p2
.end method

.method public getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object v1

    .line 238
    :cond_2
    new-instance v0, Lcom/ibm/icu/util/Output;

    invoke-direct {v0}, Lcom/ibm/icu/util/Output;-><init>()V

    .line 239
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 241
    iget-object v0, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 243
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->formatPattern(Lcom/ibm/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 259
    :cond_5
    monitor-enter p0

    .line 260
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 264
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;

    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-direct {v0, p1, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 265
    iget-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1, v1, v0}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_1

    :cond_6
    move-object v1, v0

    .line 269
    :goto_1
    monitor-exit p0

    :goto_2
    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_3
    return-object v0
.end method
