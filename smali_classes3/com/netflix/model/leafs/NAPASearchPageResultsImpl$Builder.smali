.class public final Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final results:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

.field final synthetic this$0:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->this$0:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->results:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    return-void
.end method


# virtual methods
.method public final addSearchSection(Lo/Bt;)V
    .locals 1

    const-string v0, "searchSection"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->results:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    invoke-static {v0}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->access$getSearchSections$p(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getResults()Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->results:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    return-object v0
.end method

.method public final setRequestId(J)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;->results:Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;

    invoke-static {v0, p1, p2}, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->access$setRequestId$p(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;J)V

    return-void
.end method
