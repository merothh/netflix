.class public final Lo/YY;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YY$StateListAnimator;,
        Lo/YY$Application;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final i:Lo/YY$Application;


# instance fields
.field private final A:Lo/ams;

.field private final B:Lo/ams;

.field private final C:Lo/ams;

.field private final D:Lo/ams;

.field private final E:Lo/DatePickerCalendarDelegate$Activity;

.field private final F:Lo/ams;

.field private final G:Lo/YY$Fragment;

.field private final H:Lo/YY$TaskDescription;

.field private final I:Lo/YY$TaskStackBuilder;

.field private K:Ljava/util/HashMap;

.field private f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private h:Ljava/lang/String;

.field private j:Z

.field private k:Lo/BC;

.field private l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private m:Z

.field private n:Z

.field private final o:Landroid/os/Handler;

.field private p:Z

.field private q:Z

.field private r:Lo/EditText;

.field private final s:Lo/ams;

.field private final t:Lo/ams;

.field private final u:Lo/ams;

.field private final v:Lo/ams;

.field private final w:Lo/ams;

.field private final x:Lo/ams;

.field private final y:Lo/ams;

.field private final z:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/YY;

    const/16 v1, 0xd

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "baseLayout"

    const-string v5, "getBaseLayout()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "contentLayout"

    const-string v5, "getContentLayout()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "avatarFrame"

    const-string v5, "getAvatarFrame()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "avatarView"

    const-string v5, "getAvatarView()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "avatarEditIcon"

    const-string v5, "getAvatarEditIcon()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "nameView"

    const-string v5, "getNameView()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ageSection"

    const-string v5, "getAgeSection()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "defaultKidsDescription"

    const-string v5, "getDefaultKidsDescription()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "kidsBadge"

    const-string v5, "getKidsBadge()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityBadge"

    const-string v5, "getMaturityBadge()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityDescription"

    const-string v5, "getMaturityDescription()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityInstructions"

    const-string v5, "getMaturityInstructions()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "deleteButton"

    const-string v4, "getDeleteButton()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lo/YY;->b:[Lo/amT;

    new-instance v0, Lo/YY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YY$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/YY;->i:Lo/YY$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/YY;->o:Landroid/os/Handler;

    .line 106
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pu:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->s:Lo/ams;

    .line 107
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pq:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->t:Lo/ams;

    .line 109
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->A:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->u:Lo/ams;

    .line 110
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->C:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->w:Lo/ams;

    .line 111
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fu:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->x:Lo/ams;

    .line 112
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pv:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->y:Lo/ams;

    .line 113
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->l:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->v:Lo/ams;

    .line 114
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eb:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->B:Lo/ams;

    .line 115
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iR:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->z:Lo/ams;

    .line 116
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kh:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->D:Lo/ams;

    .line 117
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kg:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->C:Lo/ams;

    .line 118
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->A:Lo/ams;

    .line 119
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ed:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->F:Lo/ams;

    .line 121
    sget-object v0, Lo/YY$Activity;->d:Lo/YY$Activity;

    check-cast v0, Lo/DatePickerCalendarDelegate$Activity;

    iput-object v0, p0, Lo/YY;->E:Lo/DatePickerCalendarDelegate$Activity;

    .line 123
    new-instance v0, Lo/YY$TaskDescription;

    invoke-direct {v0, p0}, Lo/YY$TaskDescription;-><init>(Lo/YY;)V

    iput-object v0, p0, Lo/YY;->H:Lo/YY$TaskDescription;

    .line 137
    new-instance v0, Lo/YY$TaskStackBuilder;

    invoke-direct {v0}, Lo/YY$TaskStackBuilder;-><init>()V

    iput-object v0, p0, Lo/YY;->I:Lo/YY$TaskStackBuilder;

    .line 143
    new-instance v0, Lo/YY$Fragment;

    invoke-direct {v0, p0}, Lo/YY$Fragment;-><init>(Lo/YY;)V

    iput-object v0, p0, Lo/YY;->G:Lo/YY$Fragment;

    return-void
.end method

.method private final A()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/YY;->D:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final B()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/YY;->B:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;
    .locals 3

    iget-object v0, p0, Lo/YY;->v:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    return-object v0
.end method

