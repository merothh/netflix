.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceMeasureChange(II)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->setSurfaceSize(II)V

    :cond_0
    return-void
.end method
