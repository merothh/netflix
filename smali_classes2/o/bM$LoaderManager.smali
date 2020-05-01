.class Lo/bM$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ym;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoaderManager"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field final synthetic e:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;II)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    iput p2, p0, Lo/bM$LoaderManager;->b:I

    .line 1212
    iput p3, p0, Lo/bM$LoaderManager;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1228
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onLogoutComplete"

    .line 1230
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onLogoutComplete"

    .line 1232
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onLogoutComplete(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1338
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onAccountDataFetched"

    .line 1340
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onAccountDataFetched"

    .line 1342
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onAccountDataFetched(ILcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1316
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onUmsSimpleUrlPatternResolved"

    .line 1318
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onUmsSimpleUrlPatternResolved"

    .line 1320
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onUmsSimpleUrlPatternResolved(ILcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1360
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onUpdateProductChoiceResponse"

    .line 1362
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onProductChoiceResponse"

    .line 1364
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onUpdateProductChoiceResponse(ILcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1283
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onSurveyFetched"

    .line 1285
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onSurveyFetched"

    .line 1287
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onSurveyFetched(ILcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onAvailableAvatarsListFetched"

    .line 1252
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onAvailableAvatarsListFetched"

    .line 1254
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onAvailableAvatarsListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1261
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onProfilesListUpdateResult"

    .line 1263
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onProfilesListUpdateResult"

    .line 1265
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onProfileListUpdateStatus(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1272
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onAutoLoginTokenCreated"

    .line 1274
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onAutoLoginTokenCreated"

    .line 1276
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onAutoLoginTokenCreated(ILjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1217
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onLoginComplete"

    .line 1219
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onLoginComplete"

    .line 1221
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onLoginComplete(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1371
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onAllProfilesAuthorizationCredentialsFetched"

    .line 1373
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onAllProfilesAuthorizationCredentialsFetched"

    .line 1375
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onAllProfilesAuthorizationCredentialsFetched(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1327
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onVideoMaturityChecked"

    .line 1329
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onVideoMaturityChecked"

    .line 1331
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onVideoMaturityChecked(ILcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1349
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onProductChoiceResponse"

    .line 1351
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onProductChoiceResponse"

    .line 1353
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onProductChoiceResponse(ILcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1305
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onUpdatePlanCompleted"

    .line 1307
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onSurveyFetched"

    .line 1309
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onUpdatePlanCompleted(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 1239
    iget-object v0, p0, Lo/bM$LoaderManager;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    const-string v1, "NetflixService"

    if-nez v0, :cond_0

    const-string p1, "No client callback found for onVerified"

    .line 1241
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Notified onVerified"

    .line 1243
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget v1, p0, Lo/bM$LoaderManager;->a:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onBooleanResponse(IZLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
