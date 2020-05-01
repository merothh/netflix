.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Table16"
.end annotation


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1085
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1086
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1800(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    .line 1087
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    array-length p1, p1

    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->size:I

    add-int/lit8 p2, p2, 0x1

    .line 1088
    iget p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->size:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1083
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->getContainer16Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    return p1
.end method
