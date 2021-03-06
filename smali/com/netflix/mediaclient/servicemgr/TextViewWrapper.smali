.class Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
.super Ljava/lang/Object;
.source "TextViewWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

.field private final keepVisibilityState:Z

.field protected final textView:Landroid/widget/TextView;

.field private final trackId:I

.field private final videoId:Ljava/lang/String;

.field private final videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput p6, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->trackId:I

    iput-boolean p7, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->keepVisibilityState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->trackId:I

    return v0
.end method


# virtual methods
.method protected hide()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected setAsInList()V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0801a0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u2212"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setAsNotInList()V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0801a0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "+"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected show()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$3;->$SwitchMap$com$netflix$mediaclient$servicemgr$AddToListData$AddToListState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->keepVisibilityState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isCurrentProfileIQEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->show()V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0801f1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->setAsInList()V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;-><init>(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f080101

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->setAsNotInList()V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$2;-><init>(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->hide()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
