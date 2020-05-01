.class public Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;
.super Ljava/lang/Object;
.source "PressedStateHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 106
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    .line 108
    if-nez p2, :cond_0

    .line 109
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "onClickListener must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;)Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "PressedStateHandler"

    const-string/jumbo v1, "Pressed handler is busy - waiting to launch details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->pressedStateHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->access$300(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string/jumbo v0, "PressedStateHandler"

    const-string/jumbo v1, "Pressed handler is not available or busy - calling onClick callback directly"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
