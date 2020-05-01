.class public final Lo/me;
.super Lo/mk;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "title"

.field private static c:Ljava/lang/String; = "videoId"

.field private static d:Ljava/lang/String; = "ancestorVideoId"

.field private static i:Ljava/lang/String; = "ancestorVideoType"


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "PIN_VERIFICATION_SHOW"

    .line 15
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lo/me;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/me;->j:Ljava/lang/String;

    .line 17
    sget-object v0, Lo/me;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/me;->g:I

    .line 18
    sget-object v0, Lo/me;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/me;->f:I

    .line 19
    sget-object v0, Lo/me;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/me;->h:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lo/me;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/me;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 30
    iget v0, p0, Lo/me;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 27
    iget v0, p0, Lo/me;->g:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/me;->j:Ljava/lang/String;

    return-object v0
.end method
