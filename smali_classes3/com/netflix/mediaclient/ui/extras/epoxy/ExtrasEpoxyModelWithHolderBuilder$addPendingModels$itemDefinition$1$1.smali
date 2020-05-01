.class final Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->e(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;I)Lo/GW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;->c:Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/model/leafs/originals/ListOfTagSummary;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.title"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/model/leafs/originals/ListOfTagSummary;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;->a(Lcom/netflix/model/leafs/originals/ListOfTagSummary;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
