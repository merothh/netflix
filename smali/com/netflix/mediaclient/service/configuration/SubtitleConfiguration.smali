.class public final enum Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
.super Ljava/lang/Enum;
.source "SubtitleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field public static final enum BINARY_IMAGE:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field public static DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration; = null

.field public static final enum ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field public static final enum SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field private static final TAG:Ljava/lang/String; = "nf_conf"


# instance fields
.field private mLabelId:I

.field private mLookupType:I

.field private mMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

.field private mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    const-string/jumbo v1, "ENHANCED_XML"

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->DATA_XML:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    const v6, 0x7f080321

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    new-instance v3, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    const-string/jumbo v4, "SIMPLE_XML"

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->DATA_XML:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    const v9, 0x7f080323

    invoke-direct/range {v3 .. v9}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;II)V

    sput-object v3, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    new-instance v6, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    const-string/jumbo v7, "BINARY_IMAGE"

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v10, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->BINARY_IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    const v12, 0x7f080322

    invoke-direct/range {v6 .. v12}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;II)V

    sput-object v6, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->BINARY_IMAGE:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    new-array v0, v11, [Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->BINARY_IMAGE:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;",
            "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    iput p5, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mLookupType:I

    iput p6, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mLabelId:I

    return-void
.end method

.method public static clearQaLocalOverride(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    const-string/jumbo v0, "nf_subtitle_configuraton_QA_local"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public static clearRecords(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    const-string/jumbo v0, "nf_subtitle_configuraton"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public static load(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 4

    const-string/jumbo v0, "nf_subtitle_configuraton"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string/jumbo v0, "nf_conf"

    const-string/jumbo v1, "No overrides found. Use default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_conf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote override found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->lookup(I)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadQaLocalOverride(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 2

    const-string/jumbo v0, "nf_subtitle_configuraton_QA_local"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->lookup(I)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public static lookup(I)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->values()[Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mLookupType:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_conf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle configuration lookup value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported. Use default Enhanced + XML"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    goto :goto_1
.end method

.method public static update(Landroid/content/Context;Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-nez p2, :cond_0

    const-string/jumbo v1, "nf_conf"

    const-string/jumbo v2, "Subtitle configuration is not available, use default enhanced + XML"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, "nf_subtitle_configuraton"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getLookupType()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->load(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->lookup(I)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateQaLocalOverride(Landroid/content/Context;Ljava/lang/Integer;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-nez p1, :cond_0

    const-string/jumbo v1, "nf_conf"

    const-string/jumbo v2, "Subtitle configuration is not available, use default enhanced + XML"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, "nf_subtitle_configuraton_QA_local"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getLookupType()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->lookup(I)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method


# virtual methods
.method public getLookupType()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mLookupType:I

    return v0
.end method

.method public getMode()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mMode:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    return-object v0
.end method

.method public getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
