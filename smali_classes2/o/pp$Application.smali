.class final Lo/pp$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pq$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field private final a:Lo/xo$TaskDescription;


# direct methods
.method public constructor <init>(Lo/xo$TaskDescription;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lo/pp$Application;->a:Lo/xo$TaskDescription;

    return-void
.end method


# virtual methods
.method public c(JLo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 118
    invoke-interface {p5}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 119
    invoke-interface {p3}, Lo/pq$Application;->b()Lo/sE;

    move-result-object p4

    sget-object p5, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-static {p4, p5}, Lo/pp;->d(Lo/sE;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 120
    iget-object p4, p0, Lo/pp$Application;->a:Lo/xo$TaskDescription;

    invoke-interface {p3}, Lo/pq$Application;->b()Lo/sE;

    move-result-object p3

    const/4 p5, 0x1

    invoke-interface {p4, p1, p2, p3, p5}, Lo/xo$TaskDescription;->a(JLo/sE;Z)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p3, p0, Lo/pp$Application;->a:Lo/xo$TaskDescription;

    invoke-interface {p3, p1, p2, p5}, Lo/xo$TaskDescription;->c(JLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
