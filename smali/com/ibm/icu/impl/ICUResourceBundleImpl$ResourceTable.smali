.class Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceTable"
.end annotation


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;I)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 306
    iget-object p1, p1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 299
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p1, p1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method


# virtual methods
.method findString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 291
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getKey(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 256
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 258
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v1

    .line 260
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 265
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 267
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v2

    .line 268
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ne v4, v2, :cond_1

    return-object v3

    .line 273
    :cond_1
    invoke-virtual {v1, v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 224
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 225
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    const/4 v3, 0x0

    .line 226
    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 227
    invoke-virtual {v2, v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getKey(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
