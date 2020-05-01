.class Lcom/ibm/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/BreakIteratorFactory$BFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1RBBreakIteratorFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/BreakIteratorFactory$BFService;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/BreakIteratorFactory$BFService;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ibm/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;->this$0:Lcom/ibm/icu/text/BreakIteratorFactory$BFService;

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-static {p1, p2}, Lcom/ibm/icu/text/BreakIteratorFactory;->access$000(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    return-object p1
.end method
