.class final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    const-string v0, "https://help.netflix.com/support/23939"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;Ljava/lang/String;)V

    return-void
.end method
