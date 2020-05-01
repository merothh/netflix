.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$9;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$9;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVolumeAsPercent()I
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$9;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getVolume()I

    move-result v0

    return v0
.end method

.method public onVolumeSet(I)V
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v0

    iput p1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->mostRecentVolume:I

    .line 1355
    return-void
.end method
