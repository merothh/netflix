.class Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$EndAnimationCompleteListener;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "ScalePressedStateHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$EndAnimationCompleteListener;->this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$EndAnimationCompleteListener;-><init>(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$EndAnimationCompleteListener;->this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->notifyParentOfAnimationComplete()V

    return-void
.end method
