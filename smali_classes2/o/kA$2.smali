.class Lo/kA$2;
.super Landroid/media/session/MediaSession$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kA;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/kA;


# direct methods
.method constructor <init>(Lo/kA;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lo/kA$2;->b:Lo/kA;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "customActionSeek"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "nf_media_session_controller"

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "offset"

    .line 216
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "mdx onCustomAction action=%s offset=%d"

    invoke-static {v3, v1, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 220
    :try_start_0
    iget-object v1, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v1}, Lo/kA;->b(Lo/kA;)Lo/ko;

    move-result-object v1

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Lo/ko;->c(I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "mdx onCustomAction fail"

    .line 225
    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "mdx onCustomAction unsupported action=%s"

    .line 228
    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 230
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .locals 3

    .line 236
    :try_start_0
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->b(Lo/kA;)Lo/ko;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lo/ko;->c(I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "nf_media_session_controller"

    const-string v2, "onFastForward fail"

    .line 241
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "nf_media_session_controller"

    .line 195
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 198
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 199
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_0

    .line 200
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->d(Lo/kA;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 202
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->e(Lo/kA;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-7597 - MediaSession::onMediaButtonEvent() got weird code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 208
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "onPause"

    .line 272
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->e(Lo/kA;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "onPlay"

    .line 284
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->d(Lo/kA;)V

    return-void
.end method

.method public onRewind()V
    .locals 3

    .line 248
    :try_start_0
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->b(Lo/kA;)Lo/ko;

    move-result-object v0

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lo/ko;->c(I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "nf_media_session_controller"

    const-string v2, "onRewind fail"

    .line 253
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 259
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_media_session_controller"

    const-string v2, "mdx onSeekTo=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    :try_start_0
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->b(Lo/kA;)Lo/ko;

    move-result-object v0

    long-to-int p2, p1

    div-int/lit16 p2, p2, 0x3e8

    invoke-virtual {v0, p2}, Lo/ko;->b(I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "onSeekTo fail"

    .line 266
    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "nf_media_session_controller"

    const-string v1, "onStop"

    .line 278
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lo/kA$2;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->a(Lo/kA;)V

    return-void
.end method
