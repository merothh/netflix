.class Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;
.super Lcom/ibm/icu/text/TimeZoneNames;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultTimeZoneNames"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

.field private static final serialVersionUID:J = -0xdd1567981cd7b0fL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 540
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    invoke-direct {v0}, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames;-><init>()V

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 555
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
