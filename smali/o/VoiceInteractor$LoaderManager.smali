.class final Lo/VoiceInteractor$LoaderManager;
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
    name = "LoaderManager"
.end annotation


# instance fields
.field final synthetic b:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 2207
    iput-object p1, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lo/Mode;Z)V
    .locals 4

    .line 2212
    invoke-virtual {p1}, Lo/Mode;->getRootMenu()Lo/Mode;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2214
    :goto_0
    iget-object v3, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Lo/VoiceInteractor;->e(Landroid/view/Menu;)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 2217
    iget-object p2, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    iget v2, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    invoke-virtual {p2, v2, p1, v0}, Lo/VoiceInteractor;->a(ILo/VoiceInteractor$PendingIntent;Landroid/view/Menu;)V

    .line 2218
    iget-object p2, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    invoke-virtual {p2, p1, v1}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    goto :goto_1

    .line 2222
    :cond_2
    iget-object v0, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    invoke-virtual {v0, p1, p2}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onOpenSubMenu(Lo/Mode;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 2229
    iget-object v0, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    iget-boolean v0, v0, Lo/VoiceInteractor;->m:Z

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2231
    iget-object v1, p0, Lo/VoiceInteractor$LoaderManager;->b:Lo/VoiceInteractor;

    iget-boolean v1, v1, Lo/VoiceInteractor;->t:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 2232
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
