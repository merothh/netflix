.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->subscribeViewModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/util/List<",
        "+",
        "Lo/Pa;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$setNotifications$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Ljava/util/List;)V

    .line 162
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestModelBuild()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;->e(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
