.class public final Lo/Yn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yn$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/Yn$Activity;


# instance fields
.field private final a:Lcom/netflix/cl/model/TrackingInfo;

.field private final b:I

.field private d:J

.field private final e:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/aka;

.field private final g:I

.field private final i:Lo/AM;

.field private j:Lo/Bc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yn$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yn$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yn;->c:Lo/Yn$Activity;

    return-void
.end method

.method public constructor <init>(Lo/AM;I)V
    .locals 1

    const-string v0, "previewsFeedItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Yn;->i:Lo/AM;

    iput p2, p0, Lo/Yn;->g:I

    const-wide/16 p1, 0x0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.createDefault(0L)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Yn;->e:Lio/reactivex/subjects/BehaviorSubject;

    .line 25
    iget-object p1, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {p1}, Lo/AM;->getBackgroundColor()I

    move-result p1

    const/16 p2, 0x9b

    invoke-static {p1, p2}, Lo/WindowId;->b(II)I

    move-result p1

    iput p1, p0, Lo/Yn;->b:I

    .line 27
    sget-object p1, Lo/Yi;->e:Lo/Yi;

    invoke-virtual {p1, p0}, Lo/Yi;->e(Lo/Yn;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    iput-object p1, p0, Lo/Yn;->a:Lcom/netflix/cl/model/TrackingInfo;

    .line 36
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsFeedItemModel$playContext$2;-><init>(Lo/Yn;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Yn;->f:Lo/aka;

    return-void
.end method

.method public static final synthetic a(Lo/Yn;)Lo/AM;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/Yn;->i:Lo/AM;

    return-object p0
.end method


# virtual methods
.method public final a()Lo/Bc;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/Yn;->j:Lo/Bc;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 25
    iget v0, p0, Lo/Yn;->b:I

    return v0
.end method

.method public final b(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lo/Yn;->d:J

    return-void
.end method

.method public final c()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/Yn;->e:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lo/Yn;->d:J

    return-wide v0
.end method

.method public final d(Lo/Bc;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/Yn;->j:Lo/Bc;

    return-void
.end method

.method public final e()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/Yn;->a:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 1

    iget-object v0, p0, Lo/Yn;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 15
    iget v0, p0, Lo/Yn;->g:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundColor()I
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getForegroundColor()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalBrandingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getOriginalBrandingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPanelArtUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplementalVideoDuration()J
    .locals 2

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getSupplementalVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupplementalVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getSupplementalVideoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTreatmentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 7

    .line 56
    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->getSupplementalVideoDuration()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 57
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/Yn;->c:Lo/Yn$Activity;

    invoke-virtual {v3}, Lo/Yn$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": supplementalVideoDuration is 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return v2

    .line 61
    :cond_0
    iget-wide v0, p0, Lo/Yn;->d:J

    iget-object v3, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v3}, Lo/AM;->getSupplementalVideoDuration()J

    move-result-wide v3

    const/16 v5, 0xa

    int-to-long v5, v5

    mul-long v3, v3, v5

    div-long/2addr v0, v3

    const/16 v3, 0x32

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isAvailableForDownload()Z
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->isAvailableForDownload()Z

    move-result v0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-interface {v0}, Lo/AM;->isPreRelease()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/Yn;->i:Lo/AM;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
