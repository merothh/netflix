.class final Lcom/ibm/icu/text/Normalizer$NFKDModeImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NFKDModeImpl"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 160
    new-instance v0, Lcom/ibm/icu/text/Normalizer$ModeImpl;

    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFKDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$ModeImpl;-><init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer$NFKDModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-void
.end method

.method static synthetic access$600()Lcom/ibm/icu/text/Normalizer$ModeImpl;
    .locals 1

    .line 159
    sget-object v0, Lcom/ibm/icu/text/Normalizer$NFKDModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method
