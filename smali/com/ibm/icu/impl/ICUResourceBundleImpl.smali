.class Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;,
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;,
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;,
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;,
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;,
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;,
        Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;
    }
.end annotation


# instance fields
.field protected resource:I


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 28
    iget-object p1, p1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->resource:I

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 24
    iput p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->resource:I

    return-void
.end method


# virtual methods
.method protected final createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 37
    invoke-static {p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The resource type is unknown"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :pswitch_0
    new-instance p3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;

    invoke-direct {p3, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 46
    :pswitch_1
    new-instance p3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;

    invoke-direct {p3, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    :pswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 44
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->getAliasedResource(Lcom/ibm/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_3
    new-instance p3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {p3, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 42
    :pswitch_4
    new-instance p3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;

    invoke-direct {p3, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 40
    :pswitch_5
    new-instance p3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;

    invoke-direct {p3, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 48
    :cond_0
    new-instance p3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;

    invoke-direct {p3, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getResource()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->resource:I

    return v0
.end method
