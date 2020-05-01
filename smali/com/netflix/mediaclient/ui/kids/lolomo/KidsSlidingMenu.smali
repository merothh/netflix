.class public Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;
.super Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;
.source "KidsSlidingMenu.java"


# instance fields
.field private final kidsItemTextColor:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    const v0, 0x7f0f0366

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    const v0, 0x7f0f036d

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 29
    const v0, 0x7f0f0360

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->kidsItemTextColor:I

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->profileName:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->kidsItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->profileName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->homeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->kidsItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->homeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->homeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeShadow(Landroid/widget/TextView;)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->homeText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a018f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const v0, 0x7f0f035b

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V
    .locals 5

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    .line 58
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->kidsItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a018f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeShadow(Landroid/widget/TextView;)V

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateSwitchProfileButton()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateSwitchProfileButton()V

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    return-void
.end method
