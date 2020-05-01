.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$7;
.super Ljava/lang/Object;
.source "MdxMiniPlayerFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVolumeAsPercent()I
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getVolume()I

    move-result v0

    return v0
.end method

.method public onVolumeSet(I)V
    .locals 1

    .prologue
    .line 1026
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    iput p1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->mostRecentVolume:I

    .line 1027
    return-void
.end method
