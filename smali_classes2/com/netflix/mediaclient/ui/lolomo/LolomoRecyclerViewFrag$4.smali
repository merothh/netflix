.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$4;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    .line 1181
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1183
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p1

    invoke-interface {p1}, Lo/Rq;->e()I

    move-result p1

    if-lez p1, :cond_0

    .line 1185
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$4;->b:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    invoke-virtual {p1}, Lo/EditText;->d()V

    :cond_0
    return-void
.end method
