.class public Lo/uC;
.super Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
.source ""


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field private final c:Ljava/lang/String;

.field private final d:Lo/tL;

.field private final e:Lo/tZ;

.field private final g:Z

.field private final j:Lcom/netflix/mediaclient/media/LanguageChoice;


# direct methods
.method public constructor <init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;Lo/tL;Lo/tZ;Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/Long;Ljava/lang/String;ZLcom/netflix/mediaclient/media/LanguageChoice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;",
            "Lo/tL;",
            "Lo/tZ;",
            "Lcom/netflix/mediaclient/service/player/StreamProfileType;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/mediaclient/media/LanguageChoice;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 52
    invoke-direct/range {p0 .. p16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    move-object/from16 v1, p17

    .line 53
    iput-object v1, v0, Lo/uC;->d:Lo/tL;

    move-object/from16 v1, p18

    .line 54
    iput-object v1, v0, Lo/uC;->e:Lo/tZ;

    move-object/from16 v1, p19

    .line 55
    iput-object v1, v0, Lo/uC;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-object/from16 v1, p20

    .line 56
    iput-object v1, v0, Lo/uC;->a:Ljava/lang/Long;

    move-object/from16 v1, p21

    .line 57
    iput-object v1, v0, Lo/uC;->c:Ljava/lang/String;

    move/from16 v1, p22

    .line 58
    iput-boolean v1, v0, Lo/uC;->g:Z

    move-object/from16 v1, p23

    .line 59
    iput-object v1, v0, Lo/uC;->j:Lcom/netflix/mediaclient/media/LanguageChoice;

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/uC;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    return-object v0
.end method

.method public b()Lo/tL;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/uC;->d:Lo/tL;

    return-object v0
.end method

.method public c()Lo/tZ;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/uC;->e:Lo/tZ;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/uC;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/uC;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lo/uC;->g:Z

    return v0
.end method

.method public g()Lcom/netflix/mediaclient/media/LanguageChoice;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/uC;->j:Lcom/netflix/mediaclient/media/LanguageChoice;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 7

    .line 91
    invoke-virtual {p0}, Lo/uC;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lo/uC;->getPeriodCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 95
    invoke-virtual {p0, v2}, Lo/uC;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    .line 96
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    const/4 v5, 0x2

    .line 97
    iget v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    if-nez v5, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 101
    iget-object v1, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 102
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method
