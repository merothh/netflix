.class public final Lo/nD;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Z

.field private c:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/cl/model/CachedVideoPlayableStatus;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/nD;->d:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lo/nD;->b:Z

    .line 19
    iput-object p3, p0, Lo/nD;->c:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/cl/model/CachedVideoPlayableStatus;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/nD;->c:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/nD;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/nD;->b:Z

    return v0
.end method
