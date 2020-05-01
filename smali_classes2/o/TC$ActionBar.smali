.class Lo/TC$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/netflix/cl/model/AppView;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/cl/model/AppView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2134
    iput-object p1, p0, Lo/TC$ActionBar;->b:Lcom/netflix/cl/model/AppView;

    .line 2135
    iput p2, p0, Lo/TC$ActionBar;->e:I

    const/16 p1, 0xa

    .line 2136
    invoke-static {p3, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/TC$ActionBar;->a:I

    .line 2137
    iput-object p4, p0, Lo/TC$ActionBar;->d:Ljava/lang/String;

    .line 2138
    iput-object p5, p0, Lo/TC$ActionBar;->c:Ljava/lang/String;

    .line 2139
    iput-object p6, p0, Lo/TC$ActionBar;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 2144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2145
    iget-object v1, p0, Lo/TC$ActionBar;->b:Lcom/netflix/cl/model/AppView;

    const-string v2, "uiLabel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2146
    iget-object v1, p0, Lo/TC$ActionBar;->d:Ljava/lang/String;

    const-string v2, "uiPlayContextTag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2147
    iget v1, p0, Lo/TC$ActionBar;->e:I

    const-string v2, "trackId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2148
    iget v1, p0, Lo/TC$ActionBar;->a:I

    const-string v2, "videoId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2149
    iget-object v1, p0, Lo/TC$ActionBar;->c:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2150
    iget-object v1, p0, Lo/TC$ActionBar;->c:Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2152
    :cond_0
    iget-object v1, p0, Lo/TC$ActionBar;->f:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2153
    iget-object v1, p0, Lo/TC$ActionBar;->f:Ljava/lang/String;

    const-string v2, "subtitles"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
