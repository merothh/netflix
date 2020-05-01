.class final Lcom/ibm/icu/impl/ResourceBundleWrapper$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ResourceBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/impl/ResourceBundleWrapper;",
        "Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;)Lcom/ibm/icu/impl/ResourceBundleWrapper;
    .locals 0

    .line 44
    invoke-virtual {p2}, Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;->load()Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object p1

    return-object p1
.end method
