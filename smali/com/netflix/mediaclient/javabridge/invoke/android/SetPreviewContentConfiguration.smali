.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetPreviewContentConfiguration.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setPreviewContentConfiguration"

.field private static final PROPERTY_ENCRYPTED_DOLBY_DIGITAL_PLUS_20_ENABLED:Ljava/lang/String; = "encDDP20"

.field private static final PROPERTY_ENCRYPTED_DOLBY_DIGITAL_PLUS_51_ENABLED:Ljava/lang/String; = "encDDP51"

.field private static final PROPERTY_ENCRYPTED_HEAAC_2_ENABLED:Ljava/lang/String; = "encHEAAC2"

.field private static final PROPERTY_ENCRYPTED_IMAGE_SUBTITLES_ENABLED:Ljava/lang/String; = "encImageSubtitles"

.field private static final PROPERTY_ENCRYPTED_TEXT_SUBTITLES_ENABLED:Ljava/lang/String; = "encTextSubtitles"

.field private static final PROPERTY_PREVIEW_CONTENT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V
    .locals 2

    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setPreviewContentConfiguration"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;->setArguments(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V

    return-void
.end method

.method private setArguments(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_invoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Preview content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "enabled"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isPreviewContentEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "encTextSubtitles"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isEncryptedTextSubtitlesEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "encImageSubtitles"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isEncryptedImageSubtitlesEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "encDDP20"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isEncryptedDolbyDigitalPlus20Enabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "encDDP51"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isEncryptedDolbyDigitalPlus51Enabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "encHEAAC2"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isEncryptedHEAAC2Enabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetPreviewContentConfiguration;->arguments:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "No preview content override, default to enabled"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "enabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "encTextSubtitles"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "encImageSubtitles"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "encDDP20"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "encDDP51"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "encHEAAC2"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
