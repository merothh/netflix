.class public Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;
.super Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
.source "NavigationBarListenerForICS.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5

    .prologue
    .line 46
    and-int/lit8 v0, p1, 0x2

    .line 47
    and-int/lit8 v1, p1, 0x0

    .line 49
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string/jumbo v2, "nf_navbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSystemUiVisibilityChange called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string/jumbo v2, "nf_navbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSystemUiVisibilityChange visibility mask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v1, "nf_navbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSystemUiVisibilityChange hide mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "Navigation bar is hidden, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "Navigation bar is visible, execute onTouch event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "startListening: add itself to listen for navigation bar changes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 29
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "stopListening: remove listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForICS;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 37
    return-void
.end method
