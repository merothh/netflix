.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AEADBadTagException;


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
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AEADBadTagException<",
        "Lo/HT;",
        "Lo/HS$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iput p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->a:I

    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/HT;Lo/HS$TaskDescription;I)V
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$getItems$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->a:I

    sub-int/2addr p1, p2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 438
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$fetchData(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 429
    check-cast p1, Lo/HT;

    check-cast p2, Lo/HS$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;->a(Lo/HT;Lo/HS$TaskDescription;I)V

    return-void
.end method
