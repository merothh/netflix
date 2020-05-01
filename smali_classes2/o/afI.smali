.class public final Lo/afI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afI$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/afI$ActionBar;


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/afI$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/afI$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/afI;->c:Lo/afI$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/Bv;ILjava/lang/String;IJLorg/json/JSONObject;)V
    .locals 5

    const-string v0, "trackable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p2}, Lo/Bv;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p2}, Lo/Bv;->getImpressionToken()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-interface {p2}, Lo/Bv;->getTrackId()I

    move-result v2

    .line 45
    invoke-interface {p2}, Lo/Bv;->getListPos()I

    move-result p2

    .line 47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lo/afI;->a:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 49
    iget-object v3, p0, Lo/afI;->a:Lorg/json/JSONObject;

    const-string v4, "listId"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string p7, "time"

    invoke-virtual {p1, p7, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p6, "videoId"

    invoke-virtual {p1, p6, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    const-string p3, "requestId"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 55
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    const-string p3, "impressionToken"

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_1
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p6, "trackId"

    invoke-virtual {p1, p6, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "row"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "rank"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isHero"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {p4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lo/afI;->a:Lorg/json/JSONObject;

    const-string p2, "imageKey"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p8, :cond_4

    .line 66
    invoke-virtual {p8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 67
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 69
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 71
    :try_start_0
    iget-object p3, p0, Lo/afI;->a:Lorg/json/JSONObject;

    invoke-virtual {p8, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 73
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p4

    .line 74
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Failed to add additional info for key: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to Tracking Info json "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 75
    check-cast p3, Ljava/lang/Throwable;

    .line 73
    invoke-interface {p4, p2, p3}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/afI;->a:Lorg/json/JSONObject;

    return-object v0
.end method
