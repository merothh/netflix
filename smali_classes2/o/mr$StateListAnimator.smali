.class public Lo/mr$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field private final d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/mr$StateListAnimator;->d:Lorg/json/JSONObject;

    .line 36
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    iput-object p1, p0, Lo/mr$StateListAnimator;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/mr$StateListAnimator;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lo/mr$StateListAnimator;->d:Lorg/json/JSONObject;

    const-string v1, "responseheaders.X-MDX-Registered"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
