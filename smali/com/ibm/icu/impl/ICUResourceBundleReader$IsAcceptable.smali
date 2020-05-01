.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 39
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x2

    aget-byte v3, p1, v0

    if-gt v1, v3, :cond_2

    aget-byte p1, p1, v0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
