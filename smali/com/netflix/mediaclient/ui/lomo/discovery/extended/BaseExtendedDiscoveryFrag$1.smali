.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$1;
.super Ljava/lang/Object;
.source "BaseExtendedDiscoveryFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->dismiss()V

    .line 137
    return-void
.end method
