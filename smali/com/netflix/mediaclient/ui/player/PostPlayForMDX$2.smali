.class Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$2;
.super Ljava/lang/Object;
.source "PostPlayForMDX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$2;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$2;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->handleStop()V

    return-void
.end method
