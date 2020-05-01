.class public final Lo/AbsSeekBar$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbsSeekBar$Application$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/AbsSeekBar$Application$Application;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/AbsSeekBar$Application$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AbsSeekBar$Application$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/AbsSeekBar$Application;->e:Lo/AbsSeekBar$Application$Application;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AbsSeekBar$Application;->c:Ljava/lang/String;

    iput-wide p2, p0, Lo/AbsSeekBar$Application;->d:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 319
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.getString(KEY_VALUE)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lo/AbsSeekBar$Application;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lo/AbsSeekBar$Application;->d:J

    return-wide v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 4

    .line 324
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 325
    iget-object v1, p0, Lo/AbsSeekBar$Application;->c:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    iget-wide v1, p0, Lo/AbsSeekBar$Application;->d:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lo/AbsSeekBar$Application;->c:Ljava/lang/String;

    return-object v0
.end method
