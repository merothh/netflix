.class public final Lo/lW;
.super Lo/mk;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "transactionId"

.field private static c:Ljava/lang/String; = "errorDesc"

.field private static d:Ljava/lang/String; = "errorCode"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "MESSAGE_IGNORED"

    .line 49
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lo/lW;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/lW;->g:Ljava/lang/String;

    .line 51
    sget-object v0, Lo/lW;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/lW;->i:Ljava/lang/String;

    .line 52
    sget-object v0, Lo/lW;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/lW;->h:Ljava/lang/String;

    return-void
.end method
