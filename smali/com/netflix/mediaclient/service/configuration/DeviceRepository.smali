.class public Lcom/netflix/mediaclient/service/configuration/DeviceRepository;
.super Ljava/lang/Object;
.source "DeviceRepository.java"


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "nf_device_category"

.field private static final TAG:Ljava/lang/String; = "nf_device"


# instance fields
.field private category:Lcom/netflix/mediaclient/util/DeviceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "nf_device_category"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    const-string/jumbo v1, "nf_device"

    const-string/jumbo v2, "Device category override not found."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 48
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string/jumbo v0, "nf_device"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device category override is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void

    .line 42
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string/jumbo v1, "nf_device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device category override found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method public update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    const-string/jumbo v0, "nf_device"

    const-string/jumbo v1, "Device category update start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 73
    const-string/jumbo v0, "nf_device"

    const-string/jumbo v1, "Both new and old category are null! Do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string/jumbo v0, "nf_device"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Old category was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and new category is null! Remove saved category!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 82
    const-string/jumbo v0, "nf_device_category"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceCategory;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/DeviceCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "nf_device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Both new and old category have the same value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". Do NOT update."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    const-string/jumbo v1, "nf_device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Old category was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and new category is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_5
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 98
    const-string/jumbo v1, "nf_device_category"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
