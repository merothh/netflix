.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Array16"
.end annotation


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1004
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 1005
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$600(Lcom/ibm/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;->size:I

    add-int/lit8 p2, p2, 0x1

    .line 1006
    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;->getContainer16Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    return p1
.end method
