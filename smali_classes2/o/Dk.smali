.class public Lo/Dk;
.super Lo/WebChromeClient;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dk$StateListAnimator;
    }
.end annotation


# instance fields
.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/widget/SeekBar;

.field private e:Lo/Dk$StateListAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method public static b()Lo/Dk;
    .locals 3

    .line 57
    new-instance v0, Lo/Dk;

    invoke-direct {v0}, Lo/Dk;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Lo/Dk;->setStyle(II)V

    return-object v0
.end method

.method static synthetic c(Lo/Dk;)Landroid/widget/SeekBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/Dk;->d:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private d()I
    .locals 1

    .line 143
    invoke-virtual {p0}, Lo/Dk;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireMdxTargetCallback()Lo/Mh;

    move-result-object v0

    invoke-interface {v0}, Lo/Mh;->F()I

    move-result v0

    return v0
.end method


# virtual methods
.method public d(Lo/Dk$StateListAnimator;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/Dk;->e:Lo/Dk$StateListAnimator;

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 64
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->gn:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->vC:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lo/Dk;->d:Landroid/widget/SeekBar;

    .line 66
    iget-object p2, p0, Lo/Dk;->d:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    iget-object p2, p0, Lo/Dk;->d:Landroid/widget/SeekBar;

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 115
    invoke-super {p0}, Lo/WebChromeClient;->onResume()V

    .line 116
    iget-object v0, p0, Lo/Dk;->d:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lo/Dk;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 75
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 78
    new-instance v0, Lo/Dk$1;

    invoke-direct {v0, p0}, Lo/Dk$1;-><init>(Lo/Dk;)V

    iput-object v0, p0, Lo/Dk;->c:Landroid/content/BroadcastReceiver;

    .line 90
    invoke-virtual {p0}, Lo/Dk;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Dk;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETVOLUME"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    invoke-virtual {p0}, Lo/Dk;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lo/Dk$4;

    invoke-direct {v1, p0}, Lo/Dk$4;-><init>(Lo/Dk;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 106
    invoke-super {p0}, Lo/WebChromeClient;->onStop()V

    .line 108
    invoke-virtual {p0}, Lo/Dk;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Dk;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lo/Dk;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Dk;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting mdx volume to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeDialogFrag"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lo/Dk;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireMdxTargetCallback()Lo/Mh;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/Mh;->a(I)V

    .line 132
    iget-object v0, p0, Lo/Dk;->e:Lo/Dk$StateListAnimator;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lo/Dk$StateListAnimator;->d(I)V

    :cond_0
    return-void
.end method
