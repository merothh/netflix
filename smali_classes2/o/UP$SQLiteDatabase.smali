.class public final Lo/UP$SQLiteDatabase;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SQLiteDatabase"
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private final e:Z


# direct methods
.method public constructor <init>(ZLcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/UP$SQLiteDatabase;->e:Z

    iput-object p2, p0, Lo/UP$SQLiteDatabase;->b:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lo/UP$SQLiteDatabase;->e:Z

    return v0
.end method

.method public final d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/UP$SQLiteDatabase;->b:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object v0
.end method
