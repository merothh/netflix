.class Lcom/ibm/icu/text/CollatorServiceShim$CService$1CollatorFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/CollatorServiceShim$CService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1CollatorFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/CollatorServiceShim$CService;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CollatorServiceShim$CService;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/ibm/icu/text/CollatorServiceShim$CService$1CollatorFactory;->this$0:Lcom/ibm/icu/text/CollatorServiceShim$CService;

    const-string p1, "com/ibm/icu/impl/data/icudt59b/coll"

    .line 137
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-static {p1}, Lcom/ibm/icu/text/CollatorServiceShim;->access$000(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1

    return-object p1
.end method
