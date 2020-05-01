.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$1;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->finishAllDetailsActivities(Landroid/content/Context;)V

    return-void
.end method
