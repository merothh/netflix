.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FIELD_BACK_COLOR:Ljava/lang/String; = "backgroundColor"

.field private static final FIELD_BACK_OPACITY:Ljava/lang/String; = "backgroundOpacity"

.field private static final FIELD_CHAR_COLOR:Ljava/lang/String; = "charColor"

.field private static final FIELD_CHAR_OPACITY:Ljava/lang/String; = "charOpacity"

.field private static final FIELD_CHAR_SIZE:Ljava/lang/String; = "charSize"

.field private static final FIELD_CHAR_STLE:Ljava/lang/String; = "charStyle"

.field private static final FIELD_EDGE_ATTRS:Ljava/lang/String; = "charEdgeAttrs"

.field private static final FIELD_EDGE_COLOR:Ljava/lang/String; = "charEdgeColor"

.field public static final FIELD_SUBTITLE_DEFAULT:Ljava/lang/String; = "subtitleDefault"

.field public static final FIELD_SUBTITLE_OVERRIDE:Ljava/lang/String; = "subtitleOverride"

.field private static final FIELD_WIN_COLOR:Ljava/lang/String; = "windowColor"

.field private static final FIELD_WIN_OPACITY:Ljava/lang/String; = "windowOpacity"

.field private static final TAG:Ljava/lang/String; = "nf_subtitlePreference"


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private backgroundOpacity:Ljava/lang/String;

.field private charColor:Ljava/lang/String;

.field private charEdgeAttrs:Ljava/lang/String;

.field private charEdgeColor:Ljava/lang/String;

.field private charOpacity:Ljava/lang/String;

.field private charSize:Ljava/lang/String;

.field private charStyle:Ljava/lang/String;

.field private windowColor:Ljava/lang/String;

.field private windowOpacity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "charOpacity"

    const/4 v2, 0x0

    .line 124
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setCharOpacity(Ljava/lang/String;)V

    const-string v1, "backgroundOpacity"

    .line 125
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setBackgroundOpacity(Ljava/lang/String;)V

    const-string v1, "windowOpacity"

    .line 126
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setWindowOpacity(Ljava/lang/String;)V

    const-string v1, "charColor"

    .line 127
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setCharColor(Ljava/lang/String;)V

    const-string v1, "backgroundColor"

    .line 128
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setBackgroundColor(Ljava/lang/String;)V

    const-string v1, "windowColor"

    .line 129
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setWindowColor(Ljava/lang/String;)V

    const-string v1, "charEdgeColor"

    .line 130
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setCharEdgeColor(Ljava/lang/String;)V

    const-string v1, "charEdgeAttrs"

    .line 131
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setCharEdgeAttrs(Ljava/lang/String;)V

    const-string v1, "charSize"

    .line 132
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setCharSize(Ljava/lang/String;)V

    const-string v1, "charStyle"

    .line 133
    invoke-static {v0, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->setCharStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create json string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_subtitlePreference"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundOpacity()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->backgroundOpacity:Ljava/lang/String;

    return-object v0
.end method

.method public getCharColor()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCharEdgeAttrs()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charEdgeAttrs:Ljava/lang/String;

    return-object v0
.end method

.method public getCharEdgeColor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charEdgeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCharOpacity()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charOpacity:Ljava/lang/String;

    return-object v0
.end method

.method public getCharSize()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCharStyle()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowColor()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->windowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowOpacity()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->windowOpacity:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundOpacity(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->backgroundOpacity:Ljava/lang/String;

    return-void
.end method

.method public setCharColor(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charColor:Ljava/lang/String;

    return-void
.end method

.method public setCharEdgeAttrs(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charEdgeAttrs:Ljava/lang/String;

    return-void
.end method

.method public setCharEdgeColor(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charEdgeColor:Ljava/lang/String;

    return-void
.end method

.method public setCharOpacity(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charOpacity:Ljava/lang/String;

    return-void
.end method

.method public setCharSize(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charSize:Ljava/lang/String;

    return-void
.end method

.method public setCharStyle(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->charStyle:Ljava/lang/String;

    return-void
.end method

.method public setWindowColor(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->windowColor:Ljava/lang/String;

    return-void
.end method

.method public setWindowOpacity(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->windowOpacity:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "nf_subtitlePreference"

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "charOpacity"

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "backgroundOpacity"

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "windowOpacity"

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "charColor"

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "backgroundColor"

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "windowColor"

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "charEdgeColor"

    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "charEdgeAttrs"

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "charSize"

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "charStyle"

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed in json string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
