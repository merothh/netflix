.class final Lcom/ibm/icu/text/Normalizer$NFD32ModeImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NFD32ModeImpl"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    new-instance v0, Lcom/ibm/icu/text/Normalizer$ModeImpl;

    new-instance v1, Lcom/ibm/icu/text/FilteredNormalizer2;

    .line 177
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$Unicode32;->access$100()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/FilteredNormalizer2;-><init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/UnicodeSet;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$ModeImpl;-><init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer$NFD32ModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-void
.end method

.method static synthetic access$200()Lcom/ibm/icu/text/Normalizer$ModeImpl;
    .locals 1

    .line 175
    sget-object v0, Lcom/ibm/icu/text/Normalizer$NFD32ModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method
