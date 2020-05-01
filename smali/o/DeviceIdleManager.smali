.class public final Lo/DeviceIdleManager;
.super Lo/ChildZygoteProcess;
.source ""

# interfaces
.implements Lo/DeadSystemException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DeviceIdleManager$ActionBar;
    }
.end annotation


# static fields
.field static final synthetic d:[Lo/amT;

.field public static final e:Lo/DeviceIdleManager$ActionBar;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private m:Z

.field private n:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/ams;

.field private p:Z

.field private final q:Landroid/view/View;

.field private r:I

.field private final s:I

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/DeviceIdleManager;

    const/16 v1, 0xa

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipBack"

    const-string v5, "getSkipBack()Lcom/netflix/mediaclient/android/widget/SeekButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playPause"

    const-string v5, "getPlayPause()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "elapsed"

    const-string v5, "getElapsed()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "remaining"

    const-string v5, "getRemaining()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "scrubber"

    const-string v5, "getScrubber()Lcom/netflix/mediaclient/android/widget/NetflixCancellableSeekBar;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipForward"

    const-string v5, "getSkipForward()Lcom/netflix/mediaclient/android/widget/SeekButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stop"

    const-string v5, "getStop()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "castAnchor"

    const-string v5, "getCastAnchor()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "scrubberContainer"

    const-string v5, "getScrubberContainer()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "controlsContainer"

    const-string v4, "getControlsContainer()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    new-instance v0, Lo/DeviceIdleManager$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DeviceIdleManager$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/DeviceIdleManager;->e:Lo/DeviceIdleManager$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Lo/ChildZygoteProcess;-><init>(Landroid/view/View;)V

    .line 56
    sget v0, Lo/CancellationSignal$Activity;->B:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->a:Lo/ams;

    .line 57
    sget v0, Lo/CancellationSignal$Activity;->x:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->b:Lo/ams;

    .line 58
    sget v0, Lo/CancellationSignal$Activity;->l:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->j:Lo/ams;

    .line 59
    sget v0, Lo/CancellationSignal$Activity;->D:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->g:Lo/ams;

    .line 60
    sget v0, Lo/CancellationSignal$Activity;->C:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->h:Lo/ams;

    .line 63
    sget v0, Lo/CancellationSignal$Activity;->H:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->f:Lo/ams;

    .line 64
    sget v0, Lo/CancellationSignal$Activity;->G:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->i:Lo/ams;

    .line 67
    sget v0, Lo/CancellationSignal$Activity;->g:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->l:Lo/ams;

    .line 68
    sget v0, Lo/CancellationSignal$Activity;->A:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->k:Lo/ams;

    .line 69
    sget v0, Lo/CancellationSignal$Activity;->m:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceIdleManager;->o:Lo/ams;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lo/DeviceIdleManager;->t:Z

    .line 88
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v1

    new-instance v2, Lo/DeviceIdleManager$4;

    invoke-direct {v2, p0}, Lo/DeviceIdleManager$4;-><init>(Lo/DeviceIdleManager;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lo/DeviceIdleManager;->D()Lo/GridLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lo/DeviceIdleManager$5;

    invoke-direct {v2, p0}, Lo/DeviceIdleManager$5;-><init>(Lo/DeviceIdleManager;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    new-instance v1, Lo/DeviceIdleManager$TaskDescription;

    invoke-direct {v1, p0}, Lo/DeviceIdleManager$TaskDescription;-><init>(Lo/DeviceIdleManager;)V

    .line 117
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v2

    check-cast v1, Lo/RadioButton$ActionBar;

    invoke-virtual {v2, v1}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 118
    invoke-direct {p0}, Lo/DeviceIdleManager;->z()Lo/RadioButton;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 120
    :cond_1
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v1

    new-instance v2, Lo/DeviceIdleManager$1;

    invoke-direct {v2, p0}, Lo/DeviceIdleManager$1;-><init>(Lo/DeviceIdleManager;)V

    check-cast v2, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Lo/Filterable;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 155
    iput-object p1, p0, Lo/DeviceIdleManager;->q:Landroid/view/View;

    .line 157
    invoke-virtual {p0}, Lo/DeviceIdleManager;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/DeviceIdleManager;->s:I

    .line 168
    iput-boolean v0, p0, Lo/DeviceIdleManager;->p:Z

    return-void
.end method

.method private final A()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->g:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final B()Lo/Filterable;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->h:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Filterable;

    return-object v0
.end method

.method private final C()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->l:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final D()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->i:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method private final E()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->o:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final I()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->k:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic a(Lo/DeviceIdleManager;)Lo/Filterable;
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lo/DeviceIdleManager;)Lo/ImageSwitcher;
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)V
    .locals 2

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Filterable;->getMax()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;-><init>(Lo/DeviceIdleManager;)V

    check-cast v1, Lo/alN;

    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lo/DeviceIdleManager;)Lo/aeA;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lo/DeviceIdleManager;->s()Lo/aeA;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/DeviceIdleManager;)Lo/ImageSwitcher;
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object p0

    return-object p0
