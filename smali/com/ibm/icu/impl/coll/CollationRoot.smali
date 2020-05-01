.class public final Lcom/ibm/icu/impl/coll/CollationRoot;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final exception:Ljava/lang/RuntimeException;

.field private static final rootSingleton:Lcom/ibm/icu/impl/coll/CollationTailoring;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "coll/ucadata.icu"

    .line 49
    invoke-static {v1}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/coll/CollationTailoring;-><init>(Lcom/ibm/icu/impl/coll/SharedObject$Reference;)V

    .line 51
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationDataReader;->read(Lcom/ibm/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 56
    :catch_1
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "IOException while reading CLDR root data"

    const-string v3, "CollationRoot"

    const-string v4, "data/icudt59b/coll/ucadata.icu"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    sput-object v0, Lcom/ibm/icu/impl/coll/CollationRoot;->rootSingleton:Lcom/ibm/icu/impl/coll/CollationTailoring;

    .line 63
    sput-object v1, Lcom/ibm/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRoot()Lcom/ibm/icu/impl/coll/CollationTailoring;
    .locals 1

    .line 31
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationRoot;->rootSingleton:Lcom/ibm/icu/impl/coll/CollationTailoring;

    return-object v0

    .line 32
    :cond_0
    throw v0
.end method
