.class Lcom/ibm/icu/impl/ICUResourceBundle$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/URLHandler$URLVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/ICUResourceBundle$2;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$2;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2$1;->this$0:Lcom/ibm/icu/impl/ICUResourceBundle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".res"

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 612
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$2$1;->this$0:Lcom/ibm/icu/impl/ICUResourceBundle$2;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
