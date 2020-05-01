.class public Lo/md;
.super Lo/mk;
.source ""


# instance fields
.field private d:Lo/mb;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "PLAYER_CURRENT_STATE"

    .line 25
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lo/mb;

    invoke-direct {v0, p1}, Lo/mb;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lo/md;->d:Lo/mb;

    .line 27
    iput-object p1, p0, Lo/md;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public d()Lo/mb;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/md;->d:Lo/mb;

    return-object v0
.end method
