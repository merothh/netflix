.class public abstract Lo/WebChromeClient;
.super Lo/PushbackReader;
.source ""

# interfaces
.implements Lo/JsDialogHelper;
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebChromeClient$Application;
    }
.end annotation


# instance fields
.field protected a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/WebChromeClient$Application;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I

.field protected i:Lo/JsDialogHelper$Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lo/PushbackReader;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/WebChromeClient;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic c(Lo/WebChromeClient;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lo/WebChromeClient;->c:Z

    return p1
.end method


# virtual methods
.method protected c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 117
    iput p1, p0, Lo/WebChromeClient;->d:I

    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 256
    :try_start_0
    invoke-super {p0}, Lo/PushbackReader;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Error dismissing dialog"

    const-string v3, "NetflixDialogFrag"

    .line 258
    invoke-static {v3, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 259
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e(Lo/WebChromeClient$Application;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lo/WebChromeClient;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lo/WebChromeClient;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Lo/Am;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lo/WebChromeClient;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lo/WebChromeClient;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lo/WebChromeClient;->getShowsDialog()Z

    move-result v0

    .line 127
    invoke-virtual {p0}, Lo/WebChromeClient;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Dialog is null upon activity creation! Setting shows dialog to false."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetflixDialogFrag"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v1}, Lo/WebChromeClient;->setShowsDialog(Z)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lo/WebChromeClient;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lo/WebChromeClient;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    :goto_0
    invoke-super {p0, p1}, Lo/PushbackReader;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0, v0}, Lo/WebChromeClient;->setShowsDialog(Z)V

    .line 140
    new-instance p1, Lo/WebChromeClient$3;

    invoke-direct {p1, p0}, Lo/WebChromeClient$3;-><init>(Lo/WebChromeClient;)V

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lo/WebChromeClient;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/WebChromeClient$Application;

    .line 275
    invoke-static {v1, p0}, Lo/WebChromeClient$Application;->a(Lo/WebChromeClient$Application;Lo/WebChromeClient;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-super {p0, p1}, Lo/PushbackReader;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lo/PushbackReader;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 312
    invoke-super {p0, p1}, Lo/PushbackReader;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 216
    invoke-super {p0}, Lo/PushbackReader;->onDestroy()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lo/WebChromeClient;->b:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 293
    invoke-super {p0}, Lo/PushbackReader;->onDestroyView()V

    .line 295
    iget-object v0, p0, Lo/WebChromeClient;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/WebChromeClient$Application;

    .line 296
    invoke-static {v1, p0}, Lo/WebChromeClient$Application;->e(Lo/WebChromeClient$Application;Lo/WebChromeClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "NetflixDialogFrag"

    .line 283
    :try_start_0
    invoke-super {p0, p1}, Lo/PushbackReader;->onDismiss(Landroid/content/DialogInterface;)V

    const-string p1, "NetflixDialogFrag is dismissed"

    .line 284
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Error dismissing dialog"

    .line 286
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 287
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lo/PushbackReader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, p1}, Lo/WebChromeClient;->c(Landroid/view/View;)V

    return-void
.end method

.method protected s()V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lo/WebChromeClient;->l()V

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1

    .line 371
    invoke-super {p0, p1}, Lo/PushbackReader;->setEnterTransition(Ljava/lang/Object;)V

    .line 372
    instance-of v0, p1, Lo/CharsetDecoder;

    if-eqz v0, :cond_0

    .line 373
    check-cast p1, Lo/CharsetDecoder;

    new-instance v0, Lo/WebChromeClient$2;

    invoke-direct {v0, p0}, Lo/WebChromeClient$2;-><init>(Lo/WebChromeClient;)V

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    :cond_0
    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lo/WebChromeClient;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 236
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 238
    :cond_0
    iput-object p1, p0, Lo/WebChromeClient;->i:Lo/JsDialogHelper$Activity;

    :goto_0
    return-void
.end method
