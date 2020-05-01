.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;
.super Ljava/lang/Object;
.source "CoppolaShowDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

.field final synthetic val$this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->val$this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->access$000(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->access$100(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->access$300(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$1;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->access$400(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method
