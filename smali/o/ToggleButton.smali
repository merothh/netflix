.class public final Lo/ToggleButton;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lo/ToggleButton;->a()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lo/ToggleButton;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 166
    iget-object v0, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/ToggleButton;->c:Lorg/json/JSONObject;

    .line 168
    iget-object v0, p0, Lo/ToggleButton;->c:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    const-string v2, "NetflixId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    iget-object v0, p0, Lo/ToggleButton;->c:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    const-string v2, "SecureNetflixId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 171
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Tokens cannot be null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2

    .line 134
    iput-object p1, p0, Lo/ToggleButton;->c:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const-string p1, "nf_reg"

    const-string v0, "Tokens are null"

    .line 136
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "NetflixId"

    .line 140
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    const-string v1, "SecureNetflixId"

    .line 141
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-void

    .line 148
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Tokens cannot be null"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 97
    :cond_1
    instance-of v2, p1, Lo/ToggleButton;

    if-nez v2, :cond_2

    return v1

    .line 100
    :cond_2
    check-cast p1, Lo/ToggleButton;

    .line 101
    iget-object v2, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p1, Lo/ToggleButton;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 105
    :cond_3
    iget-object v3, p1, Lo/ToggleButton;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 108
    :cond_4
    iget-object v2, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 109
    iget-object p1, p1, Lo/ToggleButton;->b:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 112
    :cond_5
    iget-object p1, p1, Lo/ToggleButton;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 80
    iget-object v0, p0, Lo/ToggleButton;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v2, p0, Lo/ToggleButton;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/ToggleButton;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
