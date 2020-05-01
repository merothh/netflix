.class public final Lo/WrappedApplicationKey;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WrappedApplicationKey$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/WrappedApplicationKey$Application;


# instance fields
.field private final e:Lo/TextInputTimePickerView;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/WrappedApplicationKey$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WrappedApplicationKey$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/WrappedApplicationKey;->d:Lo/WrappedApplicationKey$Application;

    return-void
.end method

.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;ZLo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "netflixModelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchNotificationSummary"

    .line 20
    invoke-direct {p0, v0, p1, p4}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    iput-boolean p3, p0, Lo/WrappedApplicationKey;->g:Z

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "notifications"

    aput-object p4, p1, p3

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "summary"

    aput-object p3, p1, p2

    .line 22
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026FalkorLeafs.SUMMARY\n    )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/WrappedApplicationKey;->e:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
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

    .line 35
    iget-object v0, p0, Lo/WrappedApplicationKey;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lo/WrappedApplicationKey;->b:Lo/ci;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lo/ci;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lo/WrappedApplicationKey;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/WrappedApplicationKey;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    instance-of v0, p2, Lo/agm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Lo/agm;

    if-eqz p2, :cond_1

    .line 41
    iget-object v0, p2, Lo/agm;->e:Lcom/netflix/model/leafs/social/UserNotificationSummary;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 42
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/WrappedApplicationKey;->d:Lo/WrappedApplicationKey$Application;

    invoke-virtual {v3}, Lo/WrappedApplicationKey$Application;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": no value for notification summary. notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 45
    iget-object v1, p2, Lo/agm;->e:Lcom/netflix/model/leafs/social/UserNotificationSummary;

    :cond_3
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p1, v1, p2}, Lo/ci;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected k()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/WrappedApplicationKey;->g:Z

    return v0
.end method
