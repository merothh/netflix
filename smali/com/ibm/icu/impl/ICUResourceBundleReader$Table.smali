.class Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/UResource$Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# instance fields
.field protected key32Offsets:[I

.field protected keyOffsets:[C


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1013
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    return-void
.end method


# virtual methods
.method findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I
    .locals 4

    .line 1030
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1033
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v3, :cond_0

    .line 1034
    aget-char v3, v3, v2

    invoke-static {p1, p2, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1300(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I

    move-result v3

    goto :goto_1

    .line 1036
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v3, v3, v2

    invoke-static {p1, p2, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1400(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I

    move-result v3

    :goto_1
    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method getKey(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1

    if-ltz p2, :cond_2

    .line 1016
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-gt v0, p2, :cond_0

    goto :goto_1

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v0, :cond_1

    aget-char p2, v0, p2

    .line 1020
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1100(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget p2, v0, p2

    .line 1021
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1200(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z
    .locals 2

    if-ltz p1, :cond_1

    .line 1055
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-ge p1, v0, :cond_1

    .line 1056
    check-cast p3, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 1057
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p3, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v1, v1, p1

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1500(Lcom/ibm/icu/impl/ICUResourceBundleReader;ILcom/ibm/icu/impl/UResource$Key;)V

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v0, p3, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v1, v1, p1

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1600(Lcom/ibm/icu/impl/ICUResourceBundleReader;ILcom/ibm/icu/impl/UResource$Key;)V

    .line 1062
    :goto_0
    iget-object p2, p3, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    iput p1, p3, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method getResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 0

    .line 1051
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    return p1
.end method
