.class final Lo/VoiceInteractor$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaController$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic b:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 2240
    iput-object p1, p0, Lo/VoiceInteractor$StateListAnimator;->b:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lo/Mode;Z)V
    .locals 0

    .line 2254
    iget-object p2, p0, Lo/VoiceInteractor$StateListAnimator;->b:Lo/VoiceInteractor;

    invoke-virtual {p2, p1}, Lo/VoiceInteractor;->c(Lo/Mode;)V

    return-void
.end method

.method public onOpenSubMenu(Lo/Mode;)Z
    .locals 2

    .line 2245
    iget-object v0, p0, Lo/VoiceInteractor$StateListAnimator;->b:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2247
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
