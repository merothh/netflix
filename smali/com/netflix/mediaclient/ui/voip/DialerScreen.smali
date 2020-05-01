.class Lcom/netflix/mediaclient/ui/voip/DialerScreen;
.super Ljava/lang/Object;
.source "DialerScreen.java"


# static fields
.field private static final DELAY_POST:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VoipActivity"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonSelectedColor:I

.field private mButtons:[Landroid/view/View;

.field private mButtonsContainer:Landroid/view/View;

.field private mCallStatus1:Landroid/widget/TextView;

.field private mCallStatus2:Landroid/widget/TextView;

.field private mConnected:Z

.field private mDialerContainer:Landroid/view/View;

.field protected mDialpad:Landroid/widget/TableLayout;

.field private mDialpadIcon:Landroid/widget/ImageView;

.field private mDialpadIconLabel:Landroid/view/View;

.field protected mFab:Landroid/support/design/widget/FloatingActionButton;

.field private mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingView:Landroid/view/View;

.field private mMicIcon:Landroid/widget/ImageView;

.field private mMuted:Z

.field private mNumberButtonColor:I

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOtherButtonColor:I

.field private mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

.field private mRippleAnimationInMs:I

.field private mSpeakerButtonContainer:Landroid/view/View;

.field private mSpeakerIcon:Landroid/widget/ImageView;

.field private mSpeakerLabel:Landroid/widget/TextView;

.field private mSpeakerOn:Z

.field private mStatusContainer:Landroid/view/View;

.field private mTimer:Landroid/widget/TextView;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final onEverySecond:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const v5, 0x7f0e003e

    const v4, 0x7f0e003b

    const v3, 0x7f0e003a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$1;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f0107

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f0108

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f010a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00eb

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIconLabel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00df

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00ed

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFab:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpad:Landroid/widget/TableLayout;

    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setupButtons()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setupSpeaker()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Failed to initiate tone generator"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->repostOnEverySecondRunnable(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelCall()V
    .locals 2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Cancel call by user"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->terminate()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    return-void
.end method

.method public static convertDrawableToGrayScale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private executeAfterRippleAnimation(Ljava/lang/Runnable;I)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private handleButtonTounch(ICZI)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VoipActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Button pressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->startDTMF(C)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p4}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateDiaPadState(ICZ)V

    if-nez v0, :cond_2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Button label not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "VoipActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Button released "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->stopDTMF()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method private handleButtonTounch(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown view for button, unable to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const v0, 0x7f0f00f0

    const/16 v1, 0x31

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0f00f2

    const/16 v1, 0x32

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0f00f4

    const/16 v1, 0x33

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0f00f6

    const/16 v1, 0x34

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0f00f8

    const/16 v1, 0x35

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0f00fa

    const/16 v1, 0x36

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0f00fc

    const/16 v1, 0x37

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0f00fe

    const/16 v1, 0x38

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0f0100

    const/16 v1, 0x39

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0f0104

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0f0102

    const/16 v1, 0x2a

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0f0106

    const/16 v1, 0x23

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f00f0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private repostOnEverySecondRunnable(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setButtonsStateToEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_1
.end method

.method private setDialPadColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setEnableDialpad(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200e8

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setImageViewEnabled(Landroid/content/Context;ZLandroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIconLabel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static setImageViewEnabled(Landroid/content/Context;ZLandroid/widget/ImageView;I)V
    .locals 1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->convertDrawableToGrayScale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized setProgress()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->getCallStartTimeInMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VoipActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Elapsed [sec] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupButtons()V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v3, 0x7f0f0104

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f0

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f2

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f6

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f8

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00fa

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00fc

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00fe

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f0100

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f0102

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f0106

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    return-void
.end method

.method private setupSpeaker()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Speaker is on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", muted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Tablet: hide speaker option"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private toggleDialpad()V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Dialpad was visible, remove it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance v1, Lcom/netflix/mediaclient/ui/voip/DialerScreen$5;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$5;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Z)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Dialpad was NOT visible, show it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private toggleMic()V
    .locals 3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Unmute"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->setMicrophoneMute(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateMic()V

    return-void

    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Mute"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private toggleSpeaker()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Set speaker from on to off"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateSpeaker()V

    return-void

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Set speaker from off to on"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCallStatus()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Update call status..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080148

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f08014b

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f08014c

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDiaPadState(ICZ)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Sets color to label for pre L devices..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setDialPadColor(II)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setDialPadColor(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    goto :goto_1
.end method

.method private updateMic()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private updateSpeaker()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method


# virtual methods
.method public callConnected()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startTimer()V

    return-void
.end method

.method public callRinging()V
    .locals 0

    return-void
.end method

.method getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    return-object v0
.end method

.method initUi()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "DialScreen:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VoipActivity"

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

    :pswitch_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleSpeaker()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleMic()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->cancelCall()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleDialpad()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f00e5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public restartTimer()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startTimer()V

    return-void
.end method

.method public startCall()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->update(Z)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->dial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Success on starting call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Failed to start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopTimer()V
    .locals 2

    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Stop timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method update(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update, connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateMic()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateSpeaker()V

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->restartTimer()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    return-void
.end method
