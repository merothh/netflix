.class public Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "ProfileDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ALPHA_CONTENT_FADE:F = 0.4f

.field private static final EXTRA_PROFILE_ID:Ljava/lang/String; = "extra_profile_id"

.field public static final EXTRA_SELECTED_AVATAR:Ljava/lang/String; = "avatar_name"

.field private static final SAVE_BUNDLE_CURRENT_AVATAR:Ljava/lang/String; = "bundle_current_avatar"

.field private static final SAVE_BUNDLE_DEFAULT_AVATAR:Ljava/lang/String; = "bundle_default_avatar"

.field private static final SAVE_BUNDLE_KIDS:Ljava/lang/String; = "bundle_kids"

.field private static final SAVE_BUNDLE_NAME:Ljava/lang/String; = "bundle_name"

.field private static final SELECT_AVATAR_ACTIVITY_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProfileDetailsActivity"


# instance fields
.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private mCancelButton:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private mDataWasInitialized:Z

.field private mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteSection:Landroid/view/View;

.field private final mErrorHandlerCallback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

.field private mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

.field private mInputProfileId:Ljava/lang/String;

.field private mKidsCheckBox:Landroid/widget/CheckBox;

.field private mKidsSection:Landroid/view/View;

.field private mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mName:Landroid/widget/EditText;

.field private mNewProfileCreation:Z

.field private mPictureSelectorHint:Landroid/view/View;

.field private mProfileChangeRequestWasSent:Z

.field private mProfileDeletionWasTriggered:Z

.field private mProfilePictureSection:Landroid/view/View;

.field private mProfilePictureView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private mSaveButton:Landroid/view/View;

.field private mSaveButtonText:Landroid/view/View;

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$3;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mErrorHandlerCallback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->updateInputProfile()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getProfileForLogging()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->cancel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->removeFocusAndHideKeyboard()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findErrorsBeforeSubmit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mErrorHandlerCallback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfileChangeRequestWasSent:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->showLoading(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDataWasInitialized:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->updateSaveButton(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->isCurrentAvatarDataValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfileDeletionWasTriggered:Z

    return v0
.end method

.method private cancel()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getProfileForLogging()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfileChangeRequestWasSent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    if-eqz v0, :cond_2

    const v0, 0x7f08029a

    :goto_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->finish()V

    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getProfileForLogging()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    move-result-object v2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEditProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0802a4

    goto :goto_1
.end method

.method private findErrorsBeforeSubmit()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v2, "Manager isn\'t available!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v2, "Current avatar isn\'t ready yet, but Save button was clicked!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0802a1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProfileForLogging()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-object v0
.end method

.method public static getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "extra_profile_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private initUI()V
    .locals 3

    const v0, 0x7f0300e4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    const v0, 0x7f0f030a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mContentView:Landroid/view/View;

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f0f0309

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v0, 0x7f0f0312

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCancelButton:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$4;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0310

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDeleteSection:Landroid/view/View;

    const v0, 0x7f0f0311

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDeleteButton:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$5;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f030c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsSection:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsSection:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$6;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0f0314

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mSaveButtonText:Landroid/view/View;

    const v0, 0x7f0f0313

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mSaveButton:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mSaveButton:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$7;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f030b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$8;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f030e

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureSection:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureSection:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f030f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mPictureSelectorHint:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const v0, 0x7f0f0315

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    if-eqz v1, :cond_2

    const v1, 0x7f080299

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0802a5

    goto :goto_0
.end method

.method private isCurrentAvatarDataValid()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNameFieldValid()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserDataValid()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->isNameFieldValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFocusAndHideKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->forceHideKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method

.method private showDeleteProfileSection(Z)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDeleteSection:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showLoading(ZZ)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    :goto_0
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mContentView:Landroid/view/View;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->updateSaveButton(Z)V

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCancelButton:Landroid/view/View;

    if-nez p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCancelButton:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v3

    :goto_5
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDeleteButton:Landroid/view/View;

    if-nez p1, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsSection:Landroid/view/View;

    if-nez p1, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->isCurrentAvatarDataValid()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    :goto_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_a

    :goto_a
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_b
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v4

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v1, v2

    goto :goto_9

    :cond_a
    move v3, v4

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_c

    :goto_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b

    :cond_c
    move v3, v4

    goto :goto_c
.end method

.method private updateInputProfile()V
    .locals 5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-nez v0, :cond_2

    iput-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    :cond_2
    return-void
.end method

.method private updateSaveButton(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->isUserDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mSaveButtonText:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isPrimaryProfile()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->showDeleteProfileSection(Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDataWasInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDataWasInitialized:Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_3

    move v0, v6

    :goto_1
    if-nez v0, :cond_4

    invoke-direct {p0, v6, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->showLoading(ZZ)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->showLoading(ZZ)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->isCurrentAvatarDataValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfilePictureView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    goto :goto_2
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profileDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method protected handleProfilesListUpdated()V
    .locals 2

    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "handleProfilesListUpdated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->finish()V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "avatar_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    const-string/jumbo v0, "ProfileDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->updateUI()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->showLoading(ZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mErrorHandlerCallback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->removeProfile(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfileChangeRequestWasSent:Z

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mProfileDeletionWasTriggered:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "Weird use case: profile deletion needs to be started, but input profile is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    if-nez v2, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    :cond_1
    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeleteProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "Negative dialog button was clicked"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeleteProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEditProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "Unhandled dialog button was clicked"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mInputProfileId:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->initUI()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "bundle_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "bundle_kids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "bundle_default_avatar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "bundle_current_avatar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    const-string/jumbo v1, "bundle_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    const-string/jumbo v1, "bundle_kids"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string/jumbo v0, "bundle_default_avatar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    const-string/jumbo v0, "bundle_current_avatar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDataWasInitialized:Z

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->updateUI()V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mNewProfileCreation:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "bundle_name"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bundle_kids"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mKidsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "bundle_default_avatar"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "bundle_current_avatar"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
