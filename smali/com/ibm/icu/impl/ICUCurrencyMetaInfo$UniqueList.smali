.class Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UniqueList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$300()Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .locals 1

    .line 177
    invoke-static {}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->create()Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList<",
            "TT;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
