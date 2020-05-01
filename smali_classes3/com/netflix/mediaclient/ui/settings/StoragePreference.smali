.class public final Lcom/netflix/mediaclient/ui/settings/StoragePreference;
.super Landroidx/preference/Preference;
.source ""


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private final e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private n:Lo/Bh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "StoragePreference"

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 26
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final a(J)Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UIStringUtils.formatShortFileSize(context, size)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final a()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->n:Lo/Bh;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/Bh;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->na:I

    goto :goto_0

    .line 66
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    .line 63
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(if (vo\u2026ternal_storage\n        })"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->c:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v2, "deviceName"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lo/String;)V
    .locals 1

    .line 78
    iget-object p1, p1, Lo/String;->itemView:Landroid/view/View;

    new-instance v0, Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;-><init>(Lcom/netflix/mediaclient/ui/settings/StoragePreference;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->n:Lo/Bh;

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->b:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "isDefault"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Lo/Bh;->f()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private final d()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0}, Lo/nS;->p()Lo/Bg;

    move-result-object v0

    const-string v1, "offlineAgent.offlineStorageVolumeList"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0}, Lo/Bg;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bh;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->n:Lo/Bh;

    :cond_1
    return-void
.end method

.method private final e(Lo/String;)V
    .locals 2

    .line 91
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sz:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sy:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->d:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sv:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->h:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sp:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->c:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->st:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->b:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sr:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.findViewById(R.id.storage_netflix)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->j:Landroid/view/View;

    .line 97
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sw:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.findViewById(R.id.storage_used)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->f:Landroid/view/View;

    .line 98
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ss:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.findViewById(R.id.storage_free)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->g:Landroid/view/View;

    .line 99
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->su:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "holder.findViewById(R.id.storage_indicator)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->i:Landroid/view/View;

    return-void

    .line 95
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Lo/String;)V
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adk;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->e:Ljava/lang/String;

    const-string v1, "SettingsActivity:update fileDir is null"

    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->n:Lo/Bh;

    if-nez v1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->e:Ljava/lang/String;

    const-string v1, "SettingsActivity:update volume is null"

    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->n:Lo/Bh;

    if-eqz v1, :cond_c

    .line 117
    invoke-interface {v1}, Lo/Bh;->e()J

    move-result-wide v2

    .line 118
    invoke-interface {v1}, Lo/Bh;->a()J

    move-result-wide v4

    .line 119
    invoke-interface {v1}, Lo/Bh;->g()J

    move-result-wide v6

    sub-long/2addr v2, v4

    sub-long/2addr v2, v6

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->j:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v8, "netflixView"

    invoke-static {v8}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    if-eqz v1, :cond_b

    :try_start_1
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v9, v6

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->f:Landroid/view/View;

    if-nez v1, :cond_3

    const-string v9, "usedView"

    invoke-static {v9}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_a

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v9, v2

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->g:Landroid/view/View;

    if-nez v1, :cond_4

    const-string v9, "freeView"

    invoke-static {v9}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v8, v4

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 125
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->i:Landroid/view/View;

    if-nez v1, :cond_5

    const-string v8, "storageIndicatorView"

    invoke-static {v8}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 127
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a:Landroid/widget/TextView;

    if-nez v4, :cond_6

    const-string v5, "netflixViewLegend"

    invoke-static {v5}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->by:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v0

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->d:Landroid/widget/TextView;

    if-nez v1, :cond_7

    const-string v4, "usedViewLegend"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->bz:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->h:Landroid/widget/TextView;

    if-nez v1, :cond_8

    const-string v2, "freeViewLegend"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->bw:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p1, Lo/String;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 135
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->b()V

    goto :goto_0

    .line 124
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 138
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->e:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public c(Lo/String;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroidx/preference/Preference;->c(Lo/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->e(Lo/String;)V

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->d()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->b(Lo/String;)V

    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a()V

    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->b()V

    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a(Lo/String;)V

    return-void
.end method
