.class final Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 964
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    const-string/jumbo v0, "70140457"

    return-object v0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    const-string/jumbo v0, "Dummy Title"

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 954
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x0

    return v0
.end method