.end method

.method private final d(I)V
    .locals 1

    .line 161
    iget v0, p0, Lo/DeviceIdleManager;->r:I

    if-eq p1, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lo/DeviceIdleManager;->I()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-direct {p0}, Lo/DeviceIdleManager;->E()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iput p1, p0, Lo/DeviceIdleManager;->r:I

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/DeviceIdleManager;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/DeviceIdleManager;->b(I)V

    return-void
.end method

.method private final e(Z)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lo/DeviceIdleManager;->p:Z

    if-eq p1, v0, :cond_2

    .line 171
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/RadioButton;->setEnabled(Z)V

    .line 172
    invoke-direct {p0}, Lo/DeviceIdleManager;->z()Lo/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/RadioButton;->setEnabled(Z)V

    .line 173
    :cond_0
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridLayout;->setEnabled(Z)V

    .line 174
    invoke-direct {p0}, Lo/DeviceIdleManager;->D()Lo/GridLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/GridLayout;->setEnabled(Z)V

    .line 175
    :cond_1
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setEnabled(Z)V

    .line 176
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setEnabled(Z)V

    .line 177
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Filterable;->setEnabled(Z)V

    .line 178
    iput-boolean p1, p0, Lo/DeviceIdleManager;->p:Z

    :cond_2
    return-void
.end method

.method private final u()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->b:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method private final v()Lo/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->a:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RadioButton;

    return-object v0
.end method

.method private final x()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->j:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final z()Lo/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/DeviceIdleManager;->f:Lo/ams;

    sget-object v1, Lo/DeviceIdleManager;->d:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RadioButton;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 157
    iget v0, p0, Lo/DeviceIdleManager;->s:I

    return v0
.end method

