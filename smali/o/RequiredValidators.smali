.class public Lo/RequiredValidators;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "II",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "SetVideoThumbRating"

    .line 45
    invoke-direct {p0, v0, p1, p6}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 47
    iput-object p2, p0, Lo/RequiredValidators;->d:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lo/RequiredValidators;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 49
    iput p4, p0, Lo/RequiredValidators;->g:I

    .line 50
    iput p5, p0, Lo/RequiredValidators;->h:I

    return-void
.end method

.method private e(Lo/AQ;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SetVideoThumbRatingTask"

    const-string v0, "null user rating - can\'t notify listeners"

    .line 84
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/RequiredValidators;->d:Ljava/lang/String;

    const-string v2, "extra_video_id"

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-interface {p1}, Lo/AQ;->getUserThumbRating()I

    move-result p1

    const-string v1, "extra_user_thumb_rating"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lo/RequiredValidators;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    new-instance v1, Lo/adt$Activity;

    iget v2, p0, Lo/RequiredValidators;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "param"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lo/adt$Activity;

    iget v2, p0, Lo/RequiredValidators;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 55
    iget-object v1, p0, Lo/RequiredValidators;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "setThumbRating"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-interface {p1, v0, p2}, Lo/ci;->b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 75
    iget-object p2, p0, Lo/RequiredValidators;->a:Lo/FontRequest;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/RequiredValidators;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/AQ;

    .line 76
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 78
    invoke-direct {p0, p2}, Lo/RequiredValidators;->e(Lo/AQ;)V

    return-void
.end method
