.class public Lcom/netflix/mediaclient/ui/ums/EogPlanPage;
.super Ljava/lang/Object;
.source "EogPlanPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "eog_plan_page"


# instance fields
.field private mAccount:Landroid/widget/TextView;

.field private mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

.field private mContinue:Landroid/widget/TextView;

.field private mDisclaimer:Landroid/widget/TextView;

.field private mHdCheckBox:Landroid/widget/CheckBox;

.field private mHdName:Landroid/widget/TextView;

.field private mHdPlanHeader:Landroid/widget/LinearLayout;

.field private mHdValue:Landroid/widget/TextView;

.field private mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

.field private mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

.field private mSdCheckBox:Landroid/widget/CheckBox;

.field private mSdName:Landroid/widget/TextView;

.field private mSdPlanHeader:Landroid/widget/LinearLayout;

.field private mSdValue:Landroid/widget/TextView;

.field private mSelect:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUhdCheckBox:Landroid/widget/CheckBox;

.field private mUhdName:Landroid/widget/TextView;

.field private mUhdPlanHeader:Landroid/widget/LinearLayout;

.field private mUhdValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f015b

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f015c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSelect:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0164

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0167

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mAccount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mContinue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mDisclaimer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f015e

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0166

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f015d

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f0f0165

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200b8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private logPlanChangeEventByUser(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "eog_plan_page"

    const-string/jumbo v1, "skip cl logging for plan change - eogAlert null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "eog_plan_page"

    const-string/jumbo v1, "skip cl logging - bad plandIndex:%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "eog_plan_page"

    const-string/jumbo v3, "cl logging planChange planIndex:%d, planId:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPlanSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v2, v1, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportChangeValueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v3, v1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportChangeValueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPlanSelectionUi(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUiToDefault()V

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "eog_plan_page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No plan is selected. planIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->setCurrentPlanIndex(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPlanSelectionUiToDefault()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public initUi()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->canProceed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSelect:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isPlanOnlyCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getCurrentPlanIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->buildAccountString(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mAccount:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mContinue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->continueBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mDisclaimer:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->disclaimerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->selectPlanText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "EogPlanPage:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "eog_plan_page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown view, unable to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordPlanSelection()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f016a
        :pswitch_0
    .end packed-switch
.end method

.method public performPlanSelection(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "EogPlanPage:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "eog_plan_page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uknown view, unable to handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "eog_plan_page"

    const-string/jumbo v3, "Clicked on SD plan"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->logPlanChangeEventByUser(I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "Clicked on HD plan"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->logPlanChangeEventByUser(I)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "Clicked on UHD plan"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->logPlanChangeEventByUser(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f015d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