.method public a(Lo/alB;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lo/DeviceIdleManager;->n:Lo/alB;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lo/DeviceIdleManager;->m:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x4

    .line 218
    invoke-direct {p0, v0}, Lo/DeviceIdleManager;->d(I)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    invoke-direct {p0, v0}, Lo/DeviceIdleManager;->e(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 77
    iput-boolean p1, p0, Lo/DeviceIdleManager;->t:Z

    .line 78
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lo/DeviceIdleManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget v0, Lo/CancellationSignal$StateListAnimator;->d:I

    goto :goto_0

    .line 82
    :cond_0
    sget v0, Lo/CancellationSignal$StateListAnimator;->b:I

    .line 78
    :goto_0
    invoke-virtual {p1, v0}, Lo/GridLayout;->setImageResource(I)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/DeviceIdleManager;->q:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lo/DeviceIdleManager;->d(I)V

    return-void
.end method

.method public e(FI)V
    .locals 7

    .line 258
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/DeviceIdleManager;->o()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->b([FF)F

    move-result v1

    invoke-static {v0, v1}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 259
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lo/DeviceIdleManager;->r()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->a([FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setTranslationY(F)V

    .line 260
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/DeviceIdleManager;->o()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->b([FF)F

    move-result v1

    invoke-static {v0, v1}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 261
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lo/DeviceIdleManager;->r()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->a([FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setTranslationY(F)V

    .line 262
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/DeviceIdleManager;->o()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->b([FF)F

    move-result v1

    invoke-static {v0, v1}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 263
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    invoke-virtual {p0}, Lo/DeviceIdleManager;->r()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->a([FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/Filterable;->setTranslationY(F)V

    .line 267
    invoke-direct {p0}, Lo/DeviceIdleManager;->D()Lo/GridLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/DeviceIdleManager;->o()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->b([FF)F

    move-result v1

    invoke-static {v0, v1}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lo/DeviceIdleManager;->z()Lo/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/DeviceIdleManager;->o()[F

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lo/DeviceIdleManager;->b([FF)F

    move-result v1

    invoke-static {v0, v1}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 271
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    aput-object v4, v0, v2

    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    aput-object v4, v0, v1

    invoke-direct {p0}, Lo/DeviceIdleManager;->D()Lo/GridLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v4, 0x3

    invoke-direct {p0}, Lo/DeviceIdleManager;->z()Lo/RadioButton;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    aput-object v5, v0, v4

    invoke-virtual {p0, p1, v0}, Lo/DeviceIdleManager;->d(F[Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [Landroid/view/View;

    .line 274
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    aput-object v4, v0, v2

    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    aput-object v4, v0, v1

    invoke-virtual {p0, p1, v0}, Lo/DeviceIdleManager;->d(F[Landroid/view/View;)V

    .line 277
    :goto_0
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {p0}, Lo/DeviceIdleManager;->l()[F

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lo/DeviceIdleManager;->a([FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lo/GridLayout;->setScaleX(F)V

    .line 278
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {p0}, Lo/DeviceIdleManager;->l()[F

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lo/DeviceIdleManager;->a([FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lo/GridLayout;->setScaleY(F)V

    .line 283
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Filterable;->getBottom()I

    move-result v0

    invoke-direct {p0}, Lo/DeviceIdleManager;->I()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v4

    .line 284
    invoke-direct {p0}, Lo/DeviceIdleManager;->C()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {p0}, Lo/DeviceIdleManager;->C()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 285
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v5

    invoke-virtual {v5}, Lo/Filterable;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 288
    div-int/2addr v4, v3

    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v5

    invoke-virtual {v5}, Lo/GridLayout;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 291
    invoke-virtual {p0}, Lo/DeviceIdleManager;->n()[F

    move-result-object v5

    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v6

    invoke-virtual {v6}, Lo/GridLayout;->getTop()I

    move-result v6

    sub-int/2addr v6, v0

    sub-int/2addr v6, v4

    int-to-float v0, v6

    neg-float v0, v0

    aput v0, v5, v1

    .line 293
    invoke-virtual {p0}, Lo/DeviceIdleManager;->n()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/DeviceIdleManager;->c([FF)F

    move-result v0

    .line 294
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Lo/RadioButton;->setTranslationY(F)V

    .line 295
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lo/GridLayout;->setTranslationY(F)V

    .line 296
    invoke-direct {p0}, Lo/DeviceIdleManager;->D()Lo/GridLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Lo/GridLayout;->setTranslationY(F)V

    .line 297
    :cond_3
    invoke-direct {p0}, Lo/DeviceIdleManager;->z()Lo/RadioButton;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v0}, Lo/RadioButton;->setTranslationY(F)V

    .line 302
    :cond_4
    invoke-virtual {p0}, Lo/DeviceIdleManager;->p()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/2addr v0, v3

    int-to-float v0, v0

    neg-float v0, v0

    .line 303
    invoke-virtual {p0}, Lo/DeviceIdleManager;->k()[F

    move-result-object v4

    aput v0, v4, v2

    .line 304
    invoke-virtual {p0}, Lo/DeviceIdleManager;->q()[F

    move-result-object v4

    aput v0, v4, v2

    .line 307
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridLayout;->getMeasuredWidth()I

    move-result v0

    .line 308
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v2

    invoke-virtual {v2}, Lo/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "playPause.layoutParams"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    add-int/2addr v0, v2

    .line 309
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v2

    invoke-virtual {v2}, Lo/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    add-int/2addr v0, v2

    .line 310
    invoke-virtual {p0}, Lo/DeviceIdleManager;->q()[F

    move-result-object v2

    div-int/2addr p2, v3

    div-int/2addr v0, v3

    sub-int/2addr p2, v0

    int-to-float p2, p2

    aput p2, v2, v1

    .line 313
    invoke-virtual {p0}, Lo/DeviceIdleManager;->k()[F

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lo/DeviceIdleManager;->c([FF)F

    move-result p2

    .line 314
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/RadioButton;->setTranslationX(F)V

    .line 315
    invoke-direct {p0}, Lo/DeviceIdleManager;->D()Lo/GridLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    neg-float v1, p2

    invoke-virtual {v0, v1}, Lo/GridLayout;->setTranslationX(F)V

    .line 316
    :cond_5
    invoke-direct {p0}, Lo/DeviceIdleManager;->z()Lo/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_6

    neg-float p2, p2

    invoke-virtual {v0, p2}, Lo/RadioButton;->setTranslationX(F)V

    .line 317
    :cond_6
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object p2

    invoke-virtual {p0}, Lo/DeviceIdleManager;->q()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/DeviceIdleManager;->c([FF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p2, p1}, Lo/GridLayout;->setTranslationX(F)V

    return-void
.end method

.method public e(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Filterable;->getProgress()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 232
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v1

    invoke-virtual {v1}, Lo/Filterable;->getProgress()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lo/Filterable;->setProgress(I)V

    .line 234
    :cond_3
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object p2

    invoke-virtual {p2}, Lo/Filterable;->getMax()I

    move-result p2

    :goto_2
    invoke-virtual {v0, p2}, Lo/Filterable;->setMax(I)V

    if-eqz p1, :cond_5

    .line 236
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object p2

    invoke-virtual {p2}, Lo/Filterable;->getMax()I

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_5

    .line 239
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lo/Filterable;->setMax(I)V

    .line 240
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lo/Filterable;->setProgress(I)V

    :cond_5
    return-void
.end method

.method public f_()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lo/DeviceIdleManager;->m:Z

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lo/DeviceIdleManager;->e(Z)V

    return-void
.end method

.method public g_()V
    .locals 2

    .line 190
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/GridLayout;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 183
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Filterable;->setProgress(I)V

    .line 184
    invoke-direct {p0}, Lo/DeviceIdleManager;->B()Lo/Filterable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/Filterable;->setMax(I)V

    .line 185
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h_()V
    .locals 2

    .line 194
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/RadioButton;->setVisibility(I)V

    return-void
.end method

.method public i_()V
    .locals 2

    .line 198
    invoke-direct {p0}, Lo/DeviceIdleManager;->u()Lo/GridLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridLayout;->setVisibility(I)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lo/DeviceIdleManager;->t:Z

    return v0
.end method

.method public j_()V
    .locals 2

    .line 202
    invoke-direct {p0}, Lo/DeviceIdleManager;->v()Lo/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RadioButton;->setVisibility(I)V

    return-void
.end method

.method public k_()V
    .locals 2

    .line 245
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 246
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public l_()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lo/DeviceIdleManager;->x()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 251
    invoke-direct {p0}, Lo/DeviceIdleManager;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public t()Lo/alB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/DeviceIdleManager;->n:Lo/alB;

    return-object v0
.end method
