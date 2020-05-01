.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$StateListAnimator;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->g()Lo/GN;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/GN;->d()V

    :cond_0
    return-void
.end method
