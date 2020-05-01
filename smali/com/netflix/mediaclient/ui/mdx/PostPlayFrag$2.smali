.class Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$2;
.super Ljava/lang/Object;
.source "PostPlayFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->handleStop()V

    .line 129
    return-void
.end method
