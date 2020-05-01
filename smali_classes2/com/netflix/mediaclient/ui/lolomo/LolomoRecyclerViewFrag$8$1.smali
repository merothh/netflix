.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 7

    const-string p1, "LoLoMoFrag"

    const-string v0, "Received BB obtained broadcast"

    .line 304
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->b:Landroid/content/Intent;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz p1, :cond_2

    .line 306
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Z)V

    .line 307
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Z

    move-result v6

    .line 308
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Z)Z

    .line 310
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->b:Landroid/content/Intent;

    const-string v1, "width"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 312
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->b:Landroid/content/Intent;

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 313
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->b:Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->b:Landroid/content/Intent;

    const-string v1, "isOriginal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 315
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object v0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual/range {v0 .. v6}, Lo/Ki;->b(Landroidx/fragment/app/Fragment;IILjava/lang/String;ZZ)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ki;->b()V

    .line 328
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz p1, :cond_2

    .line 329
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Landroid/view/View;)V

    :cond_2
    return-void
.end method
