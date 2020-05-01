.class Lo/aN$1;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aN;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/aN;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/aN;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/aN$1;->a:Lo/aN;

    iput-object p2, p0, Lo/aN$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/aN$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 9

    .line 131
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/StatusCode;->d()Z

    move-result p3

    const-string v0, "bixbyvoice"

    const-string v1, "NetflixComSearchHandler"

    const/4 v2, 0x1

    if-nez p3, :cond_4

    if-eqz p1, :cond_4

    .line 132
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 146
    :cond_0
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p3, p0, Lo/aN$1;->a:Lo/aN;

    invoke-static {p3}, Lo/aN;->a(Lo/aN;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 147
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bx;

    .line 148
    iget-object p3, p0, Lo/aN$1;->c:Ljava/lang/String;

    const-string v3, "play"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const v3, 0xf200bca

    if-eqz p3, :cond_2

    .line 151
    invoke-interface {p1}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lo/aN$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 152
    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v4

    invoke-virtual {v4}, Lo/Am;->i()Lo/cz;

    move-result-object v4

    invoke-interface {v4}, Lo/cz;->aA()Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;

    move-result-object v4

    .line 151
    invoke-static {p3, v0, v4}, Lo/aN;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 153
    iget-object p3, p0, Lo/aN$1;->a:Lo/aN;

    iget-object v0, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2, v3}, Lo/aN;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V

    const/4 v2, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p2

    sget-object p3, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    .line 158
    invoke-virtual {p2, p3}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p2

    iget-object p3, p0, Lo/aN$1;->d:Ljava/lang/String;

    .line 159
    invoke-virtual {p2, p3}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p2

    iget-object p3, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 160
    invoke-virtual {p2, p3}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    .line 162
    :goto_0
    new-instance p2, Lo/jJ;

    const v5, 0xf200bca

    iget-object v6, p0, Lo/aN$1;->d:Ljava/lang/String;

    .line 163
    invoke-interface {p1}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const-string v4, "bixbyvoice"

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lo/jJ;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 162
    invoke-static {p2}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    goto/16 :goto_4

    .line 165
    :cond_2
    invoke-interface {p1}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, Lo/aN$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 166
    invoke-virtual {v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v5

    invoke-virtual {v5}, Lo/Am;->i()Lo/cz;

    move-result-object v5

    invoke-interface {v5}, Lo/cz;->aA()Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;

    move-result-object v5

    .line 165
    invoke-static {p3, v4, v5}, Lo/aN;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 167
    iget-object p3, p0, Lo/aN$1;->a:Lo/aN;

    iget-object v4, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1, v3}, Lo/aN;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V

    goto :goto_1

    .line 171
    :cond_3
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p2, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    .line 172
    invoke-virtual {p1, p2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    iget-object p2, p0, Lo/aN$1;->d:Ljava/lang/String;

    .line 173
    invoke-virtual {p1, p2}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    iget-object p2, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 174
    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 176
    :goto_1
    new-instance p1, Lo/jN;

    iget-object p3, p0, Lo/aN$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p3, v2}, Lo/jN;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    move v2, p2

    goto :goto_4

    .line 133
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " No result for query: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/aN$1;->d:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 135
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object p3, p0, Lo/aN$1;->a:Lo/aN;

    invoke-static {p3}, Lo/aN;->a(Lo/aN;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    goto :goto_3

    .line 137
    :cond_5
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lo/aN$1;->a:Lo/aN;

    invoke-static {p2}, Lo/aN;->a(Lo/aN;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 139
    :goto_3
    new-instance p1, Lo/jN;

    iget-object p2, p0, Lo/aN$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p2, v2}, Lo/jN;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 141
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p2, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    .line 142
    invoke-virtual {p1, p2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    iget-object p2, p0, Lo/aN$1;->d:Ljava/lang/String;

    .line 143
    invoke-virtual {p1, p2}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    iget-object p2, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 144
    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    :goto_4
    if-eqz v2, :cond_6

    .line 180
    iget-object p1, p0, Lo/aN$1;->a:Lo/aN;

    iget-object p2, p0, Lo/aN$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/aN;->c(Lo/aN;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_5

    :cond_6
    const-string p1, "reportDelayedActonDone is delayed"

    .line 182
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method
