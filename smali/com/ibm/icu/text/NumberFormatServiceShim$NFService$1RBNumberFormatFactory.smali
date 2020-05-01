.class Lcom/ibm/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1RBNumberFormatFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;->this$0:Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-static {p1, p2}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    return-object p1
.end method
