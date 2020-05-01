.class public Lo/Bo$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

.field private c:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 58
    iput v0, p0, Lo/Bo$StateListAnimator;->c:I

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lo/Bo$StateListAnimator;->a:J

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->unknownTransitionHint:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    iput-object v0, p0, Lo/Bo$StateListAnimator;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    .line 63
    iput-object p1, p0, Lo/Bo$StateListAnimator;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(J)Lo/Bo$StateListAnimator;
    .locals 0

    .line 76
    iput-wide p1, p0, Lo/Bo$StateListAnimator;->a:J

    return-object p0
.end method

.method public e()Lo/Bo;
    .locals 7

    .line 67
    new-instance v6, Lo/Bo;

    iget-object v1, p0, Lo/Bo$StateListAnimator;->e:Ljava/lang/String;

    iget v2, p0, Lo/Bo$StateListAnimator;->c:I

    iget-wide v3, p0, Lo/Bo$StateListAnimator;->a:J

    iget-object v5, p0, Lo/Bo$StateListAnimator;->b:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/Bo;-><init>(Ljava/lang/String;IJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    return-object v6
.end method
