.class Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TZDBNameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<",
        "Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
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

.field private _nameTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private _region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    const-class v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;

    return-void
.end method

.method constructor <init>(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    .line 242
    iput-object p2, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_region:Ljava/lang/String;

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

    .line 332
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    move-object v2, v1

    .line 254
    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 255
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    .line 257
    iget-object v5, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    if-eqz v5, :cond_1

    iget-object v6, v3, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 268
    :cond_1
    iget-object v5, v3, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    if-nez v5, :cond_2

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 281
    :cond_2
    iget-object v5, v3, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    aget-object v9, v5, v8

    .line 282
    iget-object v10, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_region:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v2, v3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v2, :cond_a

    .line 298
    iget-object p2, v2, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 311
    iget-boolean v1, v2, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p2, v1, :cond_7

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-ne p2, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 313
    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 314
    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 315
    sget-object p2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 317
    :cond_8
    new-instance v1, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    iget-object v2, v2, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    invoke-direct {v1, p2, v0, v2, p1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;-><init>(Lcom/ibm/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    iget-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez p1, :cond_9

    .line 319
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 321
    :cond_9
    iget-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    return v4
.end method
