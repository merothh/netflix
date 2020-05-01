.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    const-string p1, "LoLoMoFrag"

    const-string v0, "Received BB clear broadcast"

    .line 346
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ki;->b()V

    .line 350
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Z)V

    .line 351
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7$5;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method
