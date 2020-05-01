.class final Lo/pp$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sD$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final b:Lo/xo$TaskDescription;


# direct methods
.method public constructor <init>(Lo/xo$TaskDescription;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lo/pp$ActionBar;->b:Lo/xo$TaskDescription;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lo/pp$ActionBar;->b:Lo/xo$TaskDescription;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2}, Lo/xo$TaskDescription;->c(JLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/sE;Z)V
    .locals 3

    .line 98
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-static {p1, v0}, Lo/pp;->d(Lo/sE;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 99
    iget-object v0, p0, Lo/pp$ActionBar;->b:Lo/xo$TaskDescription;

    invoke-interface {p1}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lo/xo$TaskDescription;->a(JLo/sE;Z)V

    return-void
.end method
