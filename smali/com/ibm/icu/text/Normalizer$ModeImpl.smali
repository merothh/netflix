.class final Lcom/ibm/icu/text/Normalizer$ModeImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModeImpl"
.end annotation


# instance fields
.field private final normalizer2:Lcom/ibm/icu/text/Normalizer2;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/Normalizer2;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer$ModeImpl;->normalizer2:Lcom/ibm/icu/text/Normalizer2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/Normalizer$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Normalizer$ModeImpl;-><init>(Lcom/ibm/icu/text/Normalizer2;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/Normalizer$ModeImpl;)Lcom/ibm/icu/text/Normalizer2;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/ibm/icu/text/Normalizer$ModeImpl;->normalizer2:Lcom/ibm/icu/text/Normalizer2;

    return-object p0
.end method
