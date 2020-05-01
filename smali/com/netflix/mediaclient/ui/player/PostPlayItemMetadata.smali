.class public Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;
.super Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.source "PostPlayItemMetadata.java"


# instance fields
.field itemBasic:Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

.field metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;


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

    const v0, 0x7f0f02c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->itemBasic:Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    const v0, 0x7f0f02ca

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    return-void
.end method

.method protected startTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->startTimer()V

    :cond_0
    return-void
.end method

.method protected stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->stopTimer()V

    :cond_0
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->itemBasic:Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    return-void
.end method
