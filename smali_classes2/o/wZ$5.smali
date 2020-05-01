.class Lo/wZ$5;
.super Lo/xy$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/wZ;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/wZ;


# direct methods
.method constructor <init>(Lo/wZ;Lo/xw;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/wZ$5;->b:Lo/wZ;

    invoke-direct {p0, p1, p2}, Lo/xy$Application;-><init>(Lo/xy;Lo/xw;)V

    return-void
.end method


# virtual methods
.method public a(JLo/sE;Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lo/wZ$5;->b:Lo/wZ;

    invoke-virtual {v0}, Lo/wZ;->A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v0

    invoke-interface {p3}, Lo/sE;->ab()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lo/xy$Application;->a(JLo/sE;Z)V

    return-void
.end method

.method public c(JLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lo/wZ$5;->b:Lo/wZ;

    invoke-virtual {v1}, Lo/wZ;->A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v1

    new-instance v2, Lo/Bm$ActionBar;

    invoke-direct {v2, v0}, Lo/Bm$ActionBar;-><init>(Ljava/lang/String;)V

    new-instance v3, Lo/Bl$Activity;

    invoke-direct {v3, p1, p2}, Lo/Bl$Activity;-><init>(J)V

    .line 72
    invoke-virtual {v3}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Lo/Bm$ActionBar;->c(Ljava/lang/String;)Lo/Bm$ActionBar;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lo/Bm$ActionBar;->b()Lo/Bm;

    move-result-object v0

    .line 71
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    .line 75
    invoke-super {p0, p1, p2, p3}, Lo/xy$Application;->c(JLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
