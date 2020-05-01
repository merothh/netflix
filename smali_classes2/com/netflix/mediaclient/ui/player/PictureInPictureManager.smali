.class public Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;,
        Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;
    }
.end annotation


# instance fields
.field private a:Landroid/util/Rational;

.field private b:Z

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private final e:Landroid/app/PictureInPictureParams$Builder;

.field private f:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;

.field private g:Landroid/app/Activity;

.field private h:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;Landroid/app/Activity;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a:Landroid/util/Rational;

    .line 65
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->h:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d:Z

    .line 73
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->f:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;

    .line 74
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;)Lcom/netflix/mediaclient/ui/player/IPlayerFragment;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->h:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d:Z

    return v0
.end method

.method c(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d:Z

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->h:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->U_()Lo/Am;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lo/adk;->k(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lo/Am;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ui.allowpip"

    invoke-static {p1, v0, v3}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;)V
    .locals 8

    .line 103
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$1;->b:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$PipAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    return-void

    .line 111
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->bn:I

    const-string v2, "Pause"

    move-object v3, v2

    move v2, p1

    const/4 p1, 0x2

    goto :goto_0

    .line 105
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->bp:I

    const-string v2, "Play"

    move-object v3, v2

    const/4 v0, 0x1

    move v2, p1

    const/4 p1, 0x1

    .line 120
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "media_control"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "control_type"

    .line 129
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v6, 0x0

    .line 127
    invoke-static {v5, v0, p1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    invoke-static {v0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 131
    new-instance v2, Landroid/app/RemoteAction;

    invoke-direct {v2, v0, v3, v3, p1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {p1, v4}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 134
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a:Landroid/util/Rational;

    invoke-virtual {p1, v0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 143
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->b:Z

    .line 144
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update action because %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Fragment not attached to an activity, cannot update actions"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public e(Landroid/util/Rational;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const v1, 0x3ed639d7

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const v1, 0x4018f5c3    # 2.39f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a:Landroid/util/Rational;

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->a:Landroid/util/Rational;

    invoke-virtual {p1, v0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 159
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enter Picture in picture with params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because of %e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 153
    :cond_1
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter PIP with aspect ratio not within range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 4

    .line 167
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c(Z)V

    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$3;-><init>(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c:Landroid/content/BroadcastReceiver;

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "media_control"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->g:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->c:Landroid/content/BroadcastReceiver;

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->f:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;->c(Z)V

    return-void
.end method
