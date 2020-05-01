.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Landroid/view/View;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

.field final synthetic c:Lo/GN;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lo/GN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->c:Lo/GN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$fetchData(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    .line 263
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->c:Lo/GN;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$getNotificationsInExtrasEnabled$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->c:Lo/GN;

    invoke-virtual {p1}, Lo/GN;->d()V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;->c(Landroid/view/View;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
