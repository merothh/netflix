.class public Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;
.super Ljava/lang/Object;
.source "ImagePrefRepository.java"


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "image_pref"

.field private static final TAG:Ljava/lang/String; = "nf_service_configuration_imagepref"


# instance fields
.field private mImagePref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->mImagePref:Ljava/lang/String;

    const-string/jumbo v0, "image_pref"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->mImagePref:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->mImagePref:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_service_configuration_imagepref"

    const-string/jumbo v1, "Image preference override not found."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_configuration_imagepref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Image preference override found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->mImagePref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clearRecords(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "image_pref"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getImgPreference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->mImagePref:Ljava/lang/String;

    return-object v0
.end method

.method public update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "nf_service_configuration_imagepref"

    const-string/jumbo v1, "override device image pref to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string/jumbo v0, "image_pref"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "image_pref"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    goto :goto_0
.end method
