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

    .prologue
    const v5, 0x7f0e003e

    const v4, 0x7f0e003b

    const v3, 0x7f0e003a

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    .line 229
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$1;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 644
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f0107

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f0108

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerLabel:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f010a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00eb

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIconLabel:Landroid/view/View;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00df

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonsContainer:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00e4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00ed

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFab:Landroid/support/design/widget/FloatingActionButton;

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpad:Landroid/widget/TableLayout;

    .line 144
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setupButtons()V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    .line 154
    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    .line 156
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 157
    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    .line 158
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    .line 159
    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    .line 166
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setupSpeaker()V

    .line 167
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Failed to initiate tone generator"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    .line 162
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    .line 163
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->repostOnEverySecondRunnable(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelCall()V
    .locals 2

    .prologue
    .line 574
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Cancel call by user"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->terminate()Z

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    .line 577
    return-void
.end method

.method public static convertDrawableToGrayScale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 717
    if-nez p0, :cond_0

    .line 718
    const/4 v0, 0x0

    .line 722
    :goto_0
    return-object v0

    .line 720
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 721
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private executeAfterRippleAnimation(Ljava/lang/Runnable;I)V
    .locals 4

    .prologue
    .line 472
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private handleButtonTounch(ICZI)V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    if-eqz p3, :cond_3

    .line 297
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
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

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->startDTMF(C)V

    .line 301
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p4}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 316
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateDiaPadState(ICZ)V

    .line 318
    if-nez v0, :cond_2

    .line 319
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Button label not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2
    return-void

    .line 306
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
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

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->stopDTMF()V

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method private handleButtonTounch(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
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

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_1
    const v0, 0x7f0f00f0

    const/16 v1, 0x31

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 253
    :pswitch_2
    const v0, 0x7f0f00f2

    const/16 v1, 0x32

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 256
    :pswitch_3
    const v0, 0x7f0f00f4

    const/16 v1, 0x33

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 259
    :pswitch_4
    const v0, 0x7f0f00f6

    const/16 v1, 0x34

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 262
    :pswitch_5
    const v0, 0x7f0f00f8

    const/16 v1, 0x35

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 265
    :pswitch_6
    const v0, 0x7f0f00fa

    const/16 v1, 0x36

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 268
    :pswitch_7
    const v0, 0x7f0f00fc

    const/16 v1, 0x37

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 271
    :pswitch_8
    const v0, 0x7f0f00fe

    const/16 v1, 0x38

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 274
    :pswitch_9
    const v0, 0x7f0f0100

    const/16 v1, 0x39

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 277
    :pswitch_a
    const v0, 0x7f0f0104

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 280
    :pswitch_b
    const v0, 0x7f0f0102

    const/16 v1, 0x2a

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 283
    :pswitch_c
    const v0, 0x7f0f0106

    const/16 v1, 0x23

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 248
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

    .prologue
    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    return-void
.end method

.method private setButtonsStateToEnabled(Z)V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 201
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 198
    invoke-virtual {v4, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 199
    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_1
.end method

.method private setDialPadColor(II)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    :cond_0
    return-void
.end method

.method private setEnableDialpad(Z)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200e8

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setImageViewEnabled(Landroid/content/Context;ZLandroid/widget/ImageView;I)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIconLabel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method public static setImageViewEnabled(Landroid/content/Context;ZLandroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 704
    if-eqz p1, :cond_0

    .line 705
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    return-void

    .line 704
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->convertDrawableToGrayScale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized setProgress()V
    .locals 4

    .prologue
    .line 681
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

    .line 682
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
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

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupButtons()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 206
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v3, 0x7f0f0104

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 208
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f0

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 209
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f2

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 210
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 211
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f6

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 212
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00f8

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00fa

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00fc

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 215
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f00fe

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f0100

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f0102

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 218
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f0f0106

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 220
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 221
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isConnected()Z

    move-result v0

    .line 225
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    .line 226
    return-void
.end method

.method private setupSpeaker()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
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

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Tablet: hide speaker option"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_1
    return-void
.end method

.method private toggleDialpad()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 582
    :goto_0
    if-eqz v0, :cond_1

    .line 583
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Dialpad was visible, remove it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :goto_1
    new-instance v1, Lcom/netflix/mediaclient/ui/voip/DialerScreen$5;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$5;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Z)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    .line 606
    return-void

    :cond_0
    move v0, v1

    .line 581
    goto :goto_0

    .line 589
    :cond_1
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Dialpad was NOT visible, show it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private toggleMic()V
    .locals 3

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    if-eqz v0, :cond_2

    .line 610
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Unmute"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->setMicrophoneMute(Z)V

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 618
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
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

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateMic()V

    .line 626
    return-void

    .line 612
    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Mute"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private toggleSpeaker()V
    .locals 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    if-eqz v0, :cond_0

    .line 630
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Set speaker from on to off"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 637
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateSpeaker()V

    .line 638
    return-void

    .line 632
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Set speaker from off to on"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCallStatus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 422
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Update call status..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080148

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f08014b

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f08014c

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDiaPadState(ICZ)V
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Sets color to label for pre L devices..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz p3, :cond_1

    .line 338
    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setDialPadColor(II)V

    goto :goto_0

    .line 340
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

    .prologue
    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    .line 450
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private updateSpeaker()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    .line 492
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method


# virtual methods
.method public callConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 525
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    .line 526
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startTimer()V

    .line 528
    return-void
.end method

.method public callRinging()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    return-object v0
.end method

.method initUi()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 403
    return-void
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 542
    if-nez p1, :cond_0

    .line 543
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "DialScreen:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    return v0

    .line 547
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 564
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
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

    .line 567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :pswitch_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleSpeaker()V

    goto :goto_0

    .line 554
    :pswitch_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleMic()V

    goto :goto_0

    .line 557
    :pswitch_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->cancelCall()V

    goto :goto_0

    .line 561
    :pswitch_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleDialpad()V

    goto :goto_0

    .line 547
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

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    .line 671
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startTimer()V

    .line 672
    return-void
.end method

.method public startCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 507
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->update(Z)V

    .line 509
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->dial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Success on starting call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 520
    return-void

    .line 513
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Failed to start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 2

    .prologue
    .line 665
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 660
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Stop timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method update(Z)V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
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

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateMic()V

    .line 411
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateSpeaker()V

    .line 412
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 413
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    .line 414
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->restartTimer()V

    .line 417
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    .line 418
    return-void
.end method
