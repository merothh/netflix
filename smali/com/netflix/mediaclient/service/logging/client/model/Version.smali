.class public Lcom/netflix/mediaclient/service/logging/client/model/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field public static final MDXJS:Ljava/lang/String; = "mdxjs"

.field public static final MDXLIB:Ljava/lang/String; = "mdxlib"

.field public static final NRDAPP:Ljava/lang/String; = "nrdapp"

.field public static final NRDLIB:Ljava/lang/String; = "nrdlib"

.field public static final NRDSDK:Ljava/lang/String; = "nrdsdk"

.field public static final UI:Ljava/lang/String; = "ui"


# instance fields
.field private app:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mdxjs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.1
    .end annotation
.end field

.field private mdxlib:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private nrdapp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private nrdlib:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private nrdsdk:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.1
    .end annotation
.end field

.field private ui:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdLibVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getMdxLibVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getMdxJsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Version;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Version;-><init>()V

    .line 173
    const-string/jumbo v2, "app"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    .line 174
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    .line 175
    const-string/jumbo v2, "nrdapp"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    .line 176
    const-string/jumbo v2, "nrdlib"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    .line 177
    const-string/jumbo v2, "mdxlib"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    .line 178
    const-string/jumbo v2, "mdxjs"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    .line 179
    const-string/jumbo v2, "nrdsdk"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    move-object v0, v1

    .line 181
    goto :goto_0
.end method


# virtual methods
.method public getApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getMdxjs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    return-object v0
.end method

.method public getMdxlib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    return-object v0
.end method

.method public getNrdapp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    return-object v0
.end method

.method public getNrdlib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    return-object v0
.end method

.method public getNrdsdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    return-object v0
.end method

.method public getUi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v1, "app"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 145
    const-string/jumbo v1, "ui"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 148
    const-string/jumbo v1, "nrdapp"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 151
    const-string/jumbo v1, "nrdlib"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 154
    const-string/jumbo v1, "mdxlib"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 157
    const-string/jumbo v1, "mdxjs"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 160
    const-string/jumbo v1, "nrdsdk"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Version [app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrdapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrdlib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mdxlib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mdxjs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrdsdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
