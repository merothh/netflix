.class public final Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Touch;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alP<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lo/Touch;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lo/Touch;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->b:Lo/Touch;

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->a:Ljava/util/ArrayList;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 14
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labelId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetPlatform"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lo/ReplacementTransformationMethod;

    .line 53
    iget-object v5, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->d:Ljava/util/List;

    .line 55
    iget-object v7, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->e:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p5

    .line 49
    invoke-direct/range {v1 .. v8}, Lo/ReplacementTransformationMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
