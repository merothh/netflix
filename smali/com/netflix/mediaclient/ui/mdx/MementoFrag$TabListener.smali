.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setPagerPositionOnTabSelect(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 506
    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZ)V

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1100(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V

    goto :goto_0

    .line 509
    :cond_2
    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZ)V

    .line 511
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1100(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V

    goto :goto_0
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->setPagerPositionOnTabSelect(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 495
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 470
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->setPagerPositionOnTabSelect(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 475
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isActivityValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoTabCast:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->memento:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoTabRelated:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->memento:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    return-void
.end method
