.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3$1;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onBackPressed()V

    .line 359
    return-void
.end method
