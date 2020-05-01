.class final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

.field private b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

.field private e:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    .line 79
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->c:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->c:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 84
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->e:Ljava/lang/String;

    .line 85
    invoke-static {}, Lo/akI;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->g:Ljava/util/Map;

    .line 86
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar$5;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Ljava/lang/String;
    .locals 2

    const-string v0, "version"

    .line 95
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "1.0"

    .line 98
    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getOemCryptoApiVersion()Ljava/lang/String;

    move-result-object p1

    .line 100
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "cryptoVersion"

    .line 101
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private final a()V
    .locals 12

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v7, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->fP:I

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(R.string.label\u2026igital_rights_management)"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;ILo/amc;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->e(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->gs:I

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.label_drm_widevine)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$1;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->g:Ljava/util/Map;

    const-string v2, "version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->e(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->gr:I

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.label_drm_version)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$2;

    invoke-direct {v5, v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$2;-><init>(Ljava/lang/String;)V

    check-cast v5, Lo/alB;

    invoke-direct {v2, v3, v4, v5}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->g:Ljava/util/Map;

    const-string v2, "systemId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    new-instance v2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->e(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->gq:I

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.label_drm_system_id)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$3;

    invoke-direct {v5, v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$3;-><init>(Ljava/lang/String;)V

    check-cast v5, Lo/alB;

    invoke-direct {v2, v3, v4, v5}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v7

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->iS:I

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "getString(R.string.label_playback)"

    invoke-static {v8, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;ILo/amc;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->hx:I

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.label_max_resolution)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->km:I

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.label\u2026upported_hardware_codecs)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$3;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$3;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->gZ:I

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.label_hdr_capabilities)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$4;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$4;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;Lo/Am;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a(Lo/Am;)V

    return-void
.end method

.method private final a(Lo/Am;)V
    .locals 5

    .line 185
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    const-string v1, "serviceManager.configuration!!"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->c(Lo/cz;)V

    .line 186
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->i()V

    .line 187
    new-instance v0, Lo/qa;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lo/amh;->c()V

    .line 188
    :cond_1
    new-instance v2, Lo/pZ;

    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v3

    invoke-virtual {p1}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lo/pZ;-><init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;)V

    .line 189
    sget-object p1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 187
    invoke-direct {v0, v1, v2, p1}, Lo/qa;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->c(Lo/qa;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b(Lo/qa;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d(Lo/qa;)V

    .line 193
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a()V

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->notifyDataSetChanged()V

    return-void
.end method

.method private final b(Lo/qa;)V
    .locals 1

    .line 219
    invoke-virtual {p1}, Lo/qa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object p1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lo/qa;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    sget-object p1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    goto :goto_0

    .line 224
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->e:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    :goto_0
    return-void
.end method

.method private final c(Lo/cz;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lo/adU;->e(Landroid/content/Context;Lo/cz;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object p1

    const-string v0, "MediaDrmUtils.getCryptoProvider(activity, config)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-void
.end method

.method private final c(Lo/qa;)V
    .locals 5

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {p1}, Lo/qa;->h()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "VP9"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v3, :cond_0

    invoke-static {}, Lo/qG;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->jA:I

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 240
    :goto_0
    invoke-virtual {p1}, Lo/qa;->j()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "AVC-High"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v3, :cond_3

    invoke-static {}, Lo/qG;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->jA:I

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x1

    .line 250
    :cond_4
    invoke-virtual {p1}, Lo/qa;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_5

    .line 252
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p1, "HEVC"

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne p1, v1, :cond_6

    invoke-static {}, Lo/qG;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 256
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jA:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_8

    .line 261
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hW:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->c:Ljava/lang/String;

    return-void
.end method

.method private final d(Lo/qa;)V
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-virtual {p1}, Lo/qa;->l()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "HDR 10 - HEVC"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 273
    :goto_0
    invoke-virtual {p1}, Lo/qa;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    const-string p1, "\n"

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "Dolby vision"

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 281
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hW:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->e:Ljava/lang/String;

    return-void
.end method

.method private final i()V
    .locals 7

    const-string v0, "systemId"

    const-string v1, "ignore exception when calling MediaDrmUtils.getNewMediaDrmInstance"

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 199
    move-object v4, v3

    check-cast v4, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    const/4 v5, 0x0

    .line 201
    :try_start_0
    sget-object v6, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-static {v6, v3, v3}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v4

    const-string v3, "version"

    const-string v6, "drm"

    .line 202
    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    invoke-interface {v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 207
    :try_start_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v5}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v4, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 205
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v5}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    :goto_1
    check-cast v2, Ljava/util/Map;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->g:Ljava/util/Map;

    return-void

    :goto_2
    if-eqz v4, :cond_1

    .line 209
    invoke-interface {v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V

    :cond_1
    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->b:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->c()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->getItemViewType(I)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 173
    check-cast p1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$StateListAnimator;

    .line 174
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$StateListAnimator;->e()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->d()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 177
    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;

    .line 178
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;->e()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->d()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;->d()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->a()Lo/alB;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->e(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 151
    new-instance p2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 152
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->dH:I

    .line 151
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(\n\u2026tem_horiz, parent, false)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p2

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 154
    new-instance p2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 155
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->dL:I

    .line 154
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(\n\u2026item_vert, parent, false)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p2

    .line 158
    :cond_1
    new-instance p2, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$StateListAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 159
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->dJ:I

    .line 158
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(\n\u2026n_heading, parent, false)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$StateListAnimator;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p2
.end method