.method private final D()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/YY;->z:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final E()V
    .locals 6

    .line 255
    invoke-virtual {p0}, Lo/YY;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lo/YY;->H()V

    .line 261
    invoke-direct {p0}, Lo/YY;->F()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/YY;->k:Lo/BC;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo/BC;->isPrimaryProfile()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    invoke-direct {p0, v0}, Lo/YY;->b(Lo/BC;)V

    .line 265
    iget-boolean v0, p0, Lo/YY;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 266
    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    if-eqz v0, :cond_4

    .line 267
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v3

    invoke-interface {v0}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v3

    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    goto :goto_1

    .line 271
    :cond_2
    sget-object v4, Lo/eS;->d:Lo/eS$Activity;

    invoke-virtual {v4}, Lo/eS$Activity;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lo/BC;->getMaturityLevel()I

    move-result v4

    const/16 v5, 0x46

    if-le v4, v5, :cond_3

    invoke-interface {v0}, Lo/BC;->getMaturityLevel()I

    move-result v0

    const/16 v4, 0x60

    if-gt v0, v4, :cond_3

    .line 274
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    goto :goto_1

    .line 276
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    .line 269
    :goto_1
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setStartingSelection(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    .line 279
    iput-boolean v1, p0, Lo/YY;->m:Z

    .line 283
    :cond_4
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_5

    .line 284
    invoke-direct {p0, v1, v2}, Lo/YY;->e(ZZ)V

    goto :goto_2

    .line 286
    :cond_5
    invoke-direct {p0, v2, v1}, Lo/YY;->e(ZZ)V

    .line 288
    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_6

    .line 289
    invoke-direct {p0, v0}, Lo/YY;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 290
    invoke-direct {p0}, Lo/YY;->v()Lo/GridView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lo/YY;->v()Lo/GridView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final F()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/YY;->F:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final G()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/YY;->A:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final H()V
    .locals 6

    .line 302
    sget-object v0, Lo/gE;->c:Lo/gE$TaskDescription;

    invoke-virtual {v0}, Lo/gE$TaskDescription;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 303
    :goto_1
    iget-object v3, p0, Lo/YY;->k:Lo/BC;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lo/BC;->isDefaultKidsProfile()Z

    move-result v3

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 306
    :goto_2
    iget-object v4, p0, Lo/YY;->k:Lo/BC;

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lo/BC;->isPrimaryProfile()Z

    move-result v4

    if-ne v4, v2, :cond_3

    .line 307
    invoke-direct {p0}, Lo/YY;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setVisibility(I)V

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    .line 311
    invoke-direct {p0}, Lo/YY;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setVisibility(I)V

    goto :goto_4

    .line 315
    :cond_4
    invoke-direct {p0}, Lo/YY;->B()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v3

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setVisibility(I)V

    .line 320
    :goto_4
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 979
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_7

    .line 321
    invoke-direct {p0}, Lo/YY;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 323
    :cond_7
    invoke-direct {p0}, Lo/YY;->D()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lo/YY;->k:Lo/BC;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lo/BC;->isKidsProfile()Z

    move-result v3

    if-ne v3, v2, :cond_8

    goto :goto_6

    :cond_8
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method private final I()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/YY;->C:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final J()V
    .locals 3

    .line 522
    invoke-virtual {p0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lo/YY;->k:Lo/BC;

    new-instance v2, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;-><init>(Lo/YY;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/YY;

    .line 543
    sget-object v1, Lo/YY;->i:Lo/YY$Application;

    check-cast v1, Lo/MessagePdu;

    .line 544
    invoke-virtual {v0}, Lo/YY;->s()V

    .line 545
    sget-object v0, Lo/akj;->a:Lo/akj;

    :goto_0
    return-void
.end method

.method private final K()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 552
    new-instance v0, Lo/YY$ActionBar;

    invoke-direct {v0, p0}, Lo/YY$ActionBar;-><init>(Lo/YY;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private final L()V
    .locals 5

    .line 439
    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    if-eqz v0, :cond_1

    .line 440
    iget-object v1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iget-object v2, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 445
    new-instance v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-interface {v0}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-nez v1, :cond_0

    .line 447
    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    iget-object v0, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    :cond_1
    return-void
.end method

.method private final M()V
    .locals 5

    const/4 v0, 0x0

    .line 396
    move-object v1, v0

    check-cast v1, Lo/BC;

    iput-object v1, p0, Lo/YY;->k:Lo/BC;

    .line 398
    iget-object v1, p0, Lo/YY;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/Am;->X()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/BC;

    const-string v4, "profile"

    .line 400
    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/YY;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 399
    :goto_0
    move-object v1, v2

    check-cast v1, Lo/BC;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lo/YY;->k:Lo/BC;

    .line 405
    iget-object v1, p0, Lo/YY;->k:Lo/BC;

    if-nez v1, :cond_3

    .line 406
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/YY;->h:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private final N()V
    .locals 5

    .line 433
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/Am;->X()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/BC;

    const-string v4, "profile"

    .line 434
    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/YY;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 433
    :cond_1
    check-cast v1, Lo/BC;

    :cond_2
    iput-object v1, p0, Lo/YY;->k:Lo/BC;

    return-void
.end method

.method private final O()V
    .locals 9

    .line 624
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    .line 626
    invoke-direct {p0}, Lo/YY;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    sget-object v0, Lo/YV;->b:Lo/YV;

    iget-object v1, p0, Lo/YY;->h:Ljava/lang/String;

    invoke-direct {p0}, Lo/YY;->V()Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/YV;->e(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    return-void

    .line 632
    :cond_0
    invoke-direct {p0}, Lo/YY;->X()V

    .line 634
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    .line 637
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_1

    goto :goto_2

    .line 642
    :cond_1
    iget-object v4, p0, Lo/YY;->h:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 646
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne v0, v4, :cond_2

    const/4 v3, 0x1

    .line 647
    :cond_2
    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_3
    move-object v4, v7

    .line 648
    :goto_0
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne v0, v5, :cond_4

    const/16 v0, 0x60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_4
    move-object v5, v7

    .line 649
    :goto_1
    iget-object v0, p0, Lo/YY;->H:Lo/YY$TaskDescription;

    move-object v6, v0

    check-cast v6, Lo/zU;

    .line 644
    invoke-virtual/range {v1 .. v6}, Lo/Am;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/zU;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 654
    invoke-direct {p0, v0, v2, v1}, Lo/YY;->a(Lo/BC;Ljava/lang/String;Lo/Am;)Z

    move-result v3

    .line 638
    :cond_6
    :goto_2
    iput-boolean v3, p0, Lo/YY;->q:Z

    .line 662
    iget-boolean v0, p0, Lo/YY;->q:Z

    if-eqz v0, :cond_7

    .line 663
    invoke-direct {p0, v8, v8}, Lo/YY;->e(ZZ)V

    goto :goto_4

    .line 665
    :cond_7
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    .line 666
    iget-object v0, p0, Lo/YY;->h:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 667
    sget-object v0, Lo/YV;->b:Lo/YV;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/AddProfile;

    invoke-direct {p0}, Lo/YY;->V()Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {v0, v1, v7}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 670
    sget-object v1, Lo/YV;->b:Lo/YV;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/EditProfile;

    invoke-direct {p0}, Lo/YY;->V()Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {v1, v2, v7}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 673
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lo/YY;->s()V

    :goto_4
    return-void
.end method

.method private final P()Z
    .locals 2

    .line 720
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "nameView.text"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final Q()V
    .locals 6

    .line 602
    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-direct {p0, v0}, Lo/YY;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lo/YY;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 605
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 606
    sget-object v1, Lo/u$LoaderManager;->e:Lo/u$LoaderManager;

    check-cast v1, Lo/Og$TaskDescription;

    invoke-virtual {v0, v1}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object v0

    .line 608
    new-instance v1, Lo/u$Application;

    .line 609
    iget-object v2, p0, Lo/YY;->h:Ljava/lang/String;

    .line 610
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 608
    :goto_0
    invoke-direct {v1, v2, v3, v5}, Lo/u$Application;-><init>(Ljava/lang/String;ZZ)V

    .line 607
    invoke-virtual {v0, v1}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object v0

    .line 614
    invoke-virtual {v0, p0}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    .line 616
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    goto :goto_1

    .line 619
    :cond_1
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    :cond_2
    :goto_1
    return-void
.end method

.method private final R()Ljava/lang/Integer;
    .locals 2

    .line 678
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v1, Lo/YW;->c:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v0, 0xf4240

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private final S()Z
    .locals 1

    .line 724
    invoke-direct {p0}, Lo/YY;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final T()Z
    .locals 10

    .line 810
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 812
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 814
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    return v2

    .line 818
    :cond_0
    iget-object v3, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-nez v3, :cond_1

    .line 819
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    return v2

    .line 823
    :cond_1
    invoke-virtual {p0}, Lo/YY;->getActivity()Lo/Serializable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 824
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    return v2

    .line 828
    :cond_2
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 831
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "\""

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v1}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "<"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v7, v6, v1}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, ">"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v7, v6, v1}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 1037
    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    move v5, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v1, v5, :cond_9

    if-nez v6, :cond_4

    move v8, v1

    goto :goto_1

    :cond_4
    move v8, v5

    .line 1042
    :goto_1
    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v6, :cond_7

    if-nez v8, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_9
    :goto_3
    add-int/2addr v5, v2

    .line 1057
    invoke-interface {v4, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 838
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 839
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->py:I

    invoke-virtual {p0, v0}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.profi\u2026ng_symbol_in_name_error2)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v2

    .line 845
    :cond_a
    invoke-virtual {v0}, Lo/Am;->X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BC;

    const-string v4, "profile"

    .line 847
    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 848
    invoke-interface {v1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lo/YY;->h:Ljava/lang/String;

    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 849
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pm:I

    invoke-virtual {p0, v0}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.profile_duplicate_name_error)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_c
    return v7

    .line 832
    :cond_d
    :goto_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->px:I

    invoke-virtual {p0, v0}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.profi\u2026ong_symbol_in_name_error)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v2
.end method

.method private final U()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 879
    invoke-direct {p0, v0, v1}, Lo/YY;->e(ZZ)V

    .line 881
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    invoke-virtual {v0}, Lo/JM;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 882
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1058
    new-instance v1, Lo/YY$AssistContent;

    invoke-direct {v1, p0}, Lo/YY$AssistContent;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/ObservableSource;

    .line 883
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 884
    new-instance v1, Lo/YY$SharedElementCallback;

    const-string v2, "ProfileDetailsFragment fetchAccountDataError"

    .line 885
    invoke-direct {v1, p0, v2}, Lo/YY$SharedElementCallback;-><init>(Lo/YY;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/Observer;

    .line 884
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final V()Lcom/netflix/cl/model/ProfileSettings;
    .locals 7

    .line 867
    invoke-direct {p0}, Lo/YY;->R()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/BC;->getMaturityLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_2
    const v0, 0xf4240

    const v5, 0xf4240

    .line 868
    :goto_1
    sget-object v1, Lo/YV;->b:Lo/YV;

    .line 869
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object v2

    .line 870
    iget-object v3, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 871
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 873
    :goto_2
    iget-object v6, p0, Lo/YY;->k:Lo/BC;

    .line 868
    invoke-virtual/range {v1 .. v6}, Lo/YV;->d(Lo/Am;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;ZILo/BC;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v0

    return-object v0
.end method

.method private final X()V
    .locals 2

    .line 860
    invoke-virtual {p0}, Lo/YY;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 862
    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method private final a(Landroid/os/Bundle;)V
    .locals 5

    .line 201
    new-instance v0, Lo/EditText;

    invoke-direct {p0}, Lo/YY;->d()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lo/YY;->E:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v0, v1, v2}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lo/YY;->r:Lo/EditText;

    .line 203
    invoke-direct {p0}, Lo/YY;->F()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lo/YY$FragmentManager;

    invoke-direct {v1, p0}, Lo/YY$FragmentManager;-><init>(Lo/YY;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    new-instance v1, Lo/YY$LoaderManager;

    invoke-direct {v1, p0}, Lo/YY$LoaderManager;-><init>(Lo/YY;)V

    check-cast v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setAgeChangedListener(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;)V

    .line 213
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lo/YY$Dialog;

    invoke-direct {v1, p0}, Lo/YY$Dialog;-><init>(Lo/YY;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClipToOutline(Z)V

    .line 227
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lo/YY;->I:Lo/YY$TaskStackBuilder;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 228
    invoke-direct {p0}, Lo/YY;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 229
    invoke-direct {p0}, Lo/YY;->y()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lo/YY;->I:Lo/YY$TaskStackBuilder;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 231
    invoke-direct {p0}, Lo/YY;->x()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v2, Lo/YY$PendingIntent;

    invoke-direct {v2, p0}, Lo/YY$PendingIntent;-><init>(Lo/YY;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lo/YY;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "bundle_name"

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "bundle_default_avatar"

    .line 241
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "bundle_current_avatar"

    .line 242
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 246
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object p1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 249
    iget-object p1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz p1, :cond_1

    .line 250
    iput-boolean v1, p0, Lo/YY;->m:Z

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lo/YY;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->E()V

    return-void
.end method

.method public static final synthetic a(Lo/YY;Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lo/YY;->q:Z

    return-void
.end method

.method private final a(Z)V
    .locals 4

    .line 390
    invoke-direct {p0}, Lo/YY;->A()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    invoke-direct {p0}, Lo/YY;->I()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    invoke-direct {p0}, Lo/YY;->G()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final a(Lo/BC;Ljava/lang/String;Lo/Am;)Z
    .locals 11

    .line 696
    invoke-interface {p1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v7, v2

    goto :goto_1

    .line 699
    :cond_2
    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 703
    :goto_1
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->b()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-eq v0, v3, :cond_4

    invoke-interface {p1}, Lo/BC;->isDefaultKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, v2

    .line 705
    :goto_4
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v6, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lo/YY;->R()Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    move-object v8, v2

    .line 709
    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    .line 714
    iget-object p1, p0, Lo/YY;->H:Lo/YY$TaskDescription;

    move-object v9, p1

    check-cast v9, Lo/zU;

    move-object v3, p3

    move-object v5, p2

    .line 708
    invoke-virtual/range {v3 .. v9}, Lo/Am;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/zU;)V

    return v10
.end method

.method private final b(Lo/BC;)V
    .locals 9

    .line 328
    sget-object v0, Lo/gE;->c:Lo/gE$TaskDescription;

    invoke-virtual {v0}, Lo/gE$TaskDescription;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0, v1}, Lo/YY;->a(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 333
    invoke-interface {p1}, Lo/BC;->getMaturityLabels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 334
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-direct {p0, v1}, Lo/YY;->a(Z)V

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 338
    invoke-direct {p0, v2}, Lo/YY;->a(Z)V

    .line 339
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Lo/YY;->A()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1}, Lo/BC;->isMaturityHighest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pn:I

    invoke-virtual {p0, v2}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 342
    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 340
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-direct {p0}, Lo/YY;->I()Landroid/widget/TextView;

    move-result-object v1

    .line 347
    invoke-interface {p1}, Lo/BC;->isMaturityLowest()Z

    move-result v2

    const-string v3, "maturityRating"

    if-eqz v2, :cond_3

    .line 348
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pu:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 353
    :cond_3
    invoke-interface {p1}, Lo/BC;->isMaturityHighest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 354
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pw:I

    invoke-virtual {p0, v0}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 357
    :cond_4
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pq:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oY:I

    invoke-virtual {p0, v0}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.profile_account_settings)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    new-instance v7, Landroid/text/SpannableString;

    .line 367
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pd:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "accountSettingsString"

    .line 368
    invoke-virtual {v1, v2, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 366
    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 371
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lo/anv;->e(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 373
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#0271e6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v3, 0x11

    .line 372
    invoke-virtual {v7, v2, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 378
    invoke-direct {p0}, Lo/YY;->G()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-direct {p0}, Lo/YY;->G()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lo/YY$PictureInPictureParams;

    invoke-direct {v1, p0, p1}, Lo/YY$PictureInPictureParams;-><init>(Lo/YY;Lo/BC;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 384
    :cond_5
    move-object p1, p0

    check-cast p1, Lo/YY;

    .line 385
    invoke-direct {p1, v1}, Lo/YY;->a(Z)V

    :goto_2
    return-void
.end method

.method public static final synthetic b(Lo/YY;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lo/YY;->d(Z)V

    return-void
.end method

.method public static final synthetic b(Lo/YY;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lo/YY;->m:Z

    return p0
.end method

.method public static final synthetic c(Lo/YY;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-void
.end method

.method public static final synthetic c(Lo/YY;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lo/YY;->e(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 728
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public static final synthetic c(Lo/YY;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lo/YY;->p:Z

    return p0
.end method

.method private final d()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/YY;->s:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic d(Lo/YY;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p0
.end method

.method public static final synthetic d(Lo/YY;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-void
.end method

.method public static final synthetic d(Lo/YY;Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lo/YY;->j:Z

    return-void
.end method

.method private final d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 741
    invoke-direct {p0}, Lo/YY;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/YY;->n:Z

    .line 742
    invoke-virtual {p0}, Lo/YY;->ad_()Z

    return-void
.end method

.method public static final synthetic e(Lo/YY;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p0
.end method

.method private final e(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 4

    .line 573
    iget-object v0, p0, Lo/YY;->k:Lo/BC;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne p2, p1, :cond_0

    .line 575
    invoke-virtual {p0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 576
    new-instance v0, Lo/hK;

    .line 578
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pr:I

    invoke-virtual {p0, v1}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v2}, Lo/YY;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 576
    invoke-direct {v0, v3, v1, v2, v3}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 582
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/YY;->o:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    .line 586
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    if-ne p2, p1, :cond_3

    iget-boolean p1, p0, Lo/YY;->m:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/YY;->h:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 590
    :cond_1
    iget-object p1, p0, Lo/YY;->k:Lo/BC;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 592
    iget-object p1, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object p1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 593
    invoke-direct {p0}, Lo/YY;->E()V

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {p0}, Lo/YY;->U_()Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lo/YY$StateListAnimator;

    invoke-direct {p2, p0}, Lo/YY$StateListAnimator;-><init>(Lo/YY;)V

    check-cast p2, Lo/zU;

    invoke-virtual {p1, p2}, Lo/Am;->a(Lo/zU;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic e(Lo/YY;Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lo/YY;->p:Z

    return-void
.end method

.method public static final synthetic e(Lo/YY;ZZ)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lo/YY;->e(ZZ)V

    return-void
.end method

.method private final e(ZZ)V
    .locals 3

    const-string v0, "loadingAndErrorWrapper"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 496
    iget-object v2, p0, Lo/YY;->r:Lo/EditText;

    if-nez v2, :cond_0

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Lo/EditText;->c(Z)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v2, p0, Lo/YY;->r:Lo/EditText;

    if-nez v2, :cond_2

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v1}, Lo/EditText;->a(Z)V

    .line 502
    :goto_0
    invoke-direct {p0}, Lo/YY;->g()Landroid/view/ViewGroup;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 503
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 504
    invoke-direct {p0, v0}, Lo/YY;->d(Z)V

    .line 506
    invoke-direct {p0}, Lo/YY;->F()Landroid/widget/TextView;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 507
    invoke-direct {p0}, Lo/YY;->C()Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->setEnabled(Z)V

    .line 509
    invoke-direct {p0}, Lo/YY;->G()Landroid/widget/TextView;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 512
    invoke-direct {p0}, Lo/YY;->v()Lo/GridView;

    move-result-object v0

    iget-object v2, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-direct {p0, v2}, Lo/YY;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lo/GridView;->setEnabled(Z)V

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    .line 515
    invoke-direct {p0}, Lo/YY;->g()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 517
    :cond_5
    invoke-direct {p0}, Lo/YY;->g()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method public static final synthetic f(Lo/YY;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->J()V

    return-void
.end method

.method private final g()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/YY;->t:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic g(Lo/YY;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/YY;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic h(Lo/YY;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->Q()V

    return-void
.end method

.method public static final synthetic i(Lo/YY;)Landroid/widget/EditText;
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lo/YY;)Lcom/netflix/cl/model/ProfileSettings;
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->V()Lcom/netflix/cl/model/ProfileSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lo/YY;)Landroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/YY;->o:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic l(Lo/YY;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->X()V

    return-void
.end method

.method public static final synthetic m(Lo/YY;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->K()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lo/YY;)Lo/YY$TaskDescription;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/YY;->H:Lo/YY$TaskDescription;

    return-object p0
.end method

.method public static final synthetic o(Lo/YY;)Lo/BC;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/YY;->k:Lo/BC;

    return-object p0
.end method

.method public static final synthetic q(Lo/YY;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->L()V

    return-void
.end method

.method public static final synthetic s(Lo/YY;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lo/YY;->N()V

    return-void
.end method

.method public static final synthetic t(Lo/YY;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lo/YY;->n:Z

    return p0
.end method

.method private final v()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/YY;->w:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final x()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/YY;->u:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final y()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/YY;->x:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final z()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lo/YY;->y:Lo/ams;

    sget-object v1, Lo/YY;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 747
    invoke-virtual {p0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 749
    :goto_0
    invoke-virtual {p0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 750
    :cond_1
    new-instance v3, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$updateActionBar$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$updateActionBar$1;-><init>(Lo/YY;)V

    check-cast v3, Lo/alO;

    .line 746
    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/YY;->K:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    iget v0, p0, Lo/YY;->c:I

    iget v1, p0, Lo/YY;->g:I

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1064
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 474
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1771

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "avatar_name"

    .line 477
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 478
    sget-object p1, Lo/YY;->i:Lo/YY$Application;

    check-cast p1, Lo/MessagePdu;

    .line 479
    invoke-direct {p0}, Lo/YY;->E()V

    goto :goto_1

    .line 480
    :cond_1
    sget p3, Lo/ClientCertRequest;->a:I

    if-ne p1, p3, :cond_2

    .line 481
    const-class p1, Lo/IE;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/IE;

    .line 482
    invoke-interface {p1, p2}, Lo/IE;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lo/YY;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_profile_id"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/YY;->h:Ljava/lang/String;

    const-string v0, "avatar_name"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object p1, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    :cond_0
    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1}, Lo/YY;->setHasOptionsMenu(Z)V

    .line 164
    iget-object p1, p0, Lo/YY;->G:Lo/YY$Fragment;

    check-cast p1, Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/YY;->d(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 771
    invoke-virtual {p0}, Lo/YY;->getActivity()Lo/Serializable;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;-><init>(Lo/YY;)V

    check-cast v0, Lo/alN;

    invoke-static {p2, p1, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 174
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->fd:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 454
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 456
    invoke-virtual {p0}, Lo/YY;->isRemoving()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/YY;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/Serializable;->isFinishing()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 457
    :cond_0
    iget-boolean v0, p0, Lo/YY;->q:Z

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lo/YY;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 460
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oZ:I

    goto :goto_0

    .line 462
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pj:I

    .line 458
    :goto_0
    invoke-static {v0, v1}, Lo/adk;->c(II)V

    .line 469
    :cond_2
    sget-object v0, Lo/YS;->a:Lo/YS;

    invoke-virtual {v0}, Lo/YS;->e()V

    .line 471
    :cond_3
    invoke-virtual {p0}, Lo/YY;->c()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    sget-object p2, Lo/YY;->i:Lo/YY$Application;

    check-cast p2, Lo/MessagePdu;

    .line 413
    invoke-direct {p0}, Lo/YY;->M()V

    .line 415
    iget-boolean p2, p0, Lo/YY;->m:Z

    if-nez p2, :cond_1

    .line 417
    iget-object p2, p0, Lo/YY;->h:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 418
    new-instance p2, Lo/YY$StateListAnimator;

    invoke-direct {p2, p0}, Lo/YY$StateListAnimator;-><init>(Lo/YY;)V

    check-cast p2, Lo/zU;

    invoke-virtual {p1, p2}, Lo/Am;->a(Lo/zU;)Z

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0}, Lo/YY;->L()V

    .line 423
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/YY;->E()V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget-object p1, Lo/YY;->i:Lo/YY$Application;

    check-cast p1, Lo/MessagePdu;

    .line 429
    invoke-direct {p0}, Lo/YY;->E()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->px:I

    if-ne v0, v1, :cond_0

    .line 799
    invoke-direct {p0}, Lo/YY;->O()V

    const/4 p1, 0x1

    return p1

    .line 802
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0}, Lo/YY;->z()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bundle_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lo/YY;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "bundle_default_avatar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 197
    iget-object v0, p0, Lo/YY;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "bundle_current_avatar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 187
    iget-boolean v0, p0, Lo/YY;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lo/YY;->j:Z

    .line 189
    invoke-direct {p0}, Lo/YY;->U()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 180
    invoke-direct {p0, p2}, Lo/YY;->a(Landroid/os/Bundle;)V

    .line 181
    invoke-direct {p0}, Lo/YY;->E()V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
