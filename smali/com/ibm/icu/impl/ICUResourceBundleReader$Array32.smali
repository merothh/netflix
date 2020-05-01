.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Array32"
.end annotation


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 993
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 994
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 995
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;->size:I

    add-int/lit8 p2, p2, 0x4

    .line 996
    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;->getContainer32Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    return p1
.end method
