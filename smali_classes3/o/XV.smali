.class Lo/XV;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Bu;


# instance fields
.field private final a:Lo/XT;


# direct methods
.method public constructor <init>(Lo/XT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/XV;->a:Lo/XT;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lo/XV;->a:Lo/XT;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lo/XT;->a(Lo/XT;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V

    return-void
.end method
