.class public Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;
.super Ljava/lang/Object;
.source "NotificationViewHolder.java"


# instance fields
.field private final bottomText:Landroid/widget/TextView;

.field private final friendImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private final leftButton:Landroid/widget/Button;

.field private final leftUnreadIndicator:Landroid/view/View;

.field private final middleText:Landroid/widget/TextView;

.field private final movieArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private final nsaArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private final nsaPlayButton:Landroid/view/View;

.field private final playButton:Landroid/view/View;

.field private final rightButton:Landroid/widget/Button;

.field private final timeStampView:Landroid/widget/TextView;

.field private final topText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->friendImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->movieArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->timeStampView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->topText:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->middleText:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->bottomText:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->leftButton:Landroid/widget/Button;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->rightButton:Landroid/widget/Button;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->playButton:Landroid/view/View;

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->nsaPlayButton:Landroid/view/View;

    iput-object p11, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->nsaArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object p12, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->leftUnreadIndicator:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getBottomTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->bottomText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->friendImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->leftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getMiddleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->middleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->movieArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->nsaArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getNSAPlayButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->nsaPlayButton:Landroid/view/View;

    return-object v0
.end method

.method public getPlayButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->playButton:Landroid/view/View;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->rightButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getTimeStampView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->timeStampView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->topText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUnreadIndicator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->leftUnreadIndicator:Landroid/view/View;

    return-object v0
.end method
