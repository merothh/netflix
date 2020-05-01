.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;
.super Landroid/content/BroadcastReceiver;
.source "MdxMiniPlayerFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    .line 131
    return-void
.end method
