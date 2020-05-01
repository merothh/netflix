.class public Lo/CK;
.super Lo/RuntimePermission;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CK$StateListAnimator;,
        Lo/CK$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/widget/SwitchCompat;

.field private b:Landroid/widget/RadioGroup;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private i:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/RuntimePermission;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;ZI)V
    .locals 1

    .line 99
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lo/CK;->b:Landroid/widget/RadioGroup;

    .line 100
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/CK;->d:Landroid/widget/RadioButton;

    .line 101
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/CK;->e:Landroid/widget/RadioButton;

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/CK;->c:Landroid/widget/RadioButton;

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lo/CK;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 105
    iget-object p1, p0, Lo/CK;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 107
    invoke-direct {p0, p1}, Lo/CK;->e(Z)V

    if-nez p2, :cond_0

    .line 109
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CK;->e(Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/CK;Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/CK;->e(Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lo/CK$TaskDescription;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lo/CK$TaskDescription;

    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/CK$TaskDescription;->b(Landroid/content/Context;Z)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCaller: no callback interface!! activity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BandwidthPrefDialogFragment"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 114
    iget-object v0, p0, Lo/CK;->d:Landroid/widget/RadioButton;

    new-instance v1, Lo/CK$StateListAnimator;

    invoke-direct {v1, p0}, Lo/CK$StateListAnimator;-><init>(Lo/CK;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lo/CK;->e:Landroid/widget/RadioButton;

    new-instance v1, Lo/CK$StateListAnimator;

    invoke-direct {v1, p0}, Lo/CK$StateListAnimator;-><init>(Lo/CK;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lo/CK;->c:Landroid/widget/RadioButton;

    new-instance v1, Lo/CK$StateListAnimator;

    invoke-direct {v1, p0}, Lo/CK$StateListAnimator;-><init>(Lo/CK;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lo/CK;->a:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lo/CK$4;

    invoke-direct {v1, p0}, Lo/CK$4;-><init>(Lo/CK;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic b(Lo/CK;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/CK;->e(Z)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/CK;->d:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lo/CK;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lo/CK;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic d(Lo/CK;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/CK;->c()V

    return-void
.end method

.method public static e()Lo/CK;
    .locals 4

    .line 36
    new-instance v0, Lo/CK;

    invoke-direct {v0}, Lo/CK;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key"

    const-string v3, "nf.bw_save"

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Lo/CK;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private e(Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lo/CK;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 147
    sget-object v0, Lo/CK$5;->e:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lo/CK;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lo/CK;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lo/CK;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lo/CK;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lo/CK;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lo/CK;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method static synthetic e(Lo/CK;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/CK;->i()Z

    move-result p0

    return p0
.end method

.method private h()Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;
    .locals 1

    .line 196
    iget-object v0, p0, Lo/CK;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lo/CK;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    return-object v0

    .line 202
    :cond_1
    iget-object v0, p0, Lo/CK;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    return-object v0

    .line 205
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->g:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lo/CK;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    .line 53
    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/x;->c(Landroid/content/Context;)I

    move-result v1

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lo/CK;->a(Landroid/view/View;ZI)V

    .line 55
    invoke-direct {p0}, Lo/CK;->b()V

    .line 56
    invoke-direct {p0}, Lo/CK;->h()Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    move-result-object v0

    iput-object v0, p0, Lo/CK;->i:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    .line 57
    invoke-super {p0, p1}, Lo/RuntimePermission;->b(Landroid/view/View;)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 67
    invoke-direct {p0}, Lo/CK;->h()Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lo/CK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lo/CK;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Lo/x;->d(Landroid/content/Context;Ljava/lang/Boolean;I)V

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->cellularDataUsageSetting:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v2, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    .line 72
    invoke-direct {p0}, Lo/CK;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->g:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->e()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->e()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 74
    iget-object v0, p0, Lo/CK;->i:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lo/CK;->a(Z)V

    :cond_2
    return-void
.end method

.method protected d(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eV:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
