.class public final Lo/jJ;
.super Lo/jL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jJ$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/jJ$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/jJ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/jJ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/jJ;->e:Lo/jJ$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play"

    .line 6
    invoke-direct {p0, p1, v0, p5}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p2, p0, Lo/jJ;->d:I

    iput-object p3, p0, Lo/jJ;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/jJ;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 4

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    iget v2, p0, Lo/jJ;->d:I

    const-string v3, "trackId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "params"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lo/jJ;->a:Ljava/lang/String;

    const-string v2, "term"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v1, p0, Lo/jJ;->b:Ljava/lang/String;

    const-string v2, "videoId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
