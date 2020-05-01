.class public Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "VolumeDialogFrag.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$MdxMiniPlayerDialog;


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeDialogFrag"


# instance fields
.field private mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private getMostRecentVolume()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getVolume()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static newInstance()Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;-><init>()V

    .line 45
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->setStyle(II)V

    .line 46
    return-object v0
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 51
    const v0, 0x7f03011a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    const v0, 0x7f0f0397

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->seekBar:Landroid/widget/SeekBar;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->seekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 57
    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getMostRecentVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onStart()V

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$1;-><init>(Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag$2;-><init>(Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 89
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onStop()V

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 117
    const-string/jumbo v1, "VolumeDialogFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting mdx volume to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->setVolume(I)V

    .line 119
    return-void
.end method
