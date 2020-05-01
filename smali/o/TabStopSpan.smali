.class public final Lo/TabStopSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Ljava/util/ArrayList<",
        "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/SelectionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lo/SelectionEvent;Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/acquisition2/di/SignupModule;",
            "Lo/SelectionEvent;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;->e(Lo/SelectionEvent;Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lo/TabStopSpan;->c:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/TabStopSpan;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SelectionEvent;

    iget-object v2, p0, Lo/TabStopSpan;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lo/TabStopSpan;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lo/SelectionEvent;Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/TabStopSpan;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
