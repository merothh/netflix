.class public Lo/wb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/vX;


# instance fields
.field private d:Lo/vX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lo/vX$TaskDescription;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lo/wb;->d:Lo/vX;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1, p2, p3}, Lo/vX;->a(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lo/vX$TaskDescription;)V

    :cond_0
    return-void
.end method

.method public b(Lo/vX;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/wb;->d:Lo/vX;

    return-void
.end method
