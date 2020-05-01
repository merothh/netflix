.class Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<",
        "Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _nameTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 519
    const-class v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl;

    return-void
.end method

.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;)V"
        }
    .end annotation

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public getMatches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxMatchLen()I
    .locals 1

    .line 572
    iget v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)Z"
        }
    .end annotation

    .line 533
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;

    .line 535
    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    iget-object v1, v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 540
    new-instance v1, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    iget-object v3, v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    iget-object v0, v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2, p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;-><init>(Lcom/ibm/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 543
    :cond_2
    new-instance v1, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    iget-object v3, v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    iget-object v0, v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;-><init>(Lcom/ibm/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_3

    .line 546
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 549
    iget v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    if-le p1, v0, :cond_0

    .line 550
    iput p1, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public resetResults()V
    .locals 1

    const/4 v0, 0x0

    .line 579
    iput-object v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 580
    iput v0, p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    return-void
.end method
