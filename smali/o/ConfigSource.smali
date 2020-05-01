.class public final Lo/ConfigSource;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ConfigSource$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/ConfigSource$ActionBar;


# instance fields
.field private final a:Z

.field private final b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field private final c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ConfigSource$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ConfigSource$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ConfigSource;->e:Lo/ConfigSource$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Z)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playLocationType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchPostPlayVideosV2"

    .line 21
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/ConfigSource;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/ConfigSource;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lo/ConfigSource;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    iput-boolean p4, p0, Lo/ConfigSource;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "videos"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    iget-object v4, p0, Lo/ConfigSource;->d:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 37
    iget-object v4, p0, Lo/ConfigSource;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v7, "detail"

    const-string v8, "summary"

    if-ne v4, v6, :cond_0

    move-object v4, v7

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    const/4 v6, 0x2

    aput-object v4, v1, v6

    .line 34
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v4, "PQLHelper.create(\n      \u2026e \"summary\"\n            )"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 43
    iget-object v2, p0, Lo/ConfigSource;->d:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "postPlayExperience"

    aput-object v2, v1, v6

    .line 41
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v2, "PQLHelper.create(\n      \u2026PlayExperience\"\n        )"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "experienceData"

    .line 47
    invoke-interface {v1, v2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    const-string v4, "pqlPostPlayPrefix.append(\"experienceData\")"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const-string v9, "playbackVideos"

    aput-object v9, v4, v3

    .line 52
    invoke-static {v3, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v9

    aput-object v9, v4, v5

    .line 53
    invoke-static {v3, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v4, v6

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v7, v2, v3

    aput-object v8, v2, v5

    .line 54
    invoke-static {v2}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v4, v0

    .line 50
    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 49
    invoke-interface {v1, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "pqlPostPlayPrefix.append\u2026          )\n            )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 2

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "videos"

    aput-object v1, p3, v0

    .line 86
    iget-object v0, p0, Lo/ConfigSource;->d:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const/4 v0, 0x2

    const-string v1, "summary"

    aput-object v1, p3, v0

    .line 84
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    .line 83
    invoke-virtual {p1, p3}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lo/AW;

    if-eqz p2, :cond_0

    .line 90
    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.details.PostPlayVideosProvider"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lo/ConfigSource;->a:Z

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    invoke-interface {p1, v0, p2}, Lo/ci;->d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-super {p0}, Lo/SyncConstValue;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 66
    :goto_0
    new-instance v1, Lo/adt$Activity;

    .line 68
    iget-object v2, p0, Lo/ConfigSource;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const-string v4, "true"

    if-ne v2, v3, :cond_1

    const-string v2, "false"

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    const-string v3, "ppNewContext"

    .line 66
    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v1}, Lo/gT$Activity;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v1, Lo/adt$Activity;

    const-string v2, "ppActionCTA"

    invoke-direct {v1, v2, v4}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
