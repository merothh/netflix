.class public Lo/lX;
.super Lo/mk;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/lX$TaskDescription;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "title"

.field private static c:Ljava/lang/String; = "message"

.field private static d:Ljava/lang/String; = "uid"

.field private static f:Ljava/lang/String; = "options"

.field private static h:Ljava/lang/String; = "data"

.field private static i:Ljava/lang/String; = "name"


# instance fields
.field private g:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private l:[Lo/lX$TaskDescription;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "DIALOG_SHOW"

    .line 43
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lo/lX;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/lX;->g:Ljava/lang/String;

    .line 45
    sget-object v0, Lo/lX;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/lX;->j:Ljava/lang/String;

    .line 46
    sget-object v0, Lo/lX;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/lX;->m:Ljava/lang/String;

    .line 47
    sget-object v0, Lo/lX;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lo/lX$TaskDescription;

    iput-object v1, p0, Lo/lX;->l:[Lo/lX$TaskDescription;

    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lo/lX;->l:[Lo/lX$TaskDescription;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lo/lX$TaskDescription;->a(Lorg/json/JSONObject;)Lo/lX$TaskDescription;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iput-object p1, p0, Lo/lX;->b:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lo/lX;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lo/lX;->i:Ljava/lang/String;

    return-object v0
.end method
