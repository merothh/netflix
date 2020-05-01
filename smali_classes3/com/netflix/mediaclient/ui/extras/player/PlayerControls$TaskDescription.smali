.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;-><init>(Landroid/view/View;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->l(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    return-void
.end method
