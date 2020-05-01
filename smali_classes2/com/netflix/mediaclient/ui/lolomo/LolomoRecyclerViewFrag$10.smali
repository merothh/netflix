.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$10;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$10;->e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$10;->e:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Z)Z

    return-void
.end method
