.class public Lo/DateValueSanitizer;
.super Lo/TimeZoneRulesDataContract;
.source ""


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/MetadataReader;",
            "Ljava/lang/String;",
            "Z",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-static {p5}, Lo/DateValueSanitizer;->e(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo/TimeZoneRulesDataContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V

    .line 35
    iput-object p4, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    return-void
.end method

.method private static e(Z)Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KidsCharacterDetails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, ":prefetch"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Lo/TimeZoneRulesDataContract;->b(Ljava/util/List;)V

    .line 45
    invoke-static {}, Lo/eT;->i()Z

    move-result v0

    const-string v1, "gallery"

    const-string v2, "watchNext"

    const-string v3, "summary"

    const/4 v4, 0x4

    const-string v5, "characters"

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v5, v0, v9

    .line 46
    iget-object v10, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v10, v0, v8

    aput-object v3, v0, v6

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-static {}, Lo/SEService;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-static {}, Lo/SEService;->e()Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-static {}, Lo/SEService;->d()Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v10, "logoBrandedHoriz"

    .line 52
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v5, v10, v9

    .line 54
    iget-object v11, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v11, v10, v8

    aput-object v2, v10, v6

    aput-object v0, v10, v7

    invoke-static {v10}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v9

    .line 55
    iget-object v11, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v11, v10, v8

    aput-object v2, v10, v6

    const-string v2, "topNode"

    aput-object v2, v10, v7

    aput-object v0, v10, v4

    invoke-static {v10}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v9

    .line 57
    iget-object v2, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v2, v0, v8

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/SEService;->e(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v5, v0, v9

    .line 60
    iget-object v10, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v10, v0, v8

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v3, v10, v9

    invoke-static {v10}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v0, v6

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v9

    .line 61
    iget-object v10, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v10, v0, v8

    aput-object v2, v0, v6

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v9

    const-string v10, "detail"

    aput-object v10, v2, v8

    const-string v10, "bookmark"

    aput-object v10, v2, v6

    const-string v10, "offlineAvailable"

    aput-object v10, v2, v7

    invoke-static {v2}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v9

    .line 62
    iget-object v2, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    aput-object v2, v0, v8

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/SEService;->e(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 76
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Lo/ci;->b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 69
    invoke-super {p0, p1, p2}, Lo/TimeZoneRulesDataContract;->d(Lo/ci;Lo/TextClock;)V

    .line 70
    iget-object p2, p0, Lo/DateValueSanitizer;->a:Lo/FontRequest;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "characters"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/DateValueSanitizer;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/AU;

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0, v1}, Lo/ci;->b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
