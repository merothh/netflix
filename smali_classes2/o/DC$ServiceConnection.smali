.class public final Lo/DC$ServiceConnection;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceConnection"
.end annotation


# instance fields
.field private final b:Lcom/netflix/model/leafs/SupportedMediaTracks;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SupportedMediaTracks;)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$ServiceConnection;->b:Lcom/netflix/model/leafs/SupportedMediaTracks;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/model/leafs/SupportedMediaTracks;
    .locals 1

    .line 233
    iget-object v0, p0, Lo/DC$ServiceConnection;->b:Lcom/netflix/model/leafs/SupportedMediaTracks;

    return-object v0
.end method
