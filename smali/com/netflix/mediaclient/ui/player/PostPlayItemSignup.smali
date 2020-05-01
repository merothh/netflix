.class public Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;
.super Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.source "PostPlayItemSignup.java"


# instance fields
.field protected samplingButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

.field protected samplingDetails:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    const v0, 0x7f0f02c5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->samplingDetails:Landroid/widget/TextView;

    const v0, 0x7f0f02c6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->samplingButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    return-void
.end method

.method protected startTimer(I)V
    .locals 0

    return-void
.end method

.method protected stopTimer()V
    .locals 0

    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801f6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->samplingDetails:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSignup;->samplingButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
