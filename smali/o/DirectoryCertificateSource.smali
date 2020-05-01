.class public final Lo/DirectoryCertificateSource;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DirectoryCertificateSource$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/DirectoryCertificateSource$Activity;


# instance fields
.field private final d:Lo/TextInputTimePickerView;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DirectoryCertificateSource$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DirectoryCertificateSource$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/DirectoryCertificateSource;->e:Lo/DirectoryCertificateSource$Activity;

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;IIZLo/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;IIZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string p2, "netflixModelProxy"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cb"

    invoke-static {p5, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "FetchNotifications"

    .line 27
    invoke-direct {p0, p2, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    iput-boolean p4, p0, Lo/DirectoryCertificateSource;->g:Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "notificationsList"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, "summary"

    aput-object p3, p1, p2

    .line 34
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026orLeafs.SUMMARY\n        )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/DirectoryCertificateSource;->d:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "paths"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
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

    .line 46
    iget-object v0, p0, Lo/DirectoryCertificateSource;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-interface {p1, v0, p2}, Lo/ci;->e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lo/DirectoryCertificateSource;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/DirectoryCertificateSource;->d:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    instance-of v0, p2, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    if-eqz p2, :cond_2

    .line 59
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 75
    new-instance v1, Lo/DirectoryCertificateSource$Application;

    invoke-direct {v1}, Lo/DirectoryCertificateSource$Application;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->toBuilder()Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;->notifications(Ljava/util/List;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;->build()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    move-result-object p2

    .line 62
    check-cast p2, Lcom/netflix/model/leafs/social/NotificationsListSummary;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, p2, v0}, Lo/ci;->e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/DirectoryCertificateSource;->e:Lo/DirectoryCertificateSource$Activity;

    invoke-virtual {v3}, Lo/DirectoryCertificateSource$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": no value for notifications list summary. notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 66
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, v1, p2}, Lo/ci;->e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method protected k()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/DirectoryCertificateSource;->g:Z

    return v0
.end method
