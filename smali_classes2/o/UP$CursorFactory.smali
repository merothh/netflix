.class public final Lo/UP$CursorFactory;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CursorFactory"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private final b:I

.field private final c:Lo/Tv;

.field private final d:Z

.field private final e:I

.field private final h:F

.field private final i:F


# direct methods
.method public constructor <init>(Lo/Tv;IILcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;ZFF)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$CursorFactory;->c:Lo/Tv;

    iput p2, p0, Lo/UP$CursorFactory;->b:I

    iput p3, p0, Lo/UP$CursorFactory;->e:I

    iput-object p4, p0, Lo/UP$CursorFactory;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iput-boolean p5, p0, Lo/UP$CursorFactory;->d:Z

    iput p6, p0, Lo/UP$CursorFactory;->h:F

    iput p7, p0, Lo/UP$CursorFactory;->i:F

    return-void
.end method


# virtual methods
.method public final a()Lo/Tv;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/UP$CursorFactory;->c:Lo/Tv;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 21
    iget v0, p0, Lo/UP$CursorFactory;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 20
    iget v0, p0, Lo/UP$CursorFactory;->b:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/UP$CursorFactory;->d:Z

    return v0
.end method

.method public final e()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/UP$CursorFactory;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object v0
.end method

.method public final f()F
    .locals 1

    .line 25
    iget v0, p0, Lo/UP$CursorFactory;->i:F

    return v0
.end method

.method public final g()F
    .locals 1

    .line 24
    iget v0, p0, Lo/UP$CursorFactory;->h:F

    return v0
.end method
