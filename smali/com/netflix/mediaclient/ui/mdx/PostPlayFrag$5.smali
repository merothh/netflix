.class Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$5;
.super Ljava/lang/Object;
.source "PostPlayFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->refreshTimerText()V

    return-void
.end method
