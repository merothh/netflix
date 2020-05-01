.class public final Lo/mi;
.super Lo/mk;
.source ""


# instance fields
.field private a:Lo/mb;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "PLAYER_STATE_CHANGED"

    .line 27
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lo/mb;

    invoke-direct {v0, p1}, Lo/mb;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lo/mi;->a:Lo/mb;

    .line 29
    iput-object p1, p0, Lo/mi;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lo/mb;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/mi;->a:Lo/mb;

    return-object v0
.end method
