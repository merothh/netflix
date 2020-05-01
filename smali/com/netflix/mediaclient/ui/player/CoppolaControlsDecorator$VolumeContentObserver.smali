.class Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;
.super Landroid/database/ContentObserver;
.source "CoppolaControlsDecorator.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$700(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->access$800(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    return-void
.end method
