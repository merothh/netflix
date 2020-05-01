.class public final Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/model/leafs/SupportedMediaTracksImpl;->getLanguagePropertiesObject(Lcom/google/gson/JsonObject;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $languageJsonObject:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;->$languageJsonObject:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBcp47Code()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;->$languageJsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "bcp47Code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"bcp47Code\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"bcp47Code\").asString"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;->$languageJsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"id\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"id\").asString"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;->$languageJsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "languageName"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"languageName\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"languageName\").asString"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracksImpl$getLanguagePropertiesObject$1;->$languageJsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "languageJsonObject.get(\"type\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->Companion:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;

    const-string v2, "stringType"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;->create(Ljava/lang/String;)Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    return-object v0
.end method
