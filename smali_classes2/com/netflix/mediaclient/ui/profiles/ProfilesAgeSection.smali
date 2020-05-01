.class public final Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;,
        Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;,
        Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$TaskDescription;


# instance fields
.field private b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

.field private c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;

.field private d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    .line 43
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->e()V

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-eq v0, p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    .line 47
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    :cond_0
    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-eq v0, p1, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->a(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;->d(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 4

    .line 143
    sget-object v0, Lo/eS;->d:Lo/eS$Activity;

    invoke-virtual {v0}, Lo/eS$Activity;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 144
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qf:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 145
    sget-object v2, Lo/Zi;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 148
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qe:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 147
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qb:I

    goto :goto_0

    .line 146
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qc:I

    .line 144
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    .line 152
    :cond_3
    sget-object v0, Lo/eS;->d:Lo/eS$Activity;

    invoke-virtual {v0}, Lo/eS$Activity;->a()Z

    move-result v0

    const-string v2, "findViewById<SwitchCompat>(R.id.kids_switch)"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 153
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne p1, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 154
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sZ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById<SwitchCompat>(R.id.teens_switch)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_4

    .line 157
    :cond_6
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne p1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_4
    return-void
.end method

.method private final e()V
    .locals 5

    .line 85
    sget-object v0, Lo/eS;->d:Lo/eS$Activity;

    invoke-virtual {v0}, Lo/eS$Activity;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fm:I

    invoke-static {p0, v0, v3, v2, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qf:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 88
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;)V

    check-cast v1, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 102
    :cond_0
    sget-object v0, Lo/eS;->d:Lo/eS$Activity;

    invoke-virtual {v0}, Lo/eS$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ff:I

    invoke-static {p0, v0, v3, v2, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 105
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->sZ:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 106
    new-instance v2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    check-cast v2, Lo/alB;

    .line 114
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->je:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$ActionBar;

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$ActionBar;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v3, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;

    invoke-direct {v3, v1, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lo/alB;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->sY:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$FragmentManager;

    invoke-direct {v4, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$FragmentManager;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v3, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$LoaderManager;

    invoke-direct {v3, v0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$LoaderManager;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lo/alB;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 131
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fi:I

    invoke-static {p0, v0, v3, v2, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    .line 132
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 133
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->je:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Fragment;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Fragment;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$PendingIntent;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 76
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "AgeSuperParcel"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->values()[Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v1

    const-string v2, "AgeStartSetting"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setStartingSelection(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    .line 79
    invoke-static {}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->values()[Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v1

    const-string v2, "AgeCurrentSetting"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->a(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "AgeSuperParcel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v1

    const-string v2, "AgeStartSetting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v1

    const-string v2, "AgeCurrentSetting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final setAgeChangedListener(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;

    return-void
.end method

.method public final setStartingSelection(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    .line 40
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->a(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->d(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method
